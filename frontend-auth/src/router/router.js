// router.js

import { createRouter, createWebHistory } from 'vue-router';

const routes = [
  {
    path: '/',
    component: () => import('../components/pages/home.vue'), // Home component
    name: 'home', // Name for the route
  },
  {
    path: '/about',
    component: () => import('../components/pages/about.vue'), // About component
    name: 'about', // Name for the route
  },
  {
    path: '/users',
    component: () => import('../components/pages/users.vue'), // About component
    name: 'users', // Name for the route
  },
  {
    path: '/login',
    component: () => import('../components/auth/login.vue'), // Login component
    name: 'login', // Name for the route
  },
];

const router = createRouter({
  history: createWebHistory(),
  routes,
});

export default router;
