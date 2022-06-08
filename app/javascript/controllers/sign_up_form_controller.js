import { Controller } from "@hotwired/stimulus"

export default class extends Controller {

  static targets = ["student", "professional"]

  connect() {
    console.log("Hello from our first Stimulus controller")
  }

  revealContent(event) {
    console.log(event.target)
    if(event.target.value == 'true'){
      this.studentTarget.classList.remove("d-none")
      this.professionalTarget.classList.add("d-none")
    } else {
      this.professionalTarget.classList.remove("d-none")
      this.studentTarget.classList.add("d-none")

    }
  }
}
