execute if score #event fe.data matches 1 if score #deaths fe.data = #death_before fe.data run function fate_expedition:events/reward_blood_moon
execute if score #event fe.data matches 2 if score #deaths fe.data = #death_before fe.data run scoreboard players add #shards fe.data 2
execute if score #event fe.data matches 17 if score #deaths fe.data = #death_before fe.data run scoreboard players add #shards fe.data 2
execute if score #event fe.data matches 18 if score #deaths fe.data = #death_before fe.data run scoreboard players add #shards fe.data 2
execute if score #event fe.data matches 29 if score #deaths fe.data = #death_before fe.data run scoreboard players add #shards fe.data 2
execute if score #event fe.data matches 21 run scoreboard players add #shards fe.data 2
execute if score #event fe.data matches 22 run scoreboard players add #shards fe.data 2
execute if score #event fe.data matches 25 run scoreboard players add #shards fe.data 1
execute if score #event fe.data matches 26 run scoreboard players add #shards fe.data 2
execute if score #event fe.data matches 30 run scoreboard players add #shards fe.data 2
execute if score #event fe.data matches 9 run scoreboard players add #shards fe.data 1
execute if score #event fe.data matches 11 run experience add @a[gamemode=!spectator] 5 levels
execute if score #event fe.data matches 15 in minecraft:the_end as @e[type=minecraft:enderman,distance=..96] run data remove entity @s AngryAt
kill @e[tag=fe_event_mob]
kill @e[tag=fe_storm_marker]
kill @e[tag=fe_breath_marker]
tag @a remove fe_target
scoreboard players set #choice_menu fe.data 0
scoreboard players set #event fe.data 0
scoreboard players set #event_time fe.data 0
scoreboard players operation #was_chain fe.data = #chain fe.data
execute if score #fate fe.data matches 3 if score #was_chain fe.data matches 0 store result score #chain_roll fe.data run random value 1..4
execute if score #was_chain fe.data matches 0 if score #chain_roll fe.data matches 1 run scoreboard players set #chain fe.data 1
execute if score #was_chain fe.data matches 1 run scoreboard players set #chain fe.data 0
execute if score #was_chain fe.data matches 0 if score #chain_roll fe.data matches 1 run scoreboard players set #cooldown fe.data 0
execute if score #was_chain fe.data matches 1 run function fate_expedition:events/set_cooldown
execute if score #was_chain fe.data matches 0 unless score #chain_roll fe.data matches 1 run function fate_expedition:events/set_cooldown
scoreboard players set #chain_roll fe.data 0
