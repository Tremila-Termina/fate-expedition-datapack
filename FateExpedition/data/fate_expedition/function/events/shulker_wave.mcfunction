execute if score #mob_count fe.data matches 21.. run return 0
execute as @a[gamemode=!spectator] at @s run summon minecraft:shulker ~6 ~ ~
execute as @a[gamemode=!spectator] at @s run tag @e[type=minecraft:shulker,distance=..9,sort=nearest,limit=1,tag=!fe_event_mob] add fe_event_mob
