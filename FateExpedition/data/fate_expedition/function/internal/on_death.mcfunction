scoreboard players add #deaths fe.data 1
execute if score #shards fe.data matches 1.. run scoreboard players remove #shards fe.data 1
execute if score #cooldown fe.data matches 11.. run scoreboard players remove #cooldown fe.data 10
execute if score #cooldown fe.data matches ..10 run scoreboard players set #cooldown fe.data 0
execute if score #cat fe.data matches 1.. if score #cat_extra fe.data matches ..29 run scoreboard players add #cat_time fe.data 10
execute if score #cat fe.data matches 1.. if score #cat_extra fe.data matches ..29 run scoreboard players add #cat_extra fe.data 10
function fate_expedition:doom/add_1
tellraw @a [{"text":"[死亡代价] ","color":"dark_red","bold":true},{"selector":"@s","color":"red"},{"text":" 倒下：灾厄+1，碎片-1。","color":"gray"}]
