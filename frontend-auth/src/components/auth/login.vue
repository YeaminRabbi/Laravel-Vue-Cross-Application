<template>
  <div class="login-container">
    <form @submit="login">
      <h2>Login</h2>
      <div class="form-group">
        <label for="email">Email</label>
        <input type="email" id="email" v-model="formData.email" required>
      </div>
      <div class="form-group">
        <label for="password">Password</label>
        <input type="password" id="password" v-model="formData.password" required>
      </div>
      <button type="submit" class="btn btn-primary">Login</button>
    </form>
    <div v-if="error" class="error">{{ error }}</div>
    <div v-if="success" class="success">{{ success }}</div>
  </div>
</template>

<script>
import axios from '@/axios-config';

export default {
  name: 'LoginPage',
  data() {
    return {
      formData: {
        email: '',
        password: '',
      },
      error: null,
      success: null,
    };
  },
  methods: {
    async login(event) {
      event.preventDefault();
      this.error = null;

      try {
        // Replace with your API endpoint
        const response = await axios.post('user-login', this.formData);

        // Check if the login was successful
        if (response.status === 200 && response.data.user && response.data.token) {
          // Store user data and token in local storage
          localStorage.setItem('user', JSON.stringify(response.data.user));
          localStorage.setItem('token', response.data.token);

          // Handle successful login (e.g., redirect)
          this.success = 'Login successful';
          // this.$router.push('/home');
        } else {
          this.error = 'Login failed. Please check your credentials.';
        }
      } catch (error) {
        // Handle login error
        console.error('Login failed', error);
        this.error = 'Login failed. Please check your credentials.';
      }
    },
  },
};
</script>

<style scoped>
.login-container {
  max-width: 400px;
  margin: 0 auto;
  padding: 20px;
  border: 1px solid #ccc;
  border-radius: 5px;
}

.form-group {
  margin-bottom: 15px;
}

.btn {
  background-color: #007bff;
  color: #fff;
}

.error {
  color: red;
  margin-top: 10px;
}
.success {
  color: green;
  margin-top: 10px;
}
</style>
