import { Controller } from "@hotwired/stimulus"
import Quagga from 'quagga';

// Connects to data-controller="bar-code"
export default class extends Controller {
  static targets = ["video"]

  connect() {
    // navigator.mediaDevices
    //   .getUserMedia({ video: true })
    //   .then((stream) => {
    //     const videoElement = this.videoTarget;

    //     videoElement.srcObject = stream;
    //     videoElement.play();
    //     this.initCamera();
  // });
  }

  disconnect() {
    this.stopScanner();
  }

  initCamera() {
    Quagga.init({
      inputStream : {
        name : "Live",
        type : "LiveStream",
        target: this.videoTarget
      },
      decoder : {
        readers : ["code_128_reader"]
      }
    }, function(err) {
        if (err) {
            console.log(err);
            return
        }
        console.log("Initialization finished. Ready to start");
        Quagga.start();
    });

    // Quagga.onDetected((result) => {
    //   // Gérez le code-barres détecté ici
    // });
  }

  stopScanner() {
    Quagga.stop();
    this.videoTarget.srcObject.getTracks().forEach((track) => track.stop());
  }
}
