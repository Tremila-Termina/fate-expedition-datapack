execute if score #mob_count fe.data matches 13.. run return 0
execute as @a[gamemode=!spectator] at @s run summon minecraft:zombie ~3 ~ ~
execute as @a[gamemode=!spectator] at @s run tag @e[type=minecraft:zombie,distance=..5,sort=nearest,limit=1,tag=!fe_event_mob] add fe_event_mob
execute as @a[gamemode=!spectator] at @s run summon minecraft:skeleton ~-3 ~ ~
execute as @a[gamemode=!spectator] at @s run tag @e[type=minecraft:skeleton,distance=..5,sort=nearest,limit=1,tag=!fe_event_mob] add fe_event_mob
execute if score #doom fe.data matches 6.. as @a[gamemode=!spectator] at @s run summon minecraft:creeper ~ ~ ~4
execute if score #doom fe.data matches 6.. as @a[gamemode=!spectator] at @s run tag @e[type=minecraft:creeper,distance=..6,sort=nearest,limit=1,tag=!fe_event_mob] add fe_event_mob
execute if score #fate fe.data matches 2 if score #event_elapsed fe.data matches 5 at @r[gamemode=!spectator] run summon minecraft:husk ~5 ~ ~ {PersistenceRequired:1b,CustomName:'{"text":"血月队长"}'}
execute if score #fate fe.data matches 2 if score #event_elapsed fe.data matches 5 run tag @e[type=minecraft:husk,sort=nearest,limit=1,tag=!fe_event_mob] add fe_event_mob
