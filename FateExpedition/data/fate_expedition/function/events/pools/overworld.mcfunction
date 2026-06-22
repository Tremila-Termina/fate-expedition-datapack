execute if score #doom fe.data matches ..8 store result score #pool_roll fe.data run random value 1..8
execute if score #doom fe.data matches 9.. store result score #pool_roll fe.data run random value 1..5
execute if score #pool_roll fe.data matches 1 run scoreboard players set #event fe.data 1
execute if score #pool_roll fe.data matches 2 run scoreboard players set #event fe.data 2
execute if score #pool_roll fe.data matches 3 run scoreboard players set #event fe.data 3
execute if score #doom fe.data matches ..8 if score #pool_roll fe.data matches 4 run scoreboard players set #event fe.data 4
execute if score #doom fe.data matches ..8 if score #pool_roll fe.data matches 5 run scoreboard players set #event fe.data 17
execute if score #doom fe.data matches 9.. if score #pool_roll fe.data matches 4 run scoreboard players set #event fe.data 17
execute if score #doom fe.data matches 9.. if score #pool_roll fe.data matches 5 run scoreboard players set #event fe.data 18
execute if score #doom fe.data matches ..8 if score #pool_roll fe.data matches 6 run scoreboard players set #event fe.data 18
execute if score #pool_roll fe.data matches 7 run scoreboard players set #event fe.data 19
execute if score #pool_roll fe.data matches 8 run scoreboard players set #event fe.data 20
