<template>
  <v-app dark :class="[isRootPath ? 'primary_variant is-root' : 'primary_variant']">
    <v-content>
      <router-view/>
    </v-content>
  </v-app>
</template>

<script>
export default {
  name: 'App',
  computed: {
    isRootPath: function () {
      return this.$route.path === '/'
    }
  }
}
</script>
