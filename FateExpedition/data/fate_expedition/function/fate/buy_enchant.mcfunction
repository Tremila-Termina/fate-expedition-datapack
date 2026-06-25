scoreboard players set @s fe.menu 0
execute unless score #shards fe.data matches 2.. run tellraw @s {"text":"碎片不足，需要2枚。","color":"red"}
execute unless score #shards fe.data matches 2.. run return 0
scoreboard players remove #shards fe.data 2
execute as @a[gamemode=!spectator] at @s run function fate_expedition:events/enchanted_manual/player
playsound minecraft:block.enchantment_table.use master @a[gamemode=!spectator] ~ ~ ~ 1 1
title @a[gamemode=!spectator] actionbar {"text":"命运接受了2枚碎片：全队各获得一次随机附魔。","color":"light_purple"}
