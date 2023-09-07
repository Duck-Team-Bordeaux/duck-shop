import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["form", "input", "currentList", "list"]

  connect() {
  }

  update() {
    const url = `${this.formTarget.action}?query=${this.inputTarget.value}`
    this.currentListTarget.classList.add('d-none')
    fetch(url, { headers: { "Accept": "text/plain" } })
      .then(response => response.text())
      .then((data) => {
        this.listTarget.outerHTML = data
      })
  }
}
