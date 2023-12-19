import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="reveal-infos"
export default class extends Controller {
  static targets = ["icon1", "icon2" ,"icon3", "container1", "container2", "container3", "container4", "icon4"]
  connect() {
  }

  displayCard(event) {
    console.log(event.target)
    if (event.target == this.container1Target) {
      this.icon1Target.classList.toggle("down")
    } else if (event.target == this.container2Target) {
      this.icon2Target.classList.toggle("down")
    } else if (event.target == this.container3Target) {
      this.icon3Target.classList.toggle("down")
    } else {
      this.icon4Target.classList.toggle("down")
    }

    const element = event.target.getAttribute("data-element")
    const elementToToggle = document.querySelector(`#${element}`)
    elementToToggle.classList.toggle("d-none")
  }

}
