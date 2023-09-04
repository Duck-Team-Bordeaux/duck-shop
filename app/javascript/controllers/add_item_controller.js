import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="add-item"
export default class extends Controller {
  connect() {
    document.addEventListener('keyup')
  }

  addItem() {
    const itemsCreateUrl = '/items'

    fetch(itemsCreateUrl, {
      method: 'POST',
      headers: {  'Content-Type': 'application/json'},
      body: JSON.stringify({})
    })
  }
}
