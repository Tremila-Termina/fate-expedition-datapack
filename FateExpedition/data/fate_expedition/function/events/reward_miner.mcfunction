effect give @a[gamemode=!spectator] minecraft:haste 75 1 true
effect give @a[gamemode=!spectator] minecraft:night_vision 75 0 true
execute unless score #fate fe.data matches 1 run give @a[gamemode=!spectator] minecraft:iron_ingot 8
execute unless score #fate fe.data matches 1 run give @a[gamemode=!spectator] minecraft:coal 16
execute if score #fate fe.data matches 1 run give @a[gamemode=!spectator] minecraft:iron_ingot 12
execute if score #fate fe.data matches 1 run give @a[gamemode=!spectator] minecraft:coal 24
title @a[gamemode=!spectator] actionbar {"text":"矿脉赐福已经降临","color":"green"}
function fate_expedition:events/finish
