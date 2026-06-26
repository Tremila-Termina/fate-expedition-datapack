scoreboard players set #running fe.data 1
scoreboard players set #stage fe.data 1
scoreboard players set #doom fe.data 0
scoreboard players set #shards fe.data 3
scoreboard players set #cooldown fe.data 5
scoreboard players set #event fe.data 0
scoreboard players set #last_event fe.data 0
scoreboard players set #history_1 fe.data 0
scoreboard players set #history_2 fe.data 0
scoreboard players set #history_3 fe.data 0
scoreboard players set #event_time fe.data 0
scoreboard players set #event_elapsed fe.data 0
scoreboard players set #chain fe.data 0
scoreboard players set #cat fe.data 0
scoreboard players set #cat_time fe.data 0
scoreboard players set #cat_extra fe.data 0
scoreboard players set #pending_doom fe.data 0
scoreboard players set #doom_clock fe.data 0
scoreboard players set #elapsed fe.data 0
scoreboard players set #stage_time fe.data 0
scoreboard players set #task_done fe.data 0
scoreboard players set #task_failed fe.data 0
scoreboard players set #blaze fe.data 0
scoreboard players set #returned fe.data 0
scoreboard players set #crystal_seen fe.data 0
scoreboard players set #dragon_seen fe.data 0
scoreboard players set #dragon_phase fe.data 1
scoreboard players set #final_timer fe.data 0
scoreboard players set #final_pulse fe.data 0
scoreboard players set #events fe.data 0
scoreboard players set #cats fe.data 0
scoreboard players set #deaths fe.data 0
scoreboard players set #subtick fe.data 0
scoreboard players set #wager_1 fe.data 0
scoreboard players set #wager_2 fe.data 0
scoreboard players set #wager_3 fe.data 0
scoreboard players set #wager_4 fe.data 0
scoreboard players set #travel_active fe.data 0
scoreboard players set #travel_reserved fe.data 0
scoreboard players set #travel_phase fe.data 0
scoreboard players set #travel_xi fe.data 0
scoreboard players set #travel_yi fe.data 0
scoreboard players set #travel_zi fe.data 0
scoreboard players set #use_gui_active fe.data 0
scoreboard players set #use_gui_mode fe.data 0
scoreboard players set #use_gui_cooldown fe.data 0
scoreboard players set #use_gui_nether fe.data 0
scoreboard players set #locate_active fe.data 0
scoreboard players set #locate_reserved fe.data 0
scoreboard players set #locate_ticks fe.data 0
scoreboard players set #locate_scan fe.data 0
scoreboard players set #locate_type fe.data 0
scoreboard players set @a fe.menu 0
kill @e[tag=fe_locate_ray]
kill @e[tag=fe_locate_destination]
kill @e[tag=fe_travel_anchor]
kill @e[tag=fe_travel_probe]
kill @e[type=minecraft:chest_minecart,tag=fe_use_gui]
kill @e[type=minecraft:marker,tag=fe_use_gui_anchor]
tag @a remove fe_use_gui_user
tag @a remove fe_locate_requester
execute store result score #fate fe.data run random value 1..4
execute if score #fate fe.data matches 1 run scoreboard players set #doom fe.data 2
execute if score #fate fe.data matches 4 run scoreboard players set #deadline fe.data 5400
execute as @a run scoreboard players operation @s fe.prev = @s fe.deaths
scoreboard objectives setdisplay sidebar fe.display
scoreboard objectives modify fe.display displayname {"text":"命运远征","color":"light_purple","bold":true}
function fate_expedition:ui/announce_fate
function fate_expedition:ui/update_sidebar
tellraw @a [{"text":"[命运远征] ","color":"dark_purple","bold":true},{"text":"挑战开始：荒野求生。","color":"red"}]
tellraw @a [{"text":"[碎片菜单]","color":"aqua","bold":true,"underlined":true,"click_event":{"action":"run_command","command":"/trigger use"},"hover_event":{"action":"show_text","value":{"text":"点击打开命运碎片菜单"}}}]
