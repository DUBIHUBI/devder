// Entry point for the build script in your package.json
import "@hotwired/turbo-rails"
import "./controllers"
import "bootstrap"
import "star-rating.js"
// import "star-rating.css"

document.addEventListener("turbolinks:load", function(event) {
  let stars = new StarRating('.star-rating');
});
