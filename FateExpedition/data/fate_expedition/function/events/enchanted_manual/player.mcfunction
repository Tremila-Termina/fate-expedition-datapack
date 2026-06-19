scoreboard players set @s fe.enchant 0
scoreboard players set @s fe.found 0
function fate_expedition:events/enchanted_manual/count_inventory
execute if score @s fe.enchant matches 1.. store result score @s fe.pick run random value 1..1000000
execute if score @s fe.enchant matches 1.. run scoreboard players operation @s fe.pick %= @s fe.enchant
execute if score @s fe.enchant matches 1.. run scoreboard players add @s fe.pick 1
execute if score @s fe.enchant matches 1.. run function fate_expedition:events/enchanted_manual/scan_inventory
execute unless score @s fe.found matches 1 run give @s minecraft:enchanted_book[stored_enchantments={"minecraft:mending":1}] 1
