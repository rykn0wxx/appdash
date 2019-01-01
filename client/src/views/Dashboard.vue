<template>
  <v-container fluid pa-3 grid-list-md>
    <v-layout row wrap>
      <v-flex xs12>
        <highcharts class="chart" :options="chartOptions" :updateArgs="updateArgs"></highcharts>
      </v-flex>
    </v-layout>
  </v-container>
</template>

<script>
export default {
  name: 'Dashboard',
  data () {
    return {
      updateArgs: [
        true, true, { duration: 1000 }
      ],
      chartOptions: {
        chart: {
          type: 'spline'
        },
        title: {
          text: 'Sin Chart'
        },
        series: [
          {
            data: [10, 0, 8, 2, 6, 4, 5, 5],
            color: '#6fcd98'
          }
        ]
      }
    }
  }
}
</script>

<style lang="scss" scoped>

</style>
