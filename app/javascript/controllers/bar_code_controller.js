import { Controller } from "@hotwired/stimulus";
import Quagga from 'quagga';

// Connects to data-controller="bar-code"
export default class extends Controller {
  static targets = ['video', 'button', 'itemsContainer', 'empty']
  static values = {
    cart: String
  }

  startLecture() {
    this.buttonTarget.classList.add('d-none')
    this.videoTarget.classList.remove('d-none')
    this.inProgress = false
    this.initBarcodeScanner()
    this.decodeBarCode()
  }

  initBarcodeScanner() {
    Quagga.init(
      {
        inputStream: {
          name: 'Live',
          type: 'LiveStream',
          target: this.videoTarget,
        },
        decoder: {
          readers: ['ean_reader'],
          debug: {
            drawBoundingBox: true,
            showPattern: false,
            drawScanline: false,
          },
          drawBoundingBoxOnCanvas: true,
        },
        locator: {
          patchSize: 'medium',
          halfSample: true,
        },
      },
      function (err) {
        if (err) {
          console.error(err);
          return;
        }
        Quagga.start()
      }
    );
  }

  decodeBarCode() {
    Quagga.onDetected((result) => {
      console.log(this.inProgress)
      if (this.inProgress) {
        console.log('Return!');
        return
      }
      this.inProgress = true
      console.log(result)
      const eanCode = result.codeResult.code
      Quagga.stop()
      this.videoTarget.classList.add('d-none')
      this.buttonTarget.classList.remove('d-none')
      setTimeout(() => {
        this.createItem(eanCode);
      }, 100);
      // this.createItem(eanCode);

      if (this.hasEmptyTarget) {
        this.emptyTarget.classList.add('d-none')
      }
    });
  }

  createItem(eanCode) {
      console.log(this.inProgress)
      console.log(eanCode)
    // if (this.inProgress) {
    //   console.log('Return!');
    //   return
    // }
    const csrfToken = document.querySelector('meta[name="csrf-token"]').getAttribute('content');
    fetch(`/carts/${this.cartValue}/items?barcode=${eanCode}`, {
      method: 'POST',
      headers: {
        "Accept": "text/plain",
        'X-CSRF-Token': csrfToken,
      },
      body: JSON.stringify({barcode: eanCode})
    })
    .then(response => response.text())
    .then((data) => {
      console.log(data)
      console.log('dans le then');
      this.itemsContainerTarget.innerHTML = data
    })
    .catch(error => {
      console.error(error);
    })
    .finally(() => {
      console.log('finnaly');
      this.inProgress = false
    })
  }
}
