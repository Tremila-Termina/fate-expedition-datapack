execute if score #mob_count fe.data matches 21.. run return 0
execute at @a[tag=fe_target,limit=1] run summon minecraft:wither_skeleton ~6 ~ ~
execute at @a[tag=fe_target,limit=1] run tag @e[type=minecraft:wither_skeleton,distance=..9,sort=nearest,limit=1,tag=!fe_event_mob] add fe_event_mob
scoreboard players add #mob_count fe.data 1
execute if score #mob_count fe.data matches ..23 if score #doom fe.data matches 6.. at @a[tag=fe_target,limit=1] run summon minecraft:wither_skeleton ~-6 ~ ~
execute if score #mob_count fe.data matches ..23 if score #doom fe.data matches 6.. at @a[tag=fe_target,limit=1] run tag @e[type=minecraft:wither_skeleton,distance=..9,sort=nearest,limit=1,tag=!fe_event_mob] add fe_event_mob
