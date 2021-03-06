import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="meetings"
export default class extends Controller {

  static targets = ["status", "accept", "card"]

  connect() {
    console.log('Loaded meetings controller')
    console.dir(this.element)
  }

 accept(e){
   console.log("User clicked accept")
   console.log(`/profiles/${this.element.dataset.user}/meetings/${this.element.dataset.meeting}`)
   fetch(`/profiles/${this.element.dataset.user}/meetings/${this.element.dataset.meeting}/accept`, {method: "POST", headers: {"X-CSRF-Token": this.getMetaValue("csrf-token")}})
   .then(response => response.text())
   .then((data) => {
     console.log(data)
     this.acceptTarget.remove()
     this.element.classList.remove("meet-pending")
     this.element.classList.add("meet-scheduled")
     //  this.cardTarget.outerHTML = data
     this.statusTarget.innerHTML= '<p class="text-scheduled"> <em> <i class="fa-solid fa-circle-check"></i> Accepted </em> </p>'
     this.dispatch("confirmed", {target: this.element})
     this.element.remove

   })
 }

 getMetaValue = (name) => {
  const element = document.head.querySelector(`meta[name="${name}"]`)
  return element.getAttribute("content")
}
}
