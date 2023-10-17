<template>
  <div id="app">
    <header>
      <router-link :to="{ name: 'home' }">Home</router-link> |
      <router-link :to="{ name: 'about' }">About</router-link> |
      <router-link :to="{ name: 'users' }">Users</router-link> |
      <router-link :to="{ name: 'login' }">Login</router-link>

    </header>
    <router-view></router-view>
  </div>
</template>

<script>
export default {
  name: 'App',
};
</script>

<style>
/* Add your global styles here, if necessary */
</style>
