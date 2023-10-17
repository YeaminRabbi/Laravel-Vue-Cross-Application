
import { createRouter, createWebHistory } from 'vue-router';
import { isUserAuthenticated } from '@/axios-config.js';

const routes = [
  {
    path: '/',
    component: () => import('../components/pages/home.vue'),
    name: 'home',
  },
  {
    path: '/about',
    component: () => import('../components/pages/about.vue'),
    name: 'about',
    meta: { requiresAuth: true },
  },
  {
    path: '/users',
    component: () => import('../components/pages/users.vue'),
    name: 'users',
    meta: { requiresAuth: true }, // Add a meta field to specify that authentication is required
  },
  {
    path: '/user-login',
    component: () => import('../components/auth/login.vue'),
    name: 'user-login',
  },
];

const router = createRouter({
  history: createWebHistory(),
  routes,
});

// Add a global navigation guard to check authentication for all protected routes
router.beforeEach(async (to, from, next) => {
  if (to.matched.some((record) => record.meta.requiresAuth)) {
    if (await isUserAuthenticated()) {
      next(); // User is authenticated, allow navigation
    } else {
      next({ name: 'user-login' }); // User is not authenticated, redirect to login
    }
  } else {
    next(); // For routes that don't require authentication, allow navigation
  }
});

export default router;
