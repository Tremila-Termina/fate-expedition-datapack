execute if score #mob_count fe.data matches 21.. run return 0
execute as @a[gamemode=!spectator] at @s run summon minecraft:blaze ~6 ~2 ~
execute as @a[gamemode=!spectator] at @s run tag @e[type=minecraft:blaze,distance=..9,sort=nearest,limit=1,tag=!fe_event_mob] add fe_event_mob
execute as @a[gamemode=!spectator] run scoreboard players add #mob_count fe.data 1
execute if score #mob_count fe.data matches ..20 if score #doom fe.data matches 6.. as @a[gamemode=!spectator] at @s run summon minecraft:wither_skeleton ~-6 ~ ~
execute if score #mob_count fe.data matches ..20 if score #doom fe.data matches 6.. as @a[gamemode=!spectator] at @s run tag @e[type=minecraft:wither_skeleton,distance=..9,sort=nearest,limit=1,tag=!fe_event_mob] add fe_event_mob
