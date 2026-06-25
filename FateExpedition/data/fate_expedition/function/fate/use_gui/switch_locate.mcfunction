execute unless score #use_gui_active fe.data matches 1 run function fate_expedition:fate/use_gui/open_main
execute unless entity @s[tag=fe_use_gui_user] run function fate_expedition:fate/use_gui/open_main
scoreboard players set #use_gui_mode fe.data 2
function fate_expedition:fate/use_gui/render_locate
