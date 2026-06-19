execute unless score #stage fe.data matches 4 run return 0
scoreboard players set #crystals fe.data 0
execute in minecraft:the_end as @e[type=minecraft:end_crystal] run scoreboard players add #crystals fe.data 1
execute if score #crystals fe.data matches 1.. run scoreboard players set #crystal_seen fe.data 1
execute if score #crystal_seen fe.data matches 1 if score #crystals fe.data matches 0 if score #task_done fe.data matches 0 if score #task_failed fe.data matches 0 run function fate_expedition:dragon/crystals_complete
execute if score #task_done fe.data matches 0 if score #task_failed fe.data matches 0 if score #stage_time fe.data matches 180.. run function fate_expedition:dragon/crystals_fail
execute in minecraft:the_end if entity @e[type=minecraft:ender_dragon,limit=1] run scoreboard players set #dragon_seen fe.data 1
execute in minecraft:the_end if entity @e[type=minecraft:ender_dragon,limit=1] store result score #dragon_hp fe.data run data get entity @e[type=minecraft:ender_dragon,limit=1] Health 1
execute if score #dragon_phase fe.data matches 1 if score #dragon_hp fe.data matches ..133 run function fate_expedition:dragon/phase_2
execute if score #dragon_phase fe.data matches 2 if score #dragon_hp fe.data matches ..66 run function fate_expedition:dragon/phase_3
execute if score #dragon_phase fe.data matches 2 if score #crystals fe.data matches 1.. in minecraft:the_end run effect give @e[type=minecraft:ender_dragon,limit=1] minecraft:resistance 2 0 true
execute if score #dragon_phase fe.data matches 3 if score #final_timer fe.data matches 1.. run scoreboard players remove #final_timer fe.data 1
execute if score #dragon_phase fe.data matches 3 if score #final_timer fe.data matches ..0 run scoreboard players add #final_pulse fe.data 1
execute if score #dragon_phase fe.data matches 3 if score #final_timer fe.data matches ..0 if score #final_pulse fe.data matches 20.. run function fate_expedition:dragon/final_pulse
execute if score #dragon_seen fe.data matches 1 in minecraft:the_end unless entity @e[type=minecraft:ender_dragon,limit=1] run function fate_expedition:dragon/victory
