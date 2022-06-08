import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="filter"
export default class extends Controller {
  connect() {
    console.log("Stimulus controller connected!")
  }
}
//   static targets = ["filter"];

//   filter() {
//     const url = `${window.location.pathname}?${this.params}`;

//     Turbolinks.clearCache();
//     Turbolinks.visit(url);
//   }

//   get params() {
//     return this.filterTargets.map((t) => `${t.name}=${t.value}`).join("&");
//   }
// }
