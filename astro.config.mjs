import { defineConfig } from "astro/config";
import starlight from "@astrojs/starlight";

import tailwind from "@astrojs/tailwind";

// https://astro.build/config
export default defineConfig({
  integrations: [
    starlight({
      title: "polars-dart",
      customCss: ["./src/tailwind.css"],
      social: {
        github: "https://github.com/Desdaemon/dartdoc_astro",
      },
      sidebar: [
        {
          label: "Guides",
          items: [
            // Each item here is one entry in the navigation menu.
            {
              label: "Intro",
              link: "/guides/example/",
            },
          ],
        },
        {
          label: "Reference",
          collapsed: true,
          autogenerate: {
            directory: "reference",
          },
        },
      ],
    }),
    tailwind({
      applyBaseStyles: false,
    }),
  ],
});
