// src/axios-config.js

import axios from 'axios';

const instance = axios.create({
  baseURL: 'http://127.0.0.1:8000/api/', // Replace with your fixed API base URL
  timeout: 5000, // You can adjust the timeout value as needed
});

// Include the token in the headers for authenticated requests
instance.interceptors.request.use((config) => {
    const token = localStorage.getItem('token');
    if (token) {
        config.headers['Authorization'] = `Bearer ${token}`;
    }
    return config;
});

// checking if the user is authenticated
export async function isUserAuthenticated() {
    try {
      // Send a request to your Laravel API to check if the user is authenticated
      const response = await instance.get('check-auth'); // Adjust the URL as needed
        
    //   console.log(response);
      // If the response indicates a successful authentication check, return true
      return response.status === 200;
    } catch (error) {
      // If there is an error or the authentication check fails, return false
      return false;
    }
}
export default instance;
