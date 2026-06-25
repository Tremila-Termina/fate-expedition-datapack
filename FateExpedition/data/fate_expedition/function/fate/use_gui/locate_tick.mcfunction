scoreboard players set #use_gui_click fe.data 0
execute if score #use_gui_click fe.data matches 0 if score #use_gui_cooldown fe.data matches ..0 unless data entity @e[type=minecraft:chest_minecart,tag=fe_use_gui,limit=1] Items[{Slot:11b}] run function fate_expedition:fate/use_gui/locate_click_fortress
execute if score #use_gui_click fe.data matches 0 if score #use_gui_cooldown fe.data matches ..0 unless data entity @e[type=minecraft:chest_minecart,tag=fe_use_gui,limit=1] Items[{Slot:13b}] run function fate_expedition:fate/use_gui/locate_click_bastion
execute if score #use_gui_click fe.data matches 0 if score #use_gui_cooldown fe.data matches ..0 unless data entity @e[type=minecraft:chest_minecart,tag=fe_use_gui,limit=1] Items[{Slot:15b}] run function fate_expedition:fate/use_gui/locate_click_back
execute if score #use_gui_click fe.data matches 0 if score #use_gui_cooldown fe.data matches ..0 unless data entity @e[type=minecraft:chest_minecart,tag=fe_use_gui,limit=1] Items[{Slot:22b}] run function fate_expedition:fate/use_gui/locate_click_close
execute if score #use_gui_click fe.data matches 1 run scoreboard players set #use_gui_cooldown fe.data 6
execute if score #use_gui_mode fe.data matches 2 run function fate_expedition:fate/use_gui/render_locate
