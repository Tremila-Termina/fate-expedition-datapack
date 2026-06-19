$function fate_expedition:events/enchanted_manual/test_slot {slot:"$(slot)"}
execute if score @s fe.random matches 1 run scoreboard players remove @s fe.pick 1
$execute if score @s fe.random matches 1 if score @s fe.pick matches 0 run function fate_expedition:events/enchanted_manual/enchant_slot {slot:"$(slot)"}
execute if score @s fe.random matches 1 if score @s fe.pick matches 0 run scoreboard players set @s fe.found 1
