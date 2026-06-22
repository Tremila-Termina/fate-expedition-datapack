scoreboard players add #cat_elapsed fe.data 1
scoreboard players remove #cat_time fe.data 1
execute if score #cat_elapsed fe.data matches 31 run scoreboard players set #cat_phase fe.data 2
execute if score #cat_elapsed fe.data matches 31 run title @a[gamemode=!spectator] title {"text":"第二阶段","color":"gold"}
execute if score #cat_elapsed fe.data matches 61 run scoreboard players set #cat_phase fe.data 3
execute if score #cat_elapsed fe.data matches 61 run title @a[gamemode=!spectator] title {"text":"最终攻势","color":"red","bold":true}
execute if score #cat fe.data matches 1 run function fate_expedition:catastrophes/tick_overworld
execute if score #cat fe.data matches 2 run function fate_expedition:catastrophes/tick_nether
execute if score #cat fe.data matches 3 run function fate_expedition:catastrophes/tick_stronghold
execute if score #cat fe.data matches 4 run function fate_expedition:catastrophes/tick_end
execute if score #cat_time fe.data matches ..0 run function fate_expedition:catastrophes/finish
