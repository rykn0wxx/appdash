<template>
  <v-flex xs12 md6 lg3>
    <v-card class="card-stat__doughnut">
      <v-container fluid pa-3>
        <v-layout row fill-height>
          <v-flex class="card-stat__doughnut-description ">
            <h5 class="headline ma-0">123</h5>
            <h6 class="body-2 mb-2">New Tickets</h6>
          </v-flex>
          <v-flex class="text-xs-center">
            <div data-label="20%" class="card-display"></div>
          </v-flex>
        </v-layout>
      </v-container>
    </v-card>
  </v-flex>
</template>

<script>
export default {
  name: 'CardStatDoughnut'
}
</script>

<style lang="scss" scoped>
.card-stat__doughnut {
  background-color: #263238;
  border-radius: 2px;
  box-shadow: 0 1px 3px 0 rgba(0,0,0,.2), 0 1px 1px 0 rgba(0,0,0,.14), 0 2px 1px -1px rgba(0,0,0,.12);
  &-description {
    display: flex;
    flex-direction: column;
    align-content: flex-start;
    align-items: flex-start;
    justify-content: center;
  }
}
.card-display {
  background-image: linear-gradient(90deg, #fafafa 50%, transparent 50%, transparent), linear-gradient(162deg, #1e88e5 50%, #fafafa 50%, #fafafa);
  background-clip: content-box;
  position: relative;
  display: inline-block;
  font-size: 16px;
  border-radius: 50%;
  background-color: transparent;
  margin-bottom: 0;
  box-sizing: content-box;
  width: 80px;
  height: 80px;
  font-size: 18px;
  &::after {
    content: attr(data-label);
    background: #383f48;
    z-index: 1;
    width: 70px;
    height: 70px;
    margin-left: 5px;
    margin-top: 5px;
    line-height: 70px;
    display: inline-block;
    position: absolute;
    top: 0;
    left: 0;
    border-radius: 50%;
    text-align: center;
  }
}
</style>
