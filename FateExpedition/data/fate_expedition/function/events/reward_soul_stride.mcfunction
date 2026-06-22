effect give @a[gamemode=!spectator] minecraft:speed 90 1 true
effect give @a[gamemode=!spectator] minecraft:jump_boost 90 0 true
execute unless score #fate fe.data matches 1 run give @a[gamemode=!spectator] minecraft:ender_pearl 4
execute if score #fate fe.data matches 1 run give @a[gamemode=!spectator] minecraft:ender_pearl 6
title @a[gamemode=!spectator] actionbar {"text":"灵魂疾行加快了脚步","color":"aqua"}
function fate_expedition:events/finish
