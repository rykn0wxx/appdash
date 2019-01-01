import Vue from 'vue'
import Vuex from 'vuex'
// import createPersistedState from 'vuex-persistedstate'

Vue.use(Vuex)

export default new Vuex.Store({
  // TODO: enable me
  // plugins: [
  //   createPersistedState()
  // ],
  strict: true,
  state: {
    token: null,
    user: null,
    isUserLogin: null,
    alerts: null
  },
  mutations: {
    setToken (state, payload) {
      state.token = payload
      state.isUserLogin = payload ? true : null
    },
    setUser (state, payload) {
      state.user = payload
    },
    setAlerts (state, payload) {
      state.alerts = payload
    }
  },
  actions: {
    setToken ({ commit }, payload) {
      commit('setToken', payload)
    },
    setUser ({ commit }, payload) {
      commit('setUser', payload)
    },
    setAlerts ({ commit }, payload) {
      commit('setAlerts', payload)
    }
  },
  getters: {
    isUserLogin: state => {
      return state.isUserLogin
    },
    getToken: state => {
      return state.token
    }
  }
})
