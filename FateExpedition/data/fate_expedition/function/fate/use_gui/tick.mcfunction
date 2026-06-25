execute unless score #running fe.data matches 1 run function fate_expedition:fate/use_gui/close
execute unless score #use_gui_active fe.data matches 1 run return 0
execute unless entity @a[tag=fe_use_gui_user,limit=1] run function fate_expedition:fate/use_gui/close
execute unless score #use_gui_active fe.data matches 1 run return 0
execute unless entity @e[type=minecraft:chest_minecart,tag=fe_use_gui,limit=1] run function fate_expedition:fate/use_gui/close
execute unless score #use_gui_active fe.data matches 1 run return 0
execute unless entity @e[type=minecraft:marker,tag=fe_use_gui_anchor,limit=1] run function fate_expedition:fate/use_gui/close
execute unless score #use_gui_active fe.data matches 1 run return 0
execute as @e[type=minecraft:marker,tag=fe_use_gui_anchor,limit=1] at @s run tp @e[type=minecraft:chest_minecart,tag=fe_use_gui,limit=1,sort=nearest] ~ ~ ~
execute if score #use_gui_cooldown fe.data matches 1.. run scoreboard players remove #use_gui_cooldown fe.data 1
function fate_expedition:fate/use_gui/clear_player_items
execute if score #use_gui_mode fe.data matches 1 run function fate_expedition:fate/use_gui/main_tick
execute if score #use_gui_mode fe.data matches 2 run function fate_expedition:fate/use_gui/locate_tick
execute if score #use_gui_mode fe.data matches 3 run function fate_expedition:fate/use_gui/travel_tick
