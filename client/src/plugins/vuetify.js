import Vue from 'vue'
import Vuetify from 'vuetify/lib'
import 'vuetify/src/stylus/app.styl'

Vue.use(Vuetify, {
  // theme: {
  //   primary: '#ee44aa',
  //   secondary: '#424242',
  //   accent: '#82B1FF',
  //   error: '#FF5252',
  //   info: '#2196F3',
  //   success: '#4CAF50',
  //   warning: '#FFC107'
  // },
  iconfont: 'mdi',
  theme: {
    primary: '#0B0C10',
    primary_variant: '#1F2833',
    primary_light: '#C5C6C7',
    secondary: '#4f3796',
    secondary_variant: '#35267c',
    secondary_light: '#795eb2',
    accent: '#66FCF1',
    error: '#FF3B3F',
    info: '#4285F4',
    success: '#15DB95',
    warning: '#F3D250'
  }
})
