import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="choice-button"
export default class extends Controller {
  static targets = ["recipes", "restaurants", "recipes-button", "restaurants-button"]

  connect() {
    console.log("connected");
  }
  clicked(event) {
    // console.log(event)
    if(event.target.innerText == "recipes") {
      this.recipesTarget.classList.remove("d-none")
      this.restaurantsTarget.classList.add("d-none")
    } else {
      this.recipesTarget.classList.add("d-none")
      this.restaurantsTarget.classList.remove("d-none")
    }
  }
}
