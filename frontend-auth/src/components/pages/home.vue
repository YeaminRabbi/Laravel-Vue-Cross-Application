<template>
  <div>
    <!-- Header Section -->
    <header class="bg-primary text-white text-center py-5">
      <div class="container">
        <h1 class="display-4">Company Name</h1>
        <p class="lead">Creative Solutions for Your Business</p>
        <a href="#contact" class="btn btn-light btn-lg">Get in Touch</a>
      </div>
    </header>

    <!-- Featured Section -->
    <section class="py-5">
      <div class="container">
        <div class="row">
          <div class="col-lg-6">
            <h2 class="display-4">Our Services</h2>
            <p class="lead">
              We provide a wide range of services to help your business succeed. Our team of experts is ready to assist you with all your needs.
            </p>
          </div>
          <div class="col-lg-6">
            <img src="https://sbl-fashion.com//storage/photos/1/OurServices.png" alt="Featured Image" class="img-fluid rounded-circle">
          </div>
        </div>
      </div>
    </section>

    <!-- Portfolio Section -->
    <section class="bg-light py-5">
      <div class="container">
        <h2 class="text-center">Portfolio</h2>
        <div class="row">
          <div class="col-lg-4 col-md-6 mb-4">
            <div class="card">
              <img src="https://www.hostinger.com/tutorials/wp-content/uploads/sites/2/2022/04/web-developer-portfolio.webp" class="card-img-top" alt="Project 1">
              <div class="card-body">
                <h5 class="card-title">Project 1</h5>
                <p class="card-text">Description of the project goes here. This is an example of a portfolio item.</p>
              </div>
            </div>
          </div>
          <div class="col-lg-4 col-md-6 mb-4">
            <div class="card">
              <img src="https://d117h1jjiq768j.cloudfront.net/images/default-source/blogs/2018/2018-12/developers-vs-low-code-what-they-think-and-why_870x433.jpg?sfvrsn=49bddde3_1" class="card-img-top" alt="Project 1">
              <div class="card-body">
                <h5 class="card-title">Project 1</h5>
                <p class="card-text">Description of the project goes here. This is an example of a portfolio item.</p>
              </div>
            </div>
          </div>
          <div class="col-lg-4 col-md-6 mb-4">
            <div class="card">
              <img src="https://andromo.com/wp-content/uploads/2022/01/01-Learn-How-to-Code-a-Mobile-app.jpg" class="card-img-top" alt="Project 1">
              <div class="card-body">
                <h5 class="card-title">Project 1</h5>
                <p class="card-text">Description of the project goes here. This is an example of a portfolio item.</p>
              </div>
            </div>
          </div>
          <!-- Add more portfolio items here -->
        </div>
      </div>
    </section>

    <!-- Contact Section -->
    <section id="contact" class="py-5 bg-primary text-white">
      <div class="container">
        <h2 class="text-center">Contact Us</h2>
        <div class="row">
          <div class="col-lg-6">
            <p>Let's discuss your project. Contact us today for a free consultation.</p>
            <ul class="list-unstyled">
              <li><i class="fas fa-envelope mr-2"></i>info@company.com</li>
              <li><i class="fas fa-phone mr-2"></i>(123) 456-7890</li>
              <li><i class="fas fa-map-marker-alt mr-2"></i>123 Main St, City, Country</li>
            </ul>
          </div>
          <div class="col-lg-6">
            <!-- You can add a contact form here -->
          </div>
        </div>
      </div>
    </section>
  </div>
</template>

<script>
export default {
  name: 'HomeView',
};
</script>

<style scoped>
/* Add your component-specific styles here */

/* Example: Add styles for the contact section */
#contact {
  padding-top: 60px;
  padding-bottom: 60px;
}
</style>
