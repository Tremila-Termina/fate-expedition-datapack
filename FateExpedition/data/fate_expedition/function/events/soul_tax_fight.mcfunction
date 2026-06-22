execute unless score #choice_menu fe.data matches 1 run return 0
execute unless score #event fe.data matches 7 run return 0
scoreboard players set #choice_menu fe.data 0
scoreboard players set #soul_fight fe.data 1
scoreboard players set #event_time fe.data 60
execute as @a[gamemode=!spectator] at @s run summon minecraft:wither_skeleton ~3 ~ ~
execute as @a[gamemode=!spectator] at @s run tag @e[type=minecraft:wither_skeleton,distance=..6,sort=nearest,limit=1,tag=!fe_event_mob] add fe_event_mob
execute as @a[gamemode=!spectator] at @s run tag @e[type=minecraft:wither_skeleton,distance=..6,sort=nearest,limit=1,tag=fe_event_mob,tag=!fe_soul_enemy] add fe_soul_enemy
execute as @a[gamemode=!spectator] at @s run summon minecraft:wither_skeleton ~-3 ~ ~
execute as @a[gamemode=!spectator] at @s run tag @e[type=minecraft:wither_skeleton,distance=..6,sort=nearest,limit=1,tag=!fe_event_mob] add fe_event_mob
execute as @a[gamemode=!spectator] at @s run tag @e[type=minecraft:wither_skeleton,distance=..6,sort=nearest,limit=1,tag=fe_event_mob,tag=!fe_soul_enemy] add fe_soul_enemy
tellraw @a {"text":"灵魂税契：全队选择反抗！","color":"red","bold":true}
