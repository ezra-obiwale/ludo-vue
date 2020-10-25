import { createRouter, createWebHashHistory, RouteRecordRaw } from 'vue-router'
import Home from '../views/Game.vue'

const routes: Array<RouteRecordRaw> = [
  {
    path: '/',
    name: 'Game',
    component: Home
  }
]

const router = createRouter({
  history: createWebHashHistory(),
  routes
})

export default router
