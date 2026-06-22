effect give @a[gamemode=!spectator] minecraft:strength 60 0 true
effect give @a[gamemode=!spectator] minecraft:regeneration 30 0 true
execute unless score #fate fe.data matches 1 run give @a[gamemode=!spectator] minecraft:arrow 16
execute if score #fate fe.data matches 1 run give @a[gamemode=!spectator] minecraft:arrow 24
title @a[gamemode=!spectator] actionbar {"text":"战火赐福强化了远征队","color":"gold"}
function fate_expedition:events/finish
