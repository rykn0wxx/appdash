import Vue from 'vue'
import upperFirst from 'lodash/upperFirst'
import camelCase from 'lodash/camelCase'

const reqComp = require.context('@/components', true, /\.vue$/)

reqComp
  .keys()
  .forEach(fileName => {
    const compConfig = reqComp(fileName)
    const compName = upperFirst(
      camelCase(fileName.replace(/^\.\//, '').replace(/\.\w+$/, ''))
    )
    Vue.component(compName, compConfig.default || compConfig)
  })
