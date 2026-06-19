scoreboard players set #running fe.data 0
scoreboard players set #event fe.data 0
scoreboard players set #cat fe.data 0
scoreboard players set #menu fe.data 0
scoreboard players set #locate_menu fe.data 0
scoreboard players set #choice_menu fe.data 0
kill @e[tag=fe_event_mob]
tag @a remove fe_target
scoreboard objectives setdisplay sidebar
tellraw @a [{"text":"[命运远征] ","color":"dark_purple","bold":true},{"text":"挑战已停止；永久里程碑增益保留。","color":"yellow"}]
