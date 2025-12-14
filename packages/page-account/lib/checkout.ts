import type { UserDetails } from "@keybr/pages-shared";
// Payment integration removed for local use
import { loadPaddle } from "./paddle/loader.ts";

export function checkoutProduct({ id, email }: UserDetails) {
  return loadPaddle().then((paddle) => {
    paddle.Checkout.open({
      settings: {
        displayMode: "overlay",
        variant: "one-page",
        allowLogout: false,
      },
      customer: {
        email,
      },
      items: [
        {
          priceId: "local-disabled", // Payment disabled for local use
          quantity: 1,
        },
      ],
      customData: {
        id,
      },
    });
  });
}
