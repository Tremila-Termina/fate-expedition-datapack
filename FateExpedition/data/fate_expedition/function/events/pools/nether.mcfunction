execute if score #doom fe.data matches ..8 store result score #pool_roll fe.data run random value 1..8
execute if score #doom fe.data matches 9.. store result score #pool_roll fe.data run random value 1..5
execute if score #pool_roll fe.data matches 1 run scoreboard players set #event fe.data 5
execute if score #pool_roll fe.data matches 2 run scoreboard players set #event fe.data 6
execute if score #pool_roll fe.data matches 3 run scoreboard players set #event fe.data 7
execute if score #doom fe.data matches ..8 if score #pool_roll fe.data matches 4 run scoreboard players set #event fe.data 8
execute if score #doom fe.data matches ..8 if score #pool_roll fe.data matches 5 run scoreboard players set #event fe.data 21
execute if score #doom fe.data matches 9.. if score #pool_roll fe.data matches 4 run scoreboard players set #event fe.data 21
execute if score #doom fe.data matches 9.. if score #pool_roll fe.data matches 5 run scoreboard players set #event fe.data 22
execute if score #doom fe.data matches ..8 if score #pool_roll fe.data matches 6 run scoreboard players set #event fe.data 22
execute if score #pool_roll fe.data matches 7 run scoreboard players set #event fe.data 23
execute if score #pool_roll fe.data matches 8 run scoreboard players set #event fe.data 24
