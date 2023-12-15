import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="reveal-infos"
export default class extends Controller {
  static targets = ["infos"]

  connect() {
    console.log("helllo");
  }

  displayInfos() {
    // this.infosTarget.classList.add("d-none")
  }
}
