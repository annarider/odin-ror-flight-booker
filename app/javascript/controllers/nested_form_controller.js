import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["container", "template", "passengers"]

  addPassenger(event) {
    event.preventDefault()

    const content = this.templateTarget.innerHTML.replace(/NEW_RECORD/g, new Date().getTime())
    this.containerTarget.insertAdjacentHTML('beforeend', content)
  }

  removePassenger(event) {
    event.preventDefault()

    // Count only visible passengers
    const visiblePassengers = this.passengerTargets.filter(p => p.style.display !== 'none')
    
    // Prevent removing the last passenger
    if (this.passengerTargets.length <= 1) {
      alert("You must have at least one passenger")
      return
    }
    
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
