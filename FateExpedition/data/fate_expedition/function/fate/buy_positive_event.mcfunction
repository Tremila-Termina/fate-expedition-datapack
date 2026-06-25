execute if score #event fe.data matches 1.. run tellraw @s {"text":"事件进行中，无法触发福兆。","color":"red"}
execute if score #event fe.data matches 1.. run return 0
execute if score #cat fe.data matches 1.. run tellraw @s {"text":"大灾变进行中，无法触发福兆。","color":"red"}
execute if score #cat fe.data matches 1.. run return 0
execute unless score #shards fe.data matches 3.. run tellraw @s {"text":"碎片不足，需要3枚。","color":"red"}
execute unless score #shards fe.data matches 3.. run return 0
scoreboard players remove #shards fe.data 3
scoreboard players set #event fe.data 0
scoreboard players set #event_time fe.data 0
execute store result score #random_positive fe.data run random value 1..12
execute if score #random_positive fe.data matches 1 run function fate_expedition:events/reward_supply
execute if score #random_positive fe.data matches 2 run function fate_expedition:events/reward_gilded
execute if score #random_positive fe.data matches 3 run function fate_expedition:events/reward_prophecy
execute if score #random_positive fe.data matches 4 run function fate_expedition:events/reward_last_light
execute if score #random_positive fe.data matches 5 run function fate_expedition:events/reward_miner
execute if score #random_positive fe.data matches 6 run function fate_expedition:events/reward_life
execute if score #random_positive fe.data matches 7 run function fate_expedition:events/reward_soul_stride
execute if score #random_positive fe.data matches 8 run function fate_expedition:events/reward_warfire
execute if score #random_positive fe.data matches 9 run function fate_expedition:events/reward_eye_instinct
execute if score #random_positive fe.data matches 10 run function fate_expedition:events/reward_tome
execute if score #random_positive fe.data matches 11 run function fate_expedition:events/reward_stardust
execute if score #random_positive fe.data matches 12 run function fate_expedition:events/reward_pearl_echo
scoreboard players set #random_positive fe.data 0
