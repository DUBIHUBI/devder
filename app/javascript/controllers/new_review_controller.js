import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="new-review"
export default class extends Controller {
  static targets = ["button", "form", "avatar", "submit", "cross"]

  revealContent(event) {
    event.preventDefault()
    this.avatarTarget.classList.add("d-none")
    this.buttonTarget.classList.add("d-none")
    this.formTarget.classList.remove("d-none")
  }

  closeContent(event) {
    this.avatarTarget.classList.remove("d-none")
    this.buttonTarget.classList.remove("d-none")
    this.formTarget.classList.add("d-none")
  }

  // create() {
  //   this.buttonTarget.remove()
  // }
}
