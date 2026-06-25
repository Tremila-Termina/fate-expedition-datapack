scoreboard players set #running fe.data 0
scoreboard players set #event fe.data 0
scoreboard players set #cat fe.data 0
execute if score #travel_reserved fe.data matches 1 run scoreboard players add #shards fe.data 10
scoreboard players set #travel_reserved fe.data 0
scoreboard players set #travel_active fe.data 0
scoreboard players set #travel_phase fe.data 0
scoreboard players set #travel_xi fe.data 0
scoreboard players set #travel_yi fe.data 0
scoreboard players set #travel_zi fe.data 0
scoreboard players set #use_gui_active fe.data 0
scoreboard players set #use_gui_mode fe.data 0
scoreboard players set #use_gui_cooldown fe.data 0
scoreboard players set #use_gui_nether fe.data 0
execute if score #locate_reserved fe.data matches 1 run scoreboard players add #shards fe.data 5
scoreboard players set #locate_reserved fe.data 0
scoreboard players set #locate_active fe.data 0
scoreboard players set @a fe.menu 0
scoreboard players set #choice_menu fe.data 0
kill @e[tag=fe_event_mob]
kill @e[tag=fe_storm_marker]
kill @e[tag=fe_breath_marker]
kill @e[tag=fe_travel_ray]
kill @e[tag=fe_travel_anchor]
kill @e[tag=fe_travel_probe]
kill @e[tag=fe_travel_destination]
kill @e[tag=fe_locate_ray]
kill @e[tag=fe_locate_destination]
kill @e[type=minecraft:chest_minecart,tag=fe_use_gui]
kill @e[type=minecraft:marker,tag=fe_use_gui_anchor]
tag @a remove fe_travel_party
tag @a remove fe_travel_requester
tag @a remove fe_use_gui_user
tag @a remove fe_locate_requester
tag @a remove fe_target
scoreboard objectives setdisplay sidebar
tellraw @a [{"text":"[命运远征] ","color":"dark_purple","bold":true},{"text":"挑战已停止；永久里程碑增益保留。","color":"yellow"}]
