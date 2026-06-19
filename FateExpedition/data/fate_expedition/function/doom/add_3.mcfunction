execute if score #cat fe.data matches 1.. run scoreboard players add #pending_doom fe.data 3
execute if score #cat fe.data matches 0 run scoreboard players add #doom fe.data 3
execute if score #doom fe.data matches 11.. run scoreboard players set #doom fe.data 10
execute if score #cat fe.data matches 0 if score #doom fe.data matches 10 run function fate_expedition:catastrophes/start
