import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="meetings"
export default class extends Controller {

  static targets = ["status", "accept"]

  connect() {
    console.log('Loaded meetings controller')
  }

 accept(e){
   console.log("User clicked accept")
   console.log(`/profiles/${this.element.dataset.user}/meetings/${this.element.dataset.meeting}`)
   fetch(`/profiles/${this.element.dataset.user}/meetings/${this.element.dataset.meeting}/accept`, {method: "POST", headers: {"X-CSRF-Token": this.getMetaValue("csrf-token")}})
   .then(response => response.text())
   .then((data) => {
     console.log(data)
     this.statusTarget.innerText= "Pending meeting request accepted"
     this.acceptTarget.remove()
   })
 }


 getMetaValue = (name) => {
  const element = document.head.querySelector(`meta[name="${name}"]`)
  return element.getAttribute("content")
}
}
