import { placeholder } from "@keybr/thirdparties";

export function showAdBlockerStatus(enabled: boolean): void {
  // Ad-blocker detection disabled for local use - always hide messages
  const placeholders = findElements(`.${placeholder}`);
  for (const elem of placeholders) {
    elem.hidden = true;
    elem.innerHTML = "";
  }
}

function findElements(selector: string): HTMLElement[] {
  return Array.from(document.querySelectorAll(selector));
}
