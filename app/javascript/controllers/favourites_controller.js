import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="favourites"
export default class extends Controller {

  static targets = ["icon", "card"]
  static values = { id: Number}

  connect() {
    console.log("You are connected to the favourites controller")
  }

  save(e) {
    console.log(`/profiles/${e.target.id}`)
    console.log(e)

    if (this.iconTarget.classList.contains("fa-regular")) {

      fetch(`/profiles/${e.target.id}/favourites`, {method: "POST", headers: {"X-CSRF-Token": this.getMetaValue("csrf-token")}})
      .then(response => response.text())
      .then((data) => {
        const icon = this.iconTarget
        icon.classList.toggle("fa-regular")
        icon.style.animation = 'likeheart 0.8s ease'
        // this.iconTarget.innerHTML= '<i class="fa-solid fa-heart heart"></i>'
        icon.classList.toggle("fa-solid")
        setTimeout(function() {
          icon.style.animation = ''
        }, 700)
      })

    }

    else {
      console.log(this.element.dataset.favourite)
      fetch(`/favourites/${e.target.id}`, {method: "DELETE", headers: {"X-CSRF-Token": this.getMetaValue("csrf-token")}})
      .then(response => response.text())
      .then((data) => {
        const icon = this.iconTarget
        icon.classList.toggle("fa-solid")
        icon.style.animation = 'likeheart 0.8s ease'
        // this.iconTarget.innerHTML= '<i class="fa-solid fa-heart heart"></i>'
        icon.classList.toggle("fa-regular")
        setTimeout(function() {
          icon.style.animation = ''
        }, 700)
      })

    }

  }

  getMetaValue = (name) => {
    const element = document.head.querySelector(`meta[name="${name}"]`)
    return element.getAttribute("content")
  }
}
