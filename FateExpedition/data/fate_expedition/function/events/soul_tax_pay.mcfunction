execute unless score #choice_menu fe.data matches 1 run return 0
execute unless score #event fe.data matches 7 run return 0
execute store result score @s fe.attr run clear @s minecraft:gold_ingot 0
execute unless score @s fe.attr matches 8.. run tellraw @s {"text":"你没有8金锭，选择未生效。","color":"red"}
execute unless score @s fe.attr matches 8.. run return 0
clear @s minecraft:gold_ingot 8
scoreboard players set #choice_menu fe.data 0
execute if score #fate fe.data matches 1 if score #doom fe.data matches 3.. run scoreboard players remove #doom fe.data 1
execute unless score #fate fe.data matches 1 if score #doom fe.data matches 1.. run scoreboard players remove #doom fe.data 1
tellraw @a [{"selector":"@s","color":"gold"},{"text":" 支付了灵魂税，灾厄-1。","color":"gray"}]
scoreboard players set #event_time fe.data 0
