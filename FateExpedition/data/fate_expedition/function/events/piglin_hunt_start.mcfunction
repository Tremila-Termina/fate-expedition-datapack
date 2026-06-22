tag @a remove fe_target
execute as @r[gamemode=!spectator] run tag @s add fe_target
execute at @a[tag=fe_target,limit=1] run summon minecraft:piglin_brute ~5 ~ ~
execute at @a[tag=fe_target,limit=1] run tag @e[type=minecraft:piglin_brute,distance=..7,sort=nearest,limit=1,tag=!fe_event_mob] add fe_event_mob
execute at @a[tag=fe_target,limit=1] run tag @e[type=minecraft:piglin_brute,distance=..7,sort=nearest,limit=1,tag=fe_event_mob,tag=!fe_piglin_captain] add fe_piglin_captain
function fate_expedition:events/piglin_reinforce
title @a[gamemode=!spectator] title {"text":"猪灵追猎","color":"gold"}
title @a[gamemode=!spectator] subtitle {"text":"击杀蛮兵队长","color":"red"}
