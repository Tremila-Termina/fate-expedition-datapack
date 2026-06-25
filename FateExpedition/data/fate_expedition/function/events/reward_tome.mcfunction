execute as @a[gamemode=!spectator] at @s run function fate_expedition:events/enchanted_manual/player
give @a[gamemode=!spectator] minecraft:lapis_lazuli 8
experience add @a[gamemode=!spectator] 5 levels
title @a[gamemode=!spectator] actionbar {"text":"古卷赐福强化了装备","color":"green"}
function fate_expedition:events/finish
