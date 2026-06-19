execute unless score #locate_menu fe.data matches 1 run return 0
execute unless score #shards fe.data matches 5.. run tellraw @s {"text":"共享碎片已不足5枚。","color":"red"}
execute unless score #shards fe.data matches 5.. run return 0
execute unless dimension minecraft:the_nether run tellraw @s {"text":"你已离开下界，未扣费。","color":"red"}
execute unless dimension minecraft:the_nether run return 0
execute store success score @s fe.attr run locate structure minecraft:bastion_remnant
execute unless score @s fe.attr matches 1 run tellraw @s {"text":"定位失败，未扣费。","color":"red"}
execute unless score @s fe.attr matches 1 run return 0
scoreboard players remove #shards fe.data 5
scoreboard players set #locate_menu fe.data 0
