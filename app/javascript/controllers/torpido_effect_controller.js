import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="torpido-effect"
export default class extends Controller {
  static targets = ["icon1", "icon2" ,"icon3", "container1", "container2", "container3"]

  connect() {
  }

  displayEffect(event) {

  }
}
