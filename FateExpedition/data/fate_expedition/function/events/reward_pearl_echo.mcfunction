effect give @a[gamemode=!spectator] minecraft:resistance 45 0 true
execute unless score #fate fe.data matches 1 run give @a[gamemode=!spectator] minecraft:ender_pearl 4
execute unless score #fate fe.data matches 1 run give @a[gamemode=!spectator] minecraft:golden_carrot 8
execute if score #fate fe.data matches 1 run give @a[gamemode=!spectator] minecraft:ender_pearl 6
execute if score #fate fe.data matches 1 run give @a[gamemode=!spectator] minecraft:golden_carrot 12
title @a[gamemode=!spectator] actionbar {"text":"珍珠回响带来了补给","color":"green"}
function fate_expedition:events/finish
