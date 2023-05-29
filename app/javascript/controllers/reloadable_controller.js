import { Controller } from "@hotwired/stimulus";

// Connects to data-controller="reloadable"
export default class extends Controller {
  static targets = ["reloadFrame"];

  connect() {
    document.addEventListener("visibilitychange", async () => {
      if (!document.hidden) {
        this.reloadFrameTargets.forEach((reloadFrame) => {
          reloadFrame.innerHTML = "";
          reloadFrame.src = reloadFrame.src;
        });
      }
    });
  }
}
