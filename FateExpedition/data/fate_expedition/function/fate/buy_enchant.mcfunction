execute unless score #menu fe.data matches 1 run return 0
execute unless score #shards fe.data matches 2.. run tellraw @s {"text":"碎片不足，需要2枚。","color":"red"}
execute unless score #shards fe.data matches 2.. run return 0
scoreboard players remove #shards fe.data 2
scoreboard players set #menu fe.data 0
execute at @s run function fate_expedition:events/enchanted_manual/player
playsound minecraft:block.enchantment_table.use master @s ~ ~ ~ 1 1
tellraw @s {"text":"命运接受了2枚碎片。","color":"light_purple"}
