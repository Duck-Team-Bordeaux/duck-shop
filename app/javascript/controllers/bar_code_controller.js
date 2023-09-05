import { Controller } from "@hotwired/stimulus"
import QrScanner from 'qr-scanner';

// Connects to data-controller="bar-code"
export default class extends Controller {
  static targets = ["video"]

  // connect() {
  //   console.log('coucou')
  //   this.qrScanner = new QrScanner(
  //     this.videoTarget,
  //     result => console.log('decoded qr code:', result),
  //     { /* your options or returnDetailedScanResult: true if you're not specifying any other options */ },
  // );
  //   this.qrScanner.start().then(() => {
  //     console.log(this.videoTarget)
  //   });
  // }

  // disconnect() {
  //   this.qrScanner.stop();
  // }
}
