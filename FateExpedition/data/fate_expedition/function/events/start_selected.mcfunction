scoreboard players operation #last_event fe.data = #event fe.data
scoreboard players operation #history_3 fe.data = #history_2 fe.data
scoreboard players operation #history_2 fe.data = #history_1 fe.data
scoreboard players operation #history_1 fe.data = #event fe.data
scoreboard players set #event_elapsed fe.data 0
scoreboard players set #event_success fe.data 0
scoreboard players operation #death_before fe.data = #deaths fe.data
scoreboard players add #events fe.data 1
execute if score #event fe.data matches 1 run scoreboard players set #event_time fe.data 60
execute if score #event fe.data matches 1 run title @a[gamemode=!spectator] title {"text":"血月狩猎","color":"dark_red"}
execute if score #event fe.data matches 1 run title @a[gamemode=!spectator] subtitle {"text":"五秒后第一波来袭","color":"red"}
execute if score #event fe.data matches 2 run scoreboard players set #event_time fe.data 35
execute if score #event fe.data matches 2 run title @a[gamemode=!spectator] title {"text":"流星灾雨","color":"gold"}
execute if score #event fe.data matches 2 run title @a[gamemode=!spectator] subtitle {"text":"留意落点预警","color":"red"}
execute if score #event fe.data matches 3 run scoreboard players set #event_time fe.data 50
execute if score #event fe.data matches 3 run effect give @a[gamemode=!spectator] minecraft:hunger 50 1 true
execute if score #event fe.data matches 3 run effect give @a[gamemode=!spectator] minecraft:weakness 50 0 true
execute if score #event fe.data matches 3 run title @a[gamemode=!spectator] title {"text":"饥馑迷雾","color":"dark_green"}
execute if score #event fe.data matches 4 run function fate_expedition:events/reward_supply
execute if score #event fe.data matches 5 run scoreboard players set #event_time fe.data 45
execute if score #event fe.data matches 5 run title @a[gamemode=!spectator] title {"text":"熔炉之心","color":"red"}
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
execute if score #event fe.data matches 9 run title @a[gamemode=!spectator] title {"text":"末影追猎","color":"dark_purple"}
execute if score #event fe.data matches 10 run scoreboard players set #event_time fe.data 45
execute if score #event fe.data matches 10 run effect give @a[gamemode=!spectator] minecraft:darkness 45 0 true
execute if score #event fe.data matches 10 run effect give @a[gamemode=!spectator] minecraft:nausea 45 0 true
execute if score #event fe.data matches 10 run title @a[gamemode=!spectator] title {"text":"迷途回响","color":"gray"}
execute if score #event fe.data matches 11 run scoreboard players set #event_time fe.data 30
execute if score #event fe.data matches 11 run title @a[gamemode=!spectator] title {"text":"地脉虫群","color":"dark_green"}
execute if score #event fe.data matches 12 run function fate_expedition:events/reward_prophecy
execute if score #event fe.data matches 13 run scoreboard players set #event_time fe.data 40
execute if score #event fe.data matches 13 run title @a[gamemode=!spectator] title {"text":"虚空烈风","color":"aqua"}
execute if score #event fe.data matches 13 run title @a[gamemode=!spectator] subtitle {"text":"五秒后烈风来袭","color":"dark_purple"}
execute if score #event fe.data matches 14 run scoreboard players set #event_time fe.data 60
execute if score #event fe.data matches 14 run title @a[gamemode=!spectator] title {"text":"水晶共振","color":"light_purple"}
execute if score #event fe.data matches 15 run scoreboard players set #event_time fe.data 45
execute if score #event fe.data matches 15 run function fate_expedition:events/anger_endermen
execute if score #event fe.data matches 15 run title @a[gamemode=!spectator] title {"text":"末影人暴动","color":"dark_purple"}
execute if score #event fe.data matches 16 run function fate_expedition:events/reward_last_light
execute if score #event fe.data matches 17 run scoreboard players set #event_time fe.data 45
execute if score #event fe.data matches 17 run title @a[gamemode=!spectator] title {"text":"雷暴前线","color":"aqua"}
execute if score #event fe.data matches 18 run scoreboard players set #event_time fe.data 50
execute if score #event fe.data matches 18 run title @a[gamemode=!spectator] title {"text":"苦力怕围城","color":"dark_green"}
execute if score #event fe.data matches 19 run function fate_expedition:events/reward_miner
execute if score #event fe.data matches 20 run function fate_expedition:events/reward_life
execute if score #event fe.data matches 21 run scoreboard players set #event_time fe.data 60
execute if score #event fe.data matches 21 run title @a[gamemode=!spectator] title {"text":"烈焰围城","color":"gold"}
execute if score #event fe.data matches 22 run scoreboard players set #event_time fe.data 60
execute if score #event fe.data matches 22 run tag @a remove fe_target
execute if score #event fe.data matches 22 as @r[gamemode=!spectator] run tag @s add fe_target
execute if score #event fe.data matches 22 run title @a[gamemode=!spectator] title {"text":"凋零巡猎","color":"dark_gray"}
execute if score #event fe.data matches 23 run function fate_expedition:events/reward_soul_stride
execute if score #event fe.data matches 24 run function fate_expedition:events/reward_warfire
execute if score #event fe.data matches 25 run scoreboard players set #event_time fe.data 50
execute if score #event fe.data matches 25 run title @a[gamemode=!spectator] title {"text":"毒蛛侵入","color":"dark_green"}
execute if score #event fe.data matches 26 run scoreboard players set #event_time fe.data 60
execute if score #event fe.data matches 26 run title @a[gamemode=!spectator] title {"text":"门廊守卫","color":"dark_red"}
execute if score #event fe.data matches 27 run function fate_expedition:events/reward_eye_instinct
execute if score #event fe.data matches 28 run function fate_expedition:events/reward_tome
execute if score #event fe.data matches 29 run scoreboard players set #event_time fe.data 45
execute if score #event fe.data matches 29 run title @a[gamemode=!spectator] title {"text":"龙息花园","color":"light_purple"}
execute if score #event fe.data matches 30 run scoreboard players set #event_time fe.data 50
execute if score #event fe.data matches 30 run title @a[gamemode=!spectator] title {"text":"潜影裂隙","color":"dark_purple"}
execute if score #event fe.data matches 31 run function fate_expedition:events/reward_stardust
execute if score #event fe.data matches 32 run function fate_expedition:events/reward_pearl_echo
