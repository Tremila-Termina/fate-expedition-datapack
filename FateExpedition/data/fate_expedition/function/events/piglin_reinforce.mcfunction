execute if score #mob_count fe.data matches 21.. run return 0
execute at @a[tag=fe_target,limit=1] run summon minecraft:piglin ~3 ~ ~
execute at @a[tag=fe_target,limit=1] run tag @e[type=minecraft:piglin,distance=..6,sort=nearest,limit=1,tag=!fe_event_mob] add fe_event_mob
execute at @a[tag=fe_target,limit=1] run summon minecraft:piglin ~-3 ~ ~
execute at @a[tag=fe_target,limit=1] run tag @e[type=minecraft:piglin,distance=..6,sort=nearest,limit=1,tag=!fe_event_mob] add fe_event_mob
