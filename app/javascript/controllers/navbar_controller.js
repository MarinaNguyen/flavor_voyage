import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="navbar"
export default class extends Controller {
  static targets = ["element"]

  connect() {
    this.element.classList.remove("navbar-lewagon-white")
  }

  updateNavbar(){
    if(window.scrollY >= 213){
      this.element.classList.add("navbar-lewagon-white")
    } else {
      this.element.classList.remove("navbar-lewagon-white")
    }
  }
}
