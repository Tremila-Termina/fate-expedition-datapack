effect give @a[gamemode=!spectator] minecraft:regeneration 45 0 true
effect give @a[gamemode=!spectator] minecraft:absorption 90 1 true
execute unless score #fate fe.data matches 1 run give @a[gamemode=!spectator] minecraft:golden_carrot 8
execute if score #fate fe.data matches 1 run give @a[gamemode=!spectator] minecraft:golden_carrot 12
title @a[gamemode=!spectator] actionbar {"text":"生命回响治愈了远征队","color":"green"}
function fate_expedition:events/finish
