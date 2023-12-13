import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="choice-button"
export default class extends Controller {
  static targets = ["recipes", "restaurants", "recipesbutton", "restaurantsbutton"]

  connect() {
    console.log("connected");
  }
  clicked(event) {
    // console.log(event)
    if(event.target.innerText == "recipes") {
      this.recipesbuttonTarget.style.backgroundColor = "#04585A";
      this.restaurantsbuttonTarget.style.backgroundColor = "#FFFFFF";
      this.recipesbuttonTarget.style.color = "#FFFFFF"
      this.restaurantsbuttonTarget.style.color = "#04585A"
      this.recipesTarget.classList.remove("d-none")
      this.restaurantsTarget.classList.add("d-none")
    } else {
      this.restaurantsbuttonTarget.style.backgroundColor = "#04585A";
      this.recipesbuttonTarget.style.backgroundColor = "#FFFFFF";
      this.restaurantsbuttonTarget.style.color = "#FFFFFF"
      this.recipesbuttonTarget.style.color = "#04585A"
      this.recipesTarget.classList.add("d-none")
      this.restaurantsTarget.classList.remove("d-none")
    }
  }
}
