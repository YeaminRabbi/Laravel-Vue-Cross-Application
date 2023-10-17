// src/axios-config.js

import axios from 'axios';

const instance = axios.create({
  baseURL: 'http://127.0.0.1:8000/api/', // Replace with your fixed API base URL
  timeout: 5000, // You can adjust the timeout value as needed
});

export default instance;
