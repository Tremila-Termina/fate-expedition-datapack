scoreboard players operation #last_event fe.data = #event fe.data
scoreboard players set #event_elapsed fe.data 0
scoreboard players set #event_success fe.data 0
scoreboard players operation #death_before fe.data = #deaths fe.data
scoreboard players add #events fe.data 1
execute if score #event fe.data matches 1 run scoreboard players set #event_time fe.data 60
execute if score #event fe.data matches 1 run tellraw @a [{"text":"[事件] ","color":"dark_red","bold":true},{"text":"血月狩猎：5秒后第一波来袭，坚持60秒！","color":"red"}]
execute if score #event fe.data matches 2 run scoreboard players set #event_time fe.data 35
execute if score #event fe.data matches 2 run tellraw @a [{"text":"[事件] ","color":"gold","bold":true},{"text":"流星灾雨：留意脚下的3秒预警！","color":"red"}]
execute if score #event fe.data matches 3 run scoreboard players set #event_time fe.data 50
execute if score #event fe.data matches 3 run effect give @a[gamemode=!spectator] minecraft:hunger 50 1 true
execute if score #event fe.data matches 3 run effect give @a[gamemode=!spectator] minecraft:weakness 50 0 true
execute if score #event fe.data matches 3 run tellraw @a [{"text":"[事件] ","color":"dark_green","bold":true},{"text":"饥馑迷雾笼罩了远征队。","color":"green"}]
execute if score #event fe.data matches 4 run function fate_expedition:events/reward_supply
execute if score #event fe.data matches 5 run scoreboard players set #event_time fe.data 45
execute if score #event fe.data matches 5 run tellraw @a [{"text":"[事件] ","color":"red","bold":true},{"text":"熔炉之心：火焰正在脚下蔓延！","color":"gold"}]
execute if score #event fe.data matches 6 run scoreboard players set #event_time fe.data 75
execute if score #event fe.data matches 6 run function fate_expedition:events/piglin_hunt_start
execute if score #event fe.data matches 7 run scoreboard players set #event_time fe.data 20
execute if score #event fe.data matches 7 run scoreboard players set #choice_menu fe.data 1
execute if score #event fe.data matches 7 run scoreboard players set #soul_fight fe.data 0
execute if score #event fe.data matches 7 run function fate_expedition:events/soul_tax_menu
execute if score #event fe.data matches 8 run function fate_expedition:events/reward_gilded
execute if score #event fe.data matches 9 run scoreboard players set #event_time fe.data 60
execute if score #event fe.data matches 9 run tag @a remove fe_target
execute if score #event fe.data matches 9 as @r[gamemode=!spectator] run tag @s add fe_target
execute if score #event fe.data matches 9 run tellraw @a [{"text":"[事件] ","color":"dark_purple","bold":true},{"text":"末影追猎：一名队员已被标记60秒。","color":"light_purple"}]
execute if score #event fe.data matches 10 run scoreboard players set #event_time fe.data 45
execute if score #event fe.data matches 10 run effect give @a[gamemode=!spectator] minecraft:darkness 45 0 true
execute if score #event fe.data matches 10 run effect give @a[gamemode=!spectator] minecraft:nausea 45 0 true
execute if score #event fe.data matches 10 run tellraw @a [{"text":"[事件] ","color":"dark_gray","bold":true},{"text":"迷途回响：方向感正在崩解。","color":"gray"}]
execute if score #event fe.data matches 11 run scoreboard players set #event_time fe.data 30
execute if score #event fe.data matches 11 run tellraw @a [{"text":"[事件] ","color":"dark_green","bold":true},{"text":"地脉虫群：附近石层正在虫蚀。","color":"green"}]
execute if score #event fe.data matches 12 run function fate_expedition:events/reward_prophecy
execute if score #event fe.data matches 13 run scoreboard players set #event_time fe.data 40
execute if score #event fe.data matches 13 run tellraw @a [{"text":"[事件] ","color":"aqua","bold":true},{"text":"虚空烈风：5秒后风暴将把你推离中央岛！","color":"dark_purple"}]
execute if score #event fe.data matches 14 run scoreboard players set #event_time fe.data 60
execute if score #event fe.data matches 14 run tellraw @a [{"text":"[事件] ","color":"light_purple","bold":true},{"text":"水晶共振：剩余水晶将周期性造成伤害。","color":"red"}]
execute if score #event fe.data matches 15 run scoreboard players set #event_time fe.data 45
execute if score #event fe.data matches 15 run function fate_expedition:events/anger_endermen
execute if score #event fe.data matches 16 run function fate_expedition:events/reward_last_light
