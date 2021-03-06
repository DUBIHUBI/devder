import { Controller } from "@hotwired/stimulus"
import { createConsumer } from "@rails/actioncable"


// Connects to data-controller="chatroom-subscription"
export default class extends Controller {
  static values = { chatroomId: Number }
  static targets = ["messages"]

  connect() {
    this.channel = createConsumer().subscriptions.create(
      { channel: "ChatroomChannel", id: this.chatroomIdValue },
      {
        received: (message) => {
          console.log(`Subscribe to the chatroom with the id ${this.chatroomIdValue}.`)
          this.messagesTarget.insertAdjacentHTML("beforeend", message)
          // this.messagesTarget.scrollTo(0, this.messagesTarget.scrollHeight)
          console.log(this.messagesTarget.scrollTop)
          console.log(this.messagesTarget.scrollHeight)

        }


        // , html: { data: { action: "turbo:submit-end->chatroom-subscription#resetForm" }, class: "d-flex"}
      }


      )
      this.messagesTarget.scrollTo(0, this.messagesTarget.scrollHeight)
      // this.messagesTarget.scrollTop = this.messagesTarget.scrollHeight




  }

  resetForm(event) {
    event.target.reset()
  }

  disconnect() {
    console.log("Unsubscribed from the chatroom")
    this.channel.unsubscribe()
  }
}
