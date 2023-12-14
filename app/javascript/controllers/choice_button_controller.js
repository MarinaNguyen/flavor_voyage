import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="choice-button"
export default class extends Controller {
  static targets = ["recipes", "restaurants", "recipesbutton", "restaurantsbutton", "restaurantslink", "recipeslink"]

  connect() {

    this.restaurantsTarget.classList.add("d-none");
    this.recipesTarget.classList.remove("d-none");
  }
  clicked(event) {
    // console.log(event)
    if (event.target.innerText == "Restaurants") {
      this.recipeslinkTarget.classList.add("d-none")
      this.restaurantslinkTarget.classList.remove('d-none')
    }


    if(event.target.innerText == "Recipes") {
      this.recipesbuttonTarget.style.backgroundColor = "#02595A";
      this.restaurantsbuttonTarget.style.backgroundColor = "#FFFFFF";
      this.recipesbuttonTarget.style.color = "#FFFFFF"
      this.restaurantsbuttonTarget.style.color = "#02595A"
      this.recipesTarget.classList.remove("d-none")
      this.restaurantsTarget.classList.add("d-none")
      this.recipeslinkTarget.classList.remove("d-none")
      this.restaurantslinkTarget.classList.add("d-none")
    } else {
      this.restaurantsbuttonTarget.style.backgroundColor = "#02595A";
      this.recipesbuttonTarget.style.backgroundColor = "#FFFFFF";
      this.restaurantsbuttonTarget.style.color = "#FFFFFF"
      this.recipesbuttonTarget.style.color = "#02595A"
      this.recipesTarget.classList.add("d-none")
      this.restaurantsTarget.classList.remove("d-none")
    }


  }
}
