import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="restaurant-infos"
export default class extends Controller {
  static targets = ["services", "icon1", "container1"]

  connect() {
    console.log("helloo")
  }

  displayInfos(event) {
    if (event.target == this.container1Target) {
      this.icon1Target.classList.toggle("down")
    }
    this.servicesTarget.classList.toggle("d-none")
    this.icon1Target.classList.toggle("down")
  }
}
