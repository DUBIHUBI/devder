import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="new-review"
export default class extends Controller {
  static targets = ["button", "form", "avatar", "submit"]

  revealContent(event) {
    event.preventDefault()
    this.avatarTarget.classList.add("d-none")
    this.buttonTarget.classList.add("d-none")
    this.formTarget.classList.remove("d-none")
  }

  // create() {
  //   this.buttonTarget.remove()
  // }
}
