scoreboard players set #use_gui_click fe.data 1
execute as @a[tag=fe_use_gui_user,limit=1] at @s run function fate_expedition:fate/travel_fortress
scoreboard players set #use_gui_mode fe.data 1
