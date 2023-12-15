import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="country-form"
export default class extends Controller {
  static targets = ["form"]

  connect() {
    const select = document.querySelector("#country")
    select.setAttribute("data-action", "change->country-form#submit")
  }

  submit() {
    const form = this.formTarget
    form.submit()
  }
}
