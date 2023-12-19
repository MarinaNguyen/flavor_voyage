import { Controller } from "@hotwired/stimulus"


export default class extends Controller {
  static targets = ["form", "container2", "icon2"];

  connect() {
    this.formTarget.classList.add("d-none");
  }

  displayForm(event) {
    if (event.target) {
      this.icon2Target.classList.toggle("down")
    }
    this.formTarget.classList.toggle("d-none");
  }
}
