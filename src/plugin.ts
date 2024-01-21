import type { StarlightPlugin } from "@astrojs/starlight/types";
import { spawn } from "node:child_process";

export default () => {
  return {
    name: "dartdoc",
    hooks: {
      async setup({ logger }) {
        logger.info("Running dartdoc_astro...");
        const dartdoc = spawn("dart", ["run", "dartdoc_astro"], {
          stdio: "inherit",
        });
        await new Promise((resolve, reject) => {
          dartdoc.once("close", code => code !== 0 ? reject(dartdoc) : resolve(void 0));
        });
        logger.info("dartdoc_astro has completed.");
      },
    },
  } satisfies StarlightPlugin;
};
