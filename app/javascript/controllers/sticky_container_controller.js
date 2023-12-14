import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="sticky-container"
export default class extends Controller {
  static targets = ["scrolling"]
  connect() {
  }

  updateSticky(){
    if(window.scrollY >= 150){
      this.element.classList.add("sticky-container-updated")
      this.scrollingTarget.classList.add("scrolling")
    } else {
      this.element.classList.remove("sticky-container-updated")
      this.scrollingTarget.classList.remove("scrolling")
    }
  }
}
