import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="favourites"
export default class extends Controller {

  static targets = ["icon"]

  connect() {
    console.log("You are connected to the favourites controller")
  }

  save(e) {
    console.log(e)
    console.log(`/profiles/${e.target.id}`)
    fetch(`/profiles/${e.target.id}/favourites`, {method: "POST", headers: {"X-CSRF-Token": this.getMetaValue("csrf-token")}})
    .then(response => response.text())
    .then((data) => {
      this.iconTarget.classList.toggle("fa-regular")
      // this.iconTarget.innerHTML= '<i class="fa-solid fa-heart heart"></i>'
      this.iconTarget.classList.toggle("fa-solid")
    })

  }

  getMetaValue = (name) => {
    const element = document.head.querySelector(`meta[name="${name}"]`)
    return element.getAttribute("content")
  }
}
