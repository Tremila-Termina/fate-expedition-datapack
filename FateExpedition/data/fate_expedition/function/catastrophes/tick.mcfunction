scoreboard players add #cat_elapsed fe.data 1
scoreboard players remove #cat_time fe.data 1
execute if score #cat fe.data matches 1 if score #cat_elapsed fe.data matches 1 run function fate_expedition:events/meteor
execute if score #cat fe.data matches 1 if score #cat_elapsed fe.data matches 5 run function fate_expedition:events/wave_blood_moon
execute if score #cat fe.data matches 1 if score #cat_elapsed fe.data matches 10 run function fate_expedition:events/meteor
execute if score #cat fe.data matches 1 if score #cat_elapsed fe.data matches 20 run function fate_expedition:events/wave_blood_moon
execute if score #cat fe.data matches 1 if score #cat_elapsed fe.data matches 20 run function fate_expedition:events/meteor
execute if score #cat fe.data matches 1 if score #cat_elapsed fe.data matches 35 run function fate_expedition:events/wave_blood_moon
execute if score #cat fe.data matches 1 if score #cat_elapsed fe.data matches 35 run function fate_expedition:events/meteor
execute if score #cat fe.data matches 1 if score #cat_elapsed fe.data matches 50 run function fate_expedition:events/wave_blood_moon
execute if score #cat fe.data matches 1 if score #cat_elapsed fe.data matches 50 run function fate_expedition:events/meteor
execute if score #cat fe.data matches 2 if score #cat_elapsed fe.data matches 1 run function fate_expedition:events/furnace_pulse
execute if score #cat fe.data matches 2 if score #cat_elapsed fe.data matches 1 run function fate_expedition:events/piglin_reinforce
execute if score #cat fe.data matches 2 if score #cat_elapsed fe.data matches 11 run function fate_expedition:events/furnace_pulse
execute if score #cat fe.data matches 2 if score #cat_elapsed fe.data matches 21 run function fate_expedition:events/piglin_reinforce
execute if score #cat fe.data matches 2 if score #cat_elapsed fe.data matches 31 run function fate_expedition:events/furnace_pulse
execute if score #cat fe.data matches 2 if score #cat_elapsed fe.data matches 41 run function fate_expedition:events/piglin_reinforce
execute if score #cat fe.data matches 2 if score #cat_elapsed fe.data matches 51 run function fate_expedition:events/furnace_pulse
execute if score #cat fe.data matches 2 if score #cat_elapsed fe.data matches 61 run function fate_expedition:events/piglin_reinforce
execute if score #cat fe.data matches 3 if score #cat_elapsed fe.data matches 1 run function fate_expedition:events/silverfish_breach
execute if score #cat fe.data matches 3 if score #cat_elapsed fe.data matches 10 run execute as @a[gamemode=!spectator] at @s run tp @s ~ ~ ~ ~180 ~
execute if score #cat fe.data matches 3 if score #cat_elapsed fe.data matches 20 run function fate_expedition:events/silverfish_breach
execute if score #cat fe.data matches 3 if score #cat_elapsed fe.data matches 30 run execute as @a[gamemode=!spectator] at @s run tp @s ~ ~ ~ ~180 ~
execute if score #cat fe.data matches 3 if score #cat_elapsed fe.data matches 40 run function fate_expedition:events/silverfish_breach
execute if score #cat fe.data matches 3 if score #cat_elapsed fe.data matches 50 run execute as @a[gamemode=!spectator] at @s run tp @s ~ ~ ~ ~180 ~
execute if score #cat fe.data matches 4 if score #cat_elapsed fe.data matches 5 run function fate_expedition:events/void_push
execute if score #cat fe.data matches 4 if score #cat_elapsed fe.data matches 10 run function fate_expedition:events/void_push
execute if score #cat fe.data matches 4 if score #cat_elapsed fe.data matches 15 run function fate_expedition:events/void_push
execute if score #cat fe.data matches 4 if score #cat_elapsed fe.data matches 20 run function fate_expedition:events/void_push
execute if score #cat fe.data matches 4 if score #cat_elapsed fe.data matches 25 run function fate_expedition:events/void_push
execute if score #cat fe.data matches 4 if score #cat_elapsed fe.data matches 30 run function fate_expedition:events/void_push
execute if score #cat fe.data matches 4 if score #cat_elapsed fe.data matches 35 run function fate_expedition:events/void_push
execute if score #cat fe.data matches 4 if score #cat_elapsed fe.data matches 40 run function fate_expedition:events/void_push
execute if score #cat fe.data matches 4 if score #cat_elapsed fe.data matches 45 run function fate_expedition:events/void_push
execute if score #cat fe.data matches 4 if score #cat_elapsed fe.data matches 50 run function fate_expedition:events/void_push
execute if score #cat fe.data matches 4 if score #cat_elapsed fe.data matches 55 run function fate_expedition:events/void_push
execute if score #cat_time fe.data matches ..0 run function fate_expedition:catastrophes/finish
