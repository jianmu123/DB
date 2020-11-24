import { createRouter, createWebHistory } from 'vue-router'

import Index from "../views/Index.vue"
import Time from '../views/Time.vue'
import Movie from '../views/Movie.vue'
import Group from '../views/Group.vue'
import Book from '../views/Book.vue'
import Music from '../views/Music.vue'
import Market from '../views/Market.vue'
import Events from '../views/Events.vue'


const routes = [
  {
    path: '/',
    component: Index
  },
	{
    path: '/time',
    component: Time
  },
  {
    path: '/movie',
    component: Movie
  },
  {
    path: '/group',
    component: Group
  },
  {
    path: '/book',
    component: Book
  },
  {
    path: '/music',
    component: Music
  },
  {
    path: '/market',
    component: Market
  },
  {
    path: '/events',
    component: Events
  },
]

const router = createRouter({
  history: createWebHistory(process.env.BASE_URL),
  routes
})

export default router
