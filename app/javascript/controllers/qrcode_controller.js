import { Controller } from "@hotwired/stimulus"
// Connects to data-controller="qrcode"
export default class extends Controller {
  connect() {
    console.log("coucou")
    document.addEventListener('keyup', this.success.bind(this));
  }

  success(){
    Swal.fire({
      position: 'center',
      icon: 'success',
      title: 'QR Code Validé',
      showConfirmButton: false,
      timer: 1500
    }
    )
  }
}
