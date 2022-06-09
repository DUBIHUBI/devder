import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="filter"
export default class extends Controller {
  static targets = ["search"];

  connect() {
    console.log("Stimulus controller connected!")
  }

  search() {
    const url = `${"http://localhost:3000/profiles"}?${this.params}`;

    Turbolinks.clearCache();
    Turbolinks.visit(url);
  }

  get params() {
    return this.searchTargets.map((t) => `${t.name}=${t.value}`).join("&");
  }
}
