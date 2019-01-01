import Vue from 'vue'
import Router from 'vue-router'
import Home from './views/Home.vue'
import Register from './views/authentication/Register.vue'
import Login from './views/authentication/Login.vue'

Vue.use(Router)

export default new Router({
  mode: 'history',
  base: process.env.BASE_URL,
  routes: [
    {
      path: '/',
      name: 'home',
      component: Home
    },
    {
      path: '/about',
      name: 'about',
      component: () => import(/* webpackChunkName: "about" */ './views/About.vue')
    },
    {
      path: '/authentication/register',
      name: 'register',
      component: Register
    },
    {
      path: '/authentication/login',
      name: 'login',
      component: Login
    }
  ]
})
