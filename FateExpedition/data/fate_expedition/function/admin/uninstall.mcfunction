function fate_expedition:boons/remove_modifiers
kill @e[tag=fe_event_mob]
kill @e[tag=fe_travel_ray]
kill @e[tag=fe_travel_destination]
kill @e[tag=fe_storm_marker]
kill @e[tag=fe_breath_marker]
tag @a remove fe_target
scoreboard objectives setdisplay sidebar
scoreboard objectives remove fe.data
scoreboard objectives remove fe.deaths
scoreboard objectives remove fe.prev
scoreboard objectives remove fe.boon_seen
scoreboard objectives remove fe.display
scoreboard objectives remove fe.boon
scoreboard objectives remove fe.attr
scoreboard objectives remove fe.enchant
scoreboard objectives remove fe.found
scoreboard objectives remove fe.pick
scoreboard objectives remove fe.random
scoreboard objectives remove fe.timer
scoreboard objectives remove fe_start
scoreboard objectives remove fe_stop
scoreboard objectives remove use
scoreboard objectives remove fe_use
scoreboard objectives remove fe_locate
scoreboard objectives remove fe_travel
scoreboard objectives remove fe.menu
scoreboard objectives remove fe_choice
scoreboard objectives remove fe_boon
scoreboard objectives remove fe_ping
scoreboard objectives remove fe_uninstall
team remove fe.line.stage
team remove fe.line.fate
team remove fe.line.doom
team remove fe.line.shard
team remove fe.line.event
team remove fe.line.timer
team remove fe.line.task
team remove fe.line.dragon
tellraw @a [{"text":"[命运远征] 已卸载；永久属性已移除。","color":"red"}]
