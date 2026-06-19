scoreboard players set @s fe.random 0
$execute if items entity @s $(slot) #fate_expedition:enchanted_manual/targets run function fate_expedition:events/enchanted_manual/test_slot {slot:"$(slot)"}
execute if score @s fe.random matches 1 run scoreboard players add @s fe.enchant 1
