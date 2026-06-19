execute if score #forced_1 fe.data matches 1.. run scoreboard players operation #event fe.data = #forced_1 fe.data
execute if score #forced_1 fe.data matches 1.. run scoreboard players operation #forced_1 fe.data = #forced_2 fe.data
execute if score #forced_1 fe.data matches 1.. run scoreboard players set #forced_2 fe.data 0
execute unless score #event fe.data matches 1.. if score #stage fe.data matches 1 run function fate_expedition:events/pools/overworld
execute unless score #event fe.data matches 1.. if score #stage fe.data matches 2 run function fate_expedition:events/pools/nether
execute unless score #event fe.data matches 1.. if score #stage fe.data matches 3 run function fate_expedition:events/pools/stronghold
execute unless score #event fe.data matches 1.. if score #stage fe.data matches 4 run function fate_expedition:events/pools/end
execute if score #event fe.data = #last_event fe.data run scoreboard players add #event fe.data 1
execute if score #stage fe.data matches 1 if score #doom fe.data matches ..8 if score #event fe.data matches 5.. run scoreboard players set #event fe.data 1
execute if score #stage fe.data matches 1 if score #doom fe.data matches 9.. if score #event fe.data matches 4.. run scoreboard players set #event fe.data 1
execute if score #stage fe.data matches 2 if score #doom fe.data matches ..8 if score #event fe.data matches 9.. run scoreboard players set #event fe.data 5
execute if score #stage fe.data matches 2 if score #doom fe.data matches 9.. if score #event fe.data matches 8.. run scoreboard players set #event fe.data 5
execute if score #stage fe.data matches 3 if score #doom fe.data matches ..8 if score #event fe.data matches 13.. run scoreboard players set #event fe.data 9
execute if score #stage fe.data matches 3 if score #doom fe.data matches 9.. if score #event fe.data matches 12.. run scoreboard players set #event fe.data 9
execute if score #stage fe.data matches 4 if score #doom fe.data matches ..8 if score #event fe.data matches 17.. run scoreboard players set #event fe.data 13
execute if score #stage fe.data matches 4 if score #doom fe.data matches 9.. if score #event fe.data matches 16.. run scoreboard players set #event fe.data 13
function fate_expedition:events/start_selected
