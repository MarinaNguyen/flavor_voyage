import { Controller } from "@hotwired/stimulus"


export default class extends Controller {
  static targets = ["form"];

  connect() {
    this.formTarget.classList.add("d-none");
  }

  displayForm() {
    this.formTarget.classList.toggle("d-none");
  }
}
