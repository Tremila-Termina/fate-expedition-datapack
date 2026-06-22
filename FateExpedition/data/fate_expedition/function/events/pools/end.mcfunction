execute if score #doom fe.data matches ..8 store result score #pool_roll fe.data run random value 1..8
execute if score #doom fe.data matches 9.. store result score #pool_roll fe.data run random value 1..5
execute if score #pool_roll fe.data matches 1 run scoreboard players set #event fe.data 13
execute if score #pool_roll fe.data matches 2 run scoreboard players set #event fe.data 14
execute if score #pool_roll fe.data matches 3 run scoreboard players set #event fe.data 15
execute if score #doom fe.data matches ..8 if score #pool_roll fe.data matches 4 run scoreboard players set #event fe.data 16
execute if score #doom fe.data matches ..8 if score #pool_roll fe.data matches 5 run scoreboard players set #event fe.data 29
execute if score #doom fe.data matches 9.. if score #pool_roll fe.data matches 4 run scoreboard players set #event fe.data 29
execute if score #doom fe.data matches 9.. if score #pool_roll fe.data matches 5 run scoreboard players set #event fe.data 30
execute if score #doom fe.data matches ..8 if score #pool_roll fe.data matches 6 run scoreboard players set #event fe.data 30
execute if score #pool_roll fe.data matches 7 run scoreboard players set #event fe.data 31
execute if score #pool_roll fe.data matches 8 run scoreboard players set #event fe.data 32
