import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="meeting-movement"
export default class extends Controller {

  static targets = ["card", "scheduledwrapper"]

  connect() {
    console.log("Movement controller loaded")
    console.log(this.scheduledwrapperTarget)
  }

   moveMeeting(e) {
     console.log(e.target)
     let meeting = e.target
     console.log(this.scheduledwrapperTarget)
     this.scheduledwrapperTarget.insertAdjacentHTML("beforeend", e.target.outerHTML)
     meeting.remove()
     meeting.classList.add("meet-scheduled")
   }

}
