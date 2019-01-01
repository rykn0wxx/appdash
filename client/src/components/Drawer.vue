<template>
  <v-navigation-drawer app dark fixed clipped v-model="drawer" class="drawer">
    <v-list>
      <v-list-tile>
        <v-list-tile-action>
          <v-icon>dashboard</v-icon>
        </v-list-tile-action>
        <v-list-tile-content>
          <v-list-tile-title>Dashboard</v-list-tile-title>
        </v-list-tile-content>
      </v-list-tile>
    </v-list>
  </v-navigation-drawer>
</template>

<script>
export default {
  name: 'Drawer',
  computed: {
    drawer: {
      get: function () {
        return this.$store.getters.getDrawer
      },
      set: function (newVal) {
        //
      }
    }
  }
}
</script>

<style lang="scss" scoped>
.drawer {
  background-color: #272c33;
  box-shadow: 0 2px 4px -1px rgba(0,0,0,.2), 0 4px 5px 0 rgba(0,0,0,.14), 0 1px 10px 0 rgba(0,0,0,.12);
  // z-index: 3;
}
</style>
