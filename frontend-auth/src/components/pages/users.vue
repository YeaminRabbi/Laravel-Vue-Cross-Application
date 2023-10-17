<template>
    <div class="container">
      <div class="row justify-content-center">
        <div v-if="loading" class="text-muted">Loading users...</div>
  
        <div v-else class="col-md-8">
          <h2 class="text-center">List of Users</h2>
          <table class="table table-bordered">
            <thead>
              <tr>
                <th scope="col">Sl</th>
                <th scope="col">Image</th>
                <th scope="col">Name</th>
                <th scope="col">Email</th>
                <th scope="col">Role</th>
                <th scope="col">Action</th>
              </tr>
            </thead>
            <tbody>
              <tr v-for="(user,index) in users" :key="user.id">
                <td>{{ index+1}}</td>
                <td>
                    <img :src="user.image" alt="User Image" style="max-width: 50px;">    
                </td>
                <td>{{ user.name }}</td>
                <td>{{ user.email }}</td>
                <td>{{ user.role }}</td>
                <td>
                    <button class="btn btn-primary btn-sm">
                        view
                        <!-- <router-link :to="{ name: 'edit', params: { id: user.id } }">Edit</router-link> -->
                    </button>

                </td>
              </tr>
            </tbody>
          </table>
        </div>
      </div>
  
      <!-- Display an error message if there was an issue loading data -->
      <div v-if="error" class="alert alert-danger">{{ error }}</div>
    </div>
  </template>
  
  <script>

 import axios from '@/axios-config';
  
  export default {
    name: 'UsersPage',
    data() {
      return {
        users: [], // Initialize as an empty array
        loading: true, // Set to true while loading data
        error: null, // Store any error message
      };
    },
  
    mounted() {
      this.fetchUsers(); // Call the fetchUsers method when the component is mounted
    },
  
    methods: {
      async fetchUsers() {
        try {
          // Replace with your API endpoint
          const response = await axios.get('users');
  
          // Store the returned users in the users array
          this.users = response.data.users;
  
          // Set loading to false to display the users
          this.loading = false;
        } catch (error) {
          // Set loading to false and store the error message
          this.loading = false;
          this.error = 'There was a problem loading the users. Please try again.';
        }
      },
    },
  };
  </script>
  