import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="favourites"
export default class extends Controller {

  static targets = ["icon"]

  connect() {
    console.log("You are connected to the favourites controller")
  }

  save(e) {
    console.log(e)
    console.log(e.target.id)
    console.log(`/profiles/${e.target.id}`)
    fetch(`/users/${e.target.id}/favourites`, {method: "POST", headers: {"X-CSRF-Token": this.getMetaValue("csrf-token")}})
    .then(response => response.text())
    .then((data) => {
      // this.iconTarget.innerHTML= '<p class="text-scheduled"> <em> <i class="fa-solid fa-circle-check"></i> Accepted </em> </p>'
      this.iconTarget.classList.add("selected")
    })

  }


  getMetaValue = (name) => {
    const element = document.head.querySelector(`meta[name="${name}"]`)
    return element.getAttribute("content")
  }
}
