execute if score #event fe.data matches 1 if score #event_elapsed fe.data matches 5 run function fate_expedition:events/wave_blood_moon
execute if score #event fe.data matches 1 if score #event_elapsed fe.data matches 20 run function fate_expedition:events/wave_blood_moon
execute if score #event fe.data matches 1 if score #event_elapsed fe.data matches 35 run function fate_expedition:events/wave_blood_moon
execute if score #event fe.data matches 1 if score #event_elapsed fe.data matches 50 run function fate_expedition:events/wave_blood_moon
execute if score #event fe.data matches 2 if score #event_elapsed fe.data matches 1 run function fate_expedition:events/meteor
execute if score #event fe.data matches 2 if score #event_elapsed fe.data matches 9 run function fate_expedition:events/meteor
execute if score #event fe.data matches 2 if score #event_elapsed fe.data matches 17 run function fate_expedition:events/meteor
execute if score #event fe.data matches 2 if score #event_elapsed fe.data matches 25 run function fate_expedition:events/meteor
execute if score #event fe.data matches 2 if score #event_elapsed fe.data matches 33 run function fate_expedition:events/meteor
execute if score #event fe.data matches 3 if score #doom fe.data matches 6.. if score #event_elapsed fe.data matches 10 run effect give @a[gamemode=!spectator] minecraft:darkness 5 0 true
execute if score #event fe.data matches 3 if score #doom fe.data matches 6.. if score #event_elapsed fe.data matches 25 run effect give @a[gamemode=!spectator] minecraft:darkness 5 0 true
execute if score #event fe.data matches 3 if score #doom fe.data matches 6.. if score #event_elapsed fe.data matches 40 run effect give @a[gamemode=!spectator] minecraft:darkness 5 0 true
execute if score #event fe.data matches 5 if score #event_elapsed fe.data matches 1 run function fate_expedition:events/furnace_pulse
execute if score #event fe.data matches 5 if score #event_elapsed fe.data matches 11 run function fate_expedition:events/furnace_pulse
execute if score #event fe.data matches 5 if score #event_elapsed fe.data matches 21 run function fate_expedition:events/furnace_pulse
execute if score #event fe.data matches 5 if score #event_elapsed fe.data matches 31 run function fate_expedition:events/furnace_pulse
execute if score #event fe.data matches 5 if score #event_elapsed fe.data matches 41 run function fate_expedition:events/furnace_pulse
execute if score #event fe.data matches 6 if score #event_elapsed fe.data matches 20 run function fate_expedition:events/piglin_reinforce
execute if score #event fe.data matches 6 if score #event_elapsed fe.data matches 40 run function fate_expedition:events/piglin_reinforce
execute if score #event fe.data matches 6 if score #event_elapsed fe.data matches 60 run function fate_expedition:events/piglin_reinforce
execute if score #event fe.data matches 6 if score #event_elapsed fe.data matches 2.. unless entity @e[tag=fe_piglin_captain] run function fate_expedition:events/piglin_hunt_success
execute if score #event fe.data matches 7 if score #event_time fe.data matches ..0 if score #soul_fight fe.data matches 0 run function fate_expedition:events/soul_tax_fight
execute if score #event fe.data matches 7 if score #soul_fight fe.data matches 1 unless entity @e[tag=fe_soul_enemy] run function fate_expedition:events/soul_tax_success
execute if score #event fe.data matches 9 if score #event_elapsed fe.data matches 1 run function fate_expedition:events/ender_hunt_wave
execute if score #event fe.data matches 9 if score #event_elapsed fe.data matches 16 run function fate_expedition:events/ender_hunt_wave
execute if score #event fe.data matches 9 if score #event_elapsed fe.data matches 31 run function fate_expedition:events/ender_hunt_wave
execute if score #event fe.data matches 9 if score #event_elapsed fe.data matches 46 run function fate_expedition:events/ender_hunt_wave
execute if score #event fe.data matches 10 if score #event_elapsed fe.data matches 10 run execute as @a[gamemode=!spectator] at @s run tp @s ~ ~ ~ ~180 ~
execute if score #event fe.data matches 10 if score #event_elapsed fe.data matches 20 run execute as @a[gamemode=!spectator] at @s run tp @s ~ ~ ~ ~180 ~
execute if score #event fe.data matches 10 if score #event_elapsed fe.data matches 30 run execute as @a[gamemode=!spectator] at @s run tp @s ~ ~ ~ ~180 ~
execute if score #event fe.data matches 10 if score #event_elapsed fe.data matches 40 run execute as @a[gamemode=!spectator] at @s run tp @s ~ ~ ~ ~180 ~
execute if score #event fe.data matches 11 if score #event_elapsed fe.data matches 1 run function fate_expedition:events/silverfish_breach
execute if score #event fe.data matches 13 if score #event_elapsed fe.data matches 5 run function fate_expedition:events/void_push
execute if score #event fe.data matches 13 if score #event_elapsed fe.data matches 10 run function fate_expedition:events/void_push
execute if score #event fe.data matches 13 if score #event_elapsed fe.data matches 15 run function fate_expedition:events/void_push
execute if score #event fe.data matches 13 if score #event_elapsed fe.data matches 20 run function fate_expedition:events/void_push
execute if score #event fe.data matches 13 if score #event_elapsed fe.data matches 25 run function fate_expedition:events/void_push
execute if score #event fe.data matches 13 if score #event_elapsed fe.data matches 30 run function fate_expedition:events/void_push
execute if score #event fe.data matches 13 if score #event_elapsed fe.data matches 35 run function fate_expedition:events/void_push
execute if score #event fe.data matches 14 if score #event_elapsed fe.data matches 5 run function fate_expedition:events/crystal_resonance
execute if score #event fe.data matches 14 if score #event_elapsed fe.data matches 10 run function fate_expedition:events/crystal_resonance
execute if score #event fe.data matches 14 if score #event_elapsed fe.data matches 15 run function fate_expedition:events/crystal_resonance
execute if score #event fe.data matches 14 if score #event_elapsed fe.data matches 20 run function fate_expedition:events/crystal_resonance
execute if score #event fe.data matches 14 if score #event_elapsed fe.data matches 25 run function fate_expedition:events/crystal_resonance
execute if score #event fe.data matches 14 if score #event_elapsed fe.data matches 30 run function fate_expedition:events/crystal_resonance
execute if score #event fe.data matches 14 if score #event_elapsed fe.data matches 35 run function fate_expedition:events/crystal_resonance
execute if score #event fe.data matches 14 if score #event_elapsed fe.data matches 40 run function fate_expedition:events/crystal_resonance
execute if score #event fe.data matches 14 if score #event_elapsed fe.data matches 45 run function fate_expedition:events/crystal_resonance
execute if score #event fe.data matches 14 if score #event_elapsed fe.data matches 50 run function fate_expedition:events/crystal_resonance
execute if score #event fe.data matches 14 if score #event_elapsed fe.data matches 55 run function fate_expedition:events/crystal_resonance
