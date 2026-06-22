scoreboard players set #history_hit fe.data 0
execute if score #event fe.data = #history_1 fe.data run scoreboard players set #history_hit fe.data 1
execute if score #event fe.data = #history_2 fe.data run scoreboard players set #history_hit fe.data 1
execute if score #event fe.data = #history_3 fe.data run scoreboard players set #history_hit fe.data 1
execute if score #history_hit fe.data matches 1 run function fate_expedition:events/advance_candidate
