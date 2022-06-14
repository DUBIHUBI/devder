import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="meeting-movement"
export default class extends Controller {

  static targets = ["card", "scheduledwrapper", "status", "reviewedwrapper", "submit", "reviewForm"]

  connect() {
    // console.log("Movement controller loaded")
    // console.log(this.scheduledwrapperTarget)
  }

  moveMeeting(e) {
    console.log(e.target)
    let meeting = e.target
    // console.log(this.scheduledwrapperTarget)
    this.scheduledwrapperTarget.insertAdjacentHTML("beforeend", e.target.outerHTML)
    meeting.remove()
    meeting.classList.add("meet-scheduled")
  //  this.statusTarget.innerText = "Accepted"
  }

  moveScheduled(e) {
    // console.log(this.reviewedwrapperTarget)
    // console.log(this.reviewFormTargets)
    this.reviewFormTargets.forEach(element => {
      console.log(element)
      element.classList.add('d-none')
    });
    this.reviewedwrapperTarget.insertAdjacentHTML("beforeend", e.target.parentElement.outerHTML)
    e.target.parentElement.remove()
    // this.element.remove()
    // let meeting = e.target
    // console.log(this.scheduledwrapperTarget)
    // this.scheduledwrapperTarget.insertAdjacentHTML("beforeend", e.target.outerHTML)
    // meeting.remove()
    // meeting.classList.add("meet-scheduled")
  //  this.statusTarget.innerText = "Accepted"
  }
}
