execute unless score #cat fe.data matches 0 run return 0
execute if score #travel_active fe.data matches 1 run function fate_expedition:fate/travel_fail
kill @e[tag=fe_event_mob]
kill @e[tag=fe_storm_marker]
kill @e[tag=fe_breath_marker]
scoreboard players operation #cat fe.data = #stage fe.data
scoreboard players set #cat_elapsed fe.data 0
scoreboard players set #cat_extra fe.data 0
scoreboard players set #cat_phase fe.data 1
scoreboard players set #cat_time fe.data 90
scoreboard players set #event fe.data 0
scoreboard players set #choice_menu fe.data 0
scoreboard players add #cats fe.data 1
tag @a remove fe_target
execute as @r[gamemode=!spectator] run tag @s add fe_target
execute if score #cat fe.data matches 1 run title @a[gamemode=!spectator] title {"text":"赤色天穹","color":"dark_red","bold":true}
execute if score #cat fe.data matches 1 run title @a[gamemode=!spectator] subtitle {"text":"五秒后，血月与流星降临","color":"red"}
execute if score #cat fe.data matches 2 at @a[tag=fe_target,limit=1] run summon minecraft:piglin_brute ~7 ~ ~
execute if score #cat fe.data matches 2 at @a[tag=fe_target,limit=1] run tag @e[type=minecraft:piglin_brute,distance=..9,sort=nearest,limit=1,tag=!fe_event_mob] add fe_event_mob
execute if score #cat fe.data matches 2 at @a[tag=fe_target,limit=1] run tag @e[type=minecraft:piglin_brute,distance=..9,sort=nearest,limit=1,tag=fe_event_mob,tag=!fe_piglin_captain] add fe_piglin_captain
execute if score #cat fe.data matches 2 run title @a[gamemode=!spectator] title {"text":"炼狱开门","color":"red","bold":true}
execute if score #cat fe.data matches 2 run title @a[gamemode=!spectator] subtitle {"text":"火焰与追兵正在集结","color":"gold"}
execute if score #cat fe.data matches 3 run effect give @a[gamemode=!spectator] minecraft:darkness 90 0 true
execute if score #cat fe.data matches 3 run effect give @a[gamemode=!spectator] minecraft:nausea 90 0 true
execute if score #cat fe.data matches 3 run title @a[gamemode=!spectator] title {"text":"破碎罗盘","color":"dark_purple","bold":true}
execute if score #cat fe.data matches 3 run title @a[gamemode=!spectator] subtitle {"text":"方向与地脉同时崩坏","color":"gray"}
execute if score #cat fe.data matches 4 run function fate_expedition:events/anger_endermen
execute if score #cat fe.data matches 4 run title @a[gamemode=!spectator] title {"text":"虚空审判","color":"dark_purple","bold":true}
execute if score #cat fe.data matches 4 run title @a[gamemode=!spectator] subtitle {"text":"远离岛缘，寻找掩体","color":"red"}
playsound minecraft:entity.wither.spawn hostile @a[gamemode=!spectator] ~ ~ ~ 0.7 0.7
