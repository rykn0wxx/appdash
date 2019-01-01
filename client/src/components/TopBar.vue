<template>
  <v-toolbar app dark fixed clipped-left color="secondary_variant" class="top-bar">
    <v-btn flat @click="toggleDrawer" :class="{ showing: showDrawer }">
      <v-icon>menu</v-icon>
    </v-btn>
    <v-toolbar-title class="white--text">Title</v-toolbar-title>
  </v-toolbar>
</template>

<script>
export default {
  name: 'TopBar',
  methods: {
    toggleDrawer () {
      this.$store.dispatch('setDrawer', !this.showDrawer)
    }
  },
  computed: {
    showDrawer () {
      return this.$store.getters.getDrawer
    }
  }
}
</script>

<style lang="scss" scoped>
// .top-bar {
//   z-index: 4;
// }
.v-icon {
  transition: all 0.5s ease-in-out !important;
}
.showing {
  .v-icon {
    transition: all 0.5s ease-in-out;
    transform: rotate(180deg);
  }
}
</style>
