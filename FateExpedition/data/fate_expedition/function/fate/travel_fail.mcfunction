execute if score #travel_reserved fe.data matches 1 run scoreboard players add #shards fe.data 10
execute if score #travel_reserved fe.data matches 1 run tellraw @a[tag=fe_travel_party] {"text":"未找到可确认的安全落点，已退还10枚碎片。","color":"red"}
scoreboard players set #travel_reserved fe.data 0
function fate_expedition:fate/travel_clear
