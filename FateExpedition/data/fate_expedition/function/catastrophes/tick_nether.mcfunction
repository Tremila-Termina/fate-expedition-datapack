execute if score #cat_elapsed fe.data matches 5 run function fate_expedition:events/furnace_pulse
execute if score #cat_elapsed fe.data matches 15 run function fate_expedition:events/piglin_reinforce
execute if score #cat_elapsed fe.data matches 25 run function fate_expedition:events/furnace_pulse
execute if score #cat_elapsed fe.data matches 35 run function fate_expedition:events/blaze_wave
execute if score #cat_elapsed fe.data matches 42 run function fate_expedition:events/furnace_pulse
execute if score #cat_elapsed fe.data matches 50 run function fate_expedition:events/piglin_reinforce
execute if score #cat_elapsed fe.data matches 58 run function fate_expedition:events/blaze_wave
execute if score #cat_elapsed fe.data matches 65 run function fate_expedition:events/furnace_pulse
execute if score #cat_elapsed fe.data matches 72 run function fate_expedition:events/piglin_reinforce
execute if score #cat_elapsed fe.data matches 78 at @a[tag=fe_target,limit=1] run summon minecraft:piglin_brute ~-7 ~ ~
execute if score #cat_elapsed fe.data matches 78 at @a[tag=fe_target,limit=1] run tag @e[type=minecraft:piglin_brute,distance=..9,sort=nearest,limit=1,tag=!fe_event_mob] add fe_event_mob
execute if score #cat_elapsed fe.data matches 82 run function fate_expedition:events/blaze_wave
execute if score #cat_elapsed fe.data matches 87 run function fate_expedition:events/furnace_pulse
execute if score #cat_elapsed fe.data matches 95 run function fate_expedition:events/blaze_wave
execute if score #cat_elapsed fe.data matches 100 run function fate_expedition:events/piglin_reinforce
execute if score #cat_elapsed fe.data matches 105 run function fate_expedition:events/furnace_pulse
execute if score #cat_elapsed fe.data matches 110 run function fate_expedition:events/blaze_wave
execute if score #cat_elapsed fe.data matches 115 run function fate_expedition:events/piglin_reinforce
