import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["container", "template"]

  addPassenger(event) {
    event.preventDefault()

    const content = this.templateTarget.innerHTML.replace(/NEW_RECORD/g, new Date().getTime())
    this.containerTarget.insertAdjacentHTML('beforeend', content)
  }

  removePassenger(event) {
    event.preventDefault()

    const passengerField = event.target.closest('[data-nested-form-target="passenger"]')

    // Check if this is an existing record (has a persisted ID)
    const destroyInput = passengerField.querySelector('input[name*="_destroy"]')

    if (destroyInput) {
      // Mark for deletion instead of removing from DOM
      destroyInput.value = '1'
      passengerField.style.display = 'none'
    } else {
      // Remove from DOM if it's a new record
      passengerField.remove()
    }
  }
}
