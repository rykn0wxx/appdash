<template>
  <v-app dark :class="[isRootPath ? 'primary_variant is-root' : 'primary_variant']">
    <Drawer v-if="!isRootPath" />
    <TopBar v-if="!isRootPath" />
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
