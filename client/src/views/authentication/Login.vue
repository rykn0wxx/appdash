<template>
  <v-container fluid fill-height pa-0>
    <v-layout row>
      <v-flex xs12>
        <div class="login-wrapper">
          <div class="login-box d-flex flex xs4">
            <v-form ref="form" v-model="valid" class="login-form">
              <router-link to="/" class="login-form__link">
                <AnonLogo />
              </router-link>
              <h3 class="title login-form__title">User Login</h3>
              <h4 class="subheading login-form__subheading">Enter your credentials below</h4>
              <v-text-field
                dark
                required
                box
                clearable
                validate-on-blur
                label="Email"
                name="email"
                v-model="user.email"
                type="email"
                :rules="[rules.required, rules.email]"
                color="accent"
                prepend-icon="place">
              </v-text-field>
              <v-text-field
                dark
                required
                box
                clearable
                validate-on-blur
                label="Password"
                name="password"
                v-model="user.password"
                type="password"
                :rules="[rules.required, rules.min]"
                color="accent"
                prepend-icon="place">
              </v-text-field>
              <div>
                <v-btn :disabled="!valid" @click="login">
                  Submit
                </v-btn>
              </div>
            </v-form>
          </div>
        </div>
      </v-flex>
    </v-layout>
  </v-container>
</template>

<script>
import Api from '@/services/Api'
import AuthService from '@/services/AuthService'

export default {
  name: 'AuthenticationLogin',
  data () {
    return {
      valid: false,
      user: {
        email: '',
        password: ''
      },
      rules: {
        min: value => value.length >= 2 || 'Minimum of 2 characters',
        required: value => !!value || 'Required.',
        email: value => {
          const pattern = /^(([^<>()[\]\\.,;:\s@"]+(\.[^<>()[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/
          return pattern.test(value) || 'Invalid e-mail.'
        },
        match: value => value === this.user.password || 'Password does not match'
      }
    }
  },
  methods: {
    async getUser (userObj, userData) {
      try {
        const userData = await Api.auth().get(`users/${this.user.email}`)
        this.$store.dispatch('setUser', userData.data)
        this.$router.push('/')
      } catch (error) {
        this.$store.dispatch('setAlerts', error.response.data)
      }
    },
    async login (e) {
      e.preventDefault()
      if (this.$refs.form.validate()) {
        try {
          const userToken = await AuthService.login({
            auth: {
              email: this.user.email,
              password: this.user.password
            }
          })
          this.$store.dispatch('setToken', userToken.data.jwt)
          this.getUser()
        } catch (error) {
          this.$store.dispatch('setAlerts', error.response.data)
        }
      }
    }
  }
}
</script>

<style lang="scss" scoped>
@import '../../sass/auth';
</style>
