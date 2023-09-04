import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="see-all"
export default class extends Controller {
  static targets = ["cards", "newCards"]

  connect() {
  }

  seeAll(){
    this.cardsTarget.classList.add("d-none")
    this.newCardsTarget.classList.remove("d-none")
  }

}
