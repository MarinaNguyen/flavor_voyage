import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="restaurant-infos"
export default class extends Controller {
  static targets = ["services", "icon1"]
  connect() {
    console.log("helloo")
  }

  displayInfos() {
    this.servicesTarget.classList.toggle("d-none")
    this.icon1Target.classList.toggle("down")
  }
}
