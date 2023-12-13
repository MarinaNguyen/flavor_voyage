import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="country-form"
export default class extends Controller {
  static targets = ["countryForm"]
  connect() {
    console.log("helloo")
  }

  fire(){
    console.log("fire")
    this.countryFormTarget.classList.remove("d-none")
  }
}
