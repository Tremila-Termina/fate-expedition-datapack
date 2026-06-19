scoreboard players enable @a fe_start
scoreboard players enable @a fe_stop
scoreboard players enable @a use
scoreboard players enable @a fe_ping
scoreboard players enable @a fe_uninstall
execute if score #menu fe.data matches 1 run scoreboard players enable @a fe_use
execute if score #locate_menu fe.data matches 1 run scoreboard players enable @a fe_locate
execute if score #choice_menu fe.data matches 1 run scoreboard players enable @a fe_choice
execute if score #pending fe.boon matches 1.. run scoreboard players enable @a fe_boon
