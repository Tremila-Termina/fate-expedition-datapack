effect give @a[gamemode=!spectator] minecraft:speed 90 0 true
effect give @a[gamemode=!spectator] minecraft:night_vision 90 0 true
execute unless score #fate fe.data matches 1 run give @a[gamemode=!spectator] minecraft:ender_eye 2
execute if score #fate fe.data matches 1 run give @a[gamemode=!spectator] minecraft:ender_eye 3
title @a[gamemode=!spectator] actionbar {"text":"猎眼直觉指明了道路","color":"aqua"}
function fate_expedition:events/finish
