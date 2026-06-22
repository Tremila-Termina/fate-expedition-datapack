scoreboard players enable @a fe_start
scoreboard players enable @a fe_stop
scoreboard players enable @a use
scoreboard players enable @a fe_ping
scoreboard players enable @a fe_uninstall
scoreboard players enable @a[scores={fe.menu=1}] fe_use
scoreboard players enable @a[scores={fe.menu=2}] fe_locate
scoreboard players enable @a[scores={fe.menu=3}] fe_travel
execute if score #choice_menu fe.data matches 1 run scoreboard players enable @a fe_choice
execute if score #pending fe.boon matches 1.. run scoreboard players enable @a fe_boon
