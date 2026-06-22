execute if score #mob_count fe.data matches 21.. run return 0
execute as @a[gamemode=!spectator] at @s run summon minecraft:vindicator ~6 ~ ~
execute as @a[gamemode=!spectator] at @s run tag @e[type=minecraft:vindicator,distance=..9,sort=nearest,limit=1,tag=!fe_event_mob] add fe_event_mob
execute as @a[gamemode=!spectator] run scoreboard players add #mob_count fe.data 1
execute if score #mob_count fe.data matches ..20 if score #doom fe.data matches 6.. as @a[gamemode=!spectator] at @s run summon minecraft:vindicator ~-6 ~ ~
execute if score #mob_count fe.data matches ..20 if score #doom fe.data matches 6.. as @a[gamemode=!spectator] at @s run tag @e[type=minecraft:vindicator,distance=..9,sort=nearest,limit=1,tag=!fe_event_mob] add fe_event_mob
