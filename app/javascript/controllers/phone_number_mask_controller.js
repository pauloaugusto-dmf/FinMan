import { Controller } from "@hotwired/stimulus";
import IMask from 'imask';

export default class extends Controller {
  connect() {
    const mask = IMask(this.element, {
      mask: '(00) 00000-0000'
    });
  }
}