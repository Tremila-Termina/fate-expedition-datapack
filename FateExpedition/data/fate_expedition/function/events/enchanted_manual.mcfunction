title @a actionbar [{"text":"随机附魔：","color":"light_purple","bold":true},{"text":"一件合格物品获得下一条附魔。","color":"gold"}]
execute as @a at @s run function fate_expedition:events/enchanted_manual/player
playsound minecraft:block.enchantment_table.use master @a ~ ~ ~ 1 1
