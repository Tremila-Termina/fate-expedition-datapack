execute if score #forced_1 fe.data matches 1.. run scoreboard players operation #event fe.data = #forced_1 fe.data
execute if score #forced_1 fe.data matches 1.. run scoreboard players operation #forced_1 fe.data = #forced_2 fe.data
execute if score #forced_1 fe.data matches 1.. run scoreboard players set #forced_2 fe.data 0
execute unless score #event fe.data matches 1.. if score #stage fe.data matches 1 run function fate_expedition:events/pools/overworld
execute unless score #event fe.data matches 1.. if score #stage fe.data matches 2 run function fate_expedition:events/pools/nether
execute unless score #event fe.data matches 1.. if score #stage fe.data matches 3 run function fate_expedition:events/pools/stronghold
execute unless score #event fe.data matches 1.. if score #stage fe.data matches 4 run function fate_expedition:events/pools/end
function fate_expedition:events/avoid_history
function fate_expedition:events/avoid_history
function fate_expedition:events/avoid_history
function fate_expedition:events/start_selected
