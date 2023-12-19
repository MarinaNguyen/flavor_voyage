import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="reviews-restaurant"
export default class extends Controller {
  static targets = ["reviewmenu", "container2", "icon2"]
  connect() {
    console.log("helloooooo")
  }

  displayReviews(event) {
    if (event.target) {
      this.icon2Target.classList.toggle("down")
    }
    this.reviewmenuTarget.classList.toggle("d-none")
  }
}
