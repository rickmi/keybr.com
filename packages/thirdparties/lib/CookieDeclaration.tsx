import { useRef } from "react";

export const CookieDeclaration = ({ id }: { id?: string }) => {
  const ref = useRef<HTMLDivElement>(null);
  // Cookiebot disabled for local use
  return <div ref={ref} />;
};
