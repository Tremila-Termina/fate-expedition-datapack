scoreboard players set @s fe.menu 0
execute if score #event fe.data matches 1.. run tellraw @s {"text":"事件进行中，无法护命。","color":"red"}
execute if score #event fe.data matches 1.. run return 0
execute if score #cat fe.data matches 1.. run tellraw @s {"text":"大灾变进行中，无法护命。","color":"red"}
execute if score #cat fe.data matches 1.. run return 0
execute unless score #shards fe.data matches 3.. run tellraw @s {"text":"碎片不足，需要3枚。","color":"red"}
execute unless score #shards fe.data matches 3.. run return 0
execute if score #fate fe.data matches 1 if score #doom fe.data matches ..2 run tellraw @s {"text":"丰饶纪元的灾厄不能低于2。","color":"red"}
execute if score #fate fe.data matches 1 if score #doom fe.data matches ..2 run return 0
execute unless score #fate fe.data matches 1 if score #doom fe.data matches ..0 run tellraw @s {"text":"灾厄已经为0。","color":"red"}
execute unless score #fate fe.data matches 1 if score #doom fe.data matches ..0 run return 0
scoreboard players remove #shards fe.data 3
scoreboard players remove #doom fe.data 1
tellraw @a [{"text":"[护命] ","color":"green","bold":true},{"selector":"@s","color":"aqua"},{"text":" 消耗3碎片，灾厄-1。","color":"gray"}]
