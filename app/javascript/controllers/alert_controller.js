import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  static targets = ["container"];

  connect() {
    this.slideInRight();
  }

  slideInRight() {
    this.containerTarget.classList.remove("-translate-x-full-custom");
    this.containerTarget.classList.add("translate-x-0");
  }

  slideOutRight() {
    this.containerTarget.classList.remove("translate-x-0");
    this.containerTarget.classList.add("-translate-x-full-custom");
  }

  close() {
    this.slideOutRight();
  }
}