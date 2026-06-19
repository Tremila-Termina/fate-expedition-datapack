scoreboard players set #pending fe.boon 0
function fate_expedition:events/enchanted_manual
experience add @a 16 levels
give @a minecraft:lapis_lazuli 24
tellraw @a [{"text":"[里程碑] ","color":"aqua"},{"text":"团队奖励已生效。","color":"gold"}]
