scoreboard players set #use_gui_click fe.data 0
scoreboard players set #use_gui_nether fe.data 0
execute as @a[tag=fe_use_gui_user,limit=1] at @s if dimension minecraft:the_nether run scoreboard players set #use_gui_nether fe.data 1
execute if score #use_gui_click fe.data matches 0 if score #use_gui_cooldown fe.data matches ..0 unless data entity @e[type=minecraft:chest_minecart,tag=fe_use_gui,limit=1] Items[{Slot:10b}] run function fate_expedition:fate/use_gui/main_click_enchant
execute if score #use_gui_click fe.data matches 0 if score #use_gui_cooldown fe.data matches ..0 if score #use_gui_nether fe.data matches 1 unless data entity @e[type=minecraft:chest_minecart,tag=fe_use_gui,limit=1] Items[{Slot:11b}] run function fate_expedition:fate/use_gui/main_click_locate
execute if score #use_gui_click fe.data matches 0 if score #use_gui_cooldown fe.data matches ..0 unless data entity @e[type=minecraft:chest_minecart,tag=fe_use_gui,limit=1] Items[{Slot:12b}] run function fate_expedition:fate/use_gui/main_click_ward
execute if score #use_gui_click fe.data matches 0 if score #use_gui_cooldown fe.data matches ..0 unless data entity @e[type=minecraft:chest_minecart,tag=fe_use_gui,limit=1] Items[{Slot:13b}] run function fate_expedition:fate/use_gui/main_click_wager
execute if score #use_gui_click fe.data matches 0 if score #use_gui_cooldown fe.data matches ..0 if score #use_gui_nether fe.data matches 1 unless data entity @e[type=minecraft:chest_minecart,tag=fe_use_gui,limit=1] Items[{Slot:14b}] run function fate_expedition:fate/use_gui/main_click_travel
execute if score #use_gui_click fe.data matches 0 if score #use_gui_cooldown fe.data matches ..0 unless data entity @e[type=minecraft:chest_minecart,tag=fe_use_gui,limit=1] Items[{Slot:15b}] run function fate_expedition:fate/use_gui/main_click_cleanse
execute if score #use_gui_click fe.data matches 0 if score #use_gui_cooldown fe.data matches ..0 unless data entity @e[type=minecraft:chest_minecart,tag=fe_use_gui,limit=1] Items[{Slot:16b}] run function fate_expedition:fate/use_gui/main_click_positive
execute if score #use_gui_click fe.data matches 0 if score #use_gui_cooldown fe.data matches ..0 unless data entity @e[type=minecraft:chest_minecart,tag=fe_use_gui,limit=1] Items[{Slot:22b}] run function fate_expedition:fate/use_gui/main_click_close
execute if score #use_gui_click fe.data matches 1 run scoreboard players set #use_gui_cooldown fe.data 6
execute if score #use_gui_mode fe.data matches 1 if score #use_gui_nether fe.data matches 1 run function fate_expedition:fate/use_gui/render_main
execute if score #use_gui_mode fe.data matches 1 unless score #use_gui_nether fe.data matches 1 run function fate_expedition:fate/use_gui/render_main_overworld
