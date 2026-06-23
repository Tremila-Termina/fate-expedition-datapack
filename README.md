# Fate Expedition Datapack

Fate Expedition is a cooperative Minecraft Java 1.21.11 datapack built around completing the full survival progression and defeating the Ender Dragon. It adds escalating calamity, shared Fate Shards, timed team objectives, permanent milestone boons, stage-specific random events, and a three-phase dragon fight.

The datapack is designed for 1–4 players. In-game text is Simplified Chinese.

> Some events can permanently change terrain through explosions, fire, lava, or infested blocks. Back up important worlds before playing.

## Features

- Four progression stages: Overworld Survival, Nether Expedition, Stronghold Hunt, and Final Battle.
- Thirty-two stage-specific events with protection against repeating any of the previous three events.
- Four 90-second catastrophes that become more dangerous in three phases.
- Four possible World Fates that alter supplies, combat, event pacing, or the victory deadline.
- Shared Fate Shards used for enchantments, structure locating, protection, provocation, and Nether team travel.
- Seven advancement-based milestone menus with permanent team attribute boons or instant supplies.
- A stable sidebar whose rows do not reorder when values change.
- Ender Dragon phases, End Crystal objectives, a final-stand timer, and a victory report.

## Installation

1. Download the latest release ZIP or the `FateExpedition` folder.
2. Open the target Minecraft world folder and then open `datapacks`.
3. Place the ZIP or `FateExpedition` folder directly inside `datapacks`.
4. Enter the world and run `/reload`.
5. Run `/trigger fe_ping` to confirm that the datapack is active.
6. Run `/trigger fe_start` to begin the expedition.

The installed pack must have `pack.mcmeta` and `data` directly at its root.

## Player Commands

```mcfunction
/trigger fe_start
/trigger fe_stop
/trigger use
/trigger fe_ping
/trigger fe_uninstall
```

- `fe_start`: start a new expedition in the current world.
- `fe_stop`: stop the active expedition while keeping permanent milestone attributes.
- `use`: open the clickable Fate Shard menu.
- `fe_ping`: verify that the datapack triggers are available.
- `fe_uninstall`: remove the datapack's scoreboards, temporary entities, and permanent attributes.

## Progression

1. **Overworld Survival** ends when the team first enters the Nether.
2. **Nether Expedition** requires obtaining a Blaze Rod and returning to the Overworld.
3. **Stronghold Hunt** ends when the team enters The End.
4. **Final Battle** tracks End Crystals and the three Ender Dragon phases until victory.

Each stage includes a timed team objective. Faster completion awards more Fate Shards, while failure increases calamity.

## Calamity and Catastrophes

Calamity ranges from 0 to 10 and rises through playtime, deaths, major progression steps, failed objectives, and provocation. Higher values strengthen enemies and hazards, shorten event cooldowns, and eventually remove positive events.

At calamity 10, the current stage starts a catastrophe. Catastrophes last 90 seconds, intensify at 30-second intervals, and reward 5 Fate Shards when survived.

## Fate Shards

Open the shared menu with `/trigger use`:

- **Enchant — 2 shards:** give every online non-spectator player one random item improvement; each player without an eligible item receives a Mending book.
- **Locate — 5 shards:** locate a Nether Fortress or Bastion Remnant while in the Nether.
- **Protection — 3 shards:** reduce calamity while no event or catastrophe is active.
- **Provoke — gain 2 shards:** increase calamity and immediately trigger the next threat; once per stage.
- **Team Travel — 10 shards:** search for a safe position in a nearby Nether Fortress or Bastion Remnant and move players who were in the Nether when the search began.

Team Travel uses a bounded datapack-only search with a maximum radius of 1536 blocks. It refunds all 10 shards if the search fails or is interrupted.

## Milestone Boons

Seven main-path advancements open a shared four-choice menu. The first valid click selects the reward for the team. Attribute rewards survive death, stopping the expedition, and defeating the Ender Dragon. Players who join later receive previously selected attribute rewards, but not past item rewards.

Use `/trigger fe_uninstall` to remove all permanent milestone attributes and reset the datapack state.

## Troubleshooting

If a trigger command is unavailable:

1. Run `/reload`.
2. Run `/datapack list enabled` and confirm that Fate Expedition is listed.
3. Check that `pack.mcmeta` is directly inside the installed ZIP or folder.
4. Confirm that the world or server allows the `/trigger` command.

Detailed gameplay and balance information is available in [docs/GAMEPLAY.md](docs/GAMEPLAY.md) and [docs/EVENT_BALANCE.md](docs/EVENT_BALANCE.md).

## Development

```powershell
powershell -ExecutionPolicy Bypass -File .\tools\validate.ps1
powershell -ExecutionPolicy Bypass -File .\tools\build-release.ps1
```

The release builder creates `dist/FateExpedition-v0.1.3.zip` with `pack.mcmeta` and `data` at the ZIP root.

## Credits

Thanks to [Tremila-Termina](https://github.com/Tremila-Termina) for helping test Fate Expedition.

The random enchantment and milestone boon systems were adapted from the open-source [Random Event Datapack](https://github.com/FredFive007/random-calamity-datapack).

## License

Released under the [MIT License](LICENSE).
