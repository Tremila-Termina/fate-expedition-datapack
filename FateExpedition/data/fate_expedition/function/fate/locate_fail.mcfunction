execute if score #locate_reserved fe.data matches 1 run scoreboard players add #shards fe.data 5
execute if score #locate_reserved fe.data matches 1 run tellraw @a[tag=fe_locate_requester] {"text":"结构定位失败，已退还5枚碎片。","color":"red"}
scoreboard players set #locate_reserved fe.data 0
function fate_expedition:fate/locate_clear
