import type { Plugin } from "@opencode-ai/plugin"
import { join } from "path";
import { homedir } from "os";

export const NotificationPlugin: Plugin = async ({ client, $ }) => {
  const errorSoundPath = join(homedir(), ".config/opencode/sounds/dota2_meepmerp.mp3")
  const successSoundPath = join(homedir(), ".config/opencode/sounds/dota2_assassinate2.mp3")

  return {
    event: async ({ event }) => {
      // Send notification on session completion
      if (event.type === "session.idle") {
        await $`afplay ${successSoundPath}`
      }

      if (event.type === 'permission.asked') {
        await $`afplay ${errorSoundPath}`;
      }
    }
  }
}
