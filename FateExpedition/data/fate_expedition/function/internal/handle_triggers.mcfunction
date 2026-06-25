execute as @a[scores={fe_ping=1..}] run function fate_expedition:admin/ping
scoreboard players set @a[scores={fe_ping=1..}] fe_ping 0
execute as @a[scores={fe_start=1..}] if score #running fe.data matches 0 run function fate_expedition:admin/start
scoreboard players set @a[scores={fe_start=1..}] fe_start 0
execute as @a[scores={fe_stop=1..}] if score #running fe.data matches 1 run function fate_expedition:admin/stop
scoreboard players set @a[scores={fe_stop=1..}] fe_stop 0
execute as @a[scores={use=1..}] at @s if score #running fe.data matches 1 run function fate_expedition:fate/show_menu
scoreboard players set @a[scores={use=1..}] use 0
execute as @a[scores={fe_use=1}] at @s run function fate_expedition:fate/use_option_enchant
execute as @a[scores={fe_use=2}] at @s run function fate_expedition:fate/show_locate
execute as @a[scores={fe_use=3}] at @s run function fate_expedition:fate/use_option_ward
execute as @a[scores={fe_use=4}] at @s run function fate_expedition:fate/use_option_wager
execute as @a[scores={fe_use=5}] at @s run function fate_expedition:fate/show_travel
scoreboard players set @a[scores={fe_use=1..}] fe_use 0
execute as @a[scores={fe_locate=1}] at @s run function fate_expedition:fate/use_locate_fortress
execute as @a[scores={fe_locate=2}] at @s run function fate_expedition:fate/use_locate_bastion
scoreboard players set @a[scores={fe_locate=1..}] fe_locate 0
execute as @a[scores={fe_travel=1}] at @s run function fate_expedition:fate/use_travel_fortress
execute as @a[scores={fe_travel=2}] at @s run function fate_expedition:fate/use_travel_bastion
scoreboard players set @a[scores={fe_travel=1..}] fe_travel 0
execute as @a[scores={fe_choice=1}] run function fate_expedition:events/soul_tax_pay
execute as @a[scores={fe_choice=2}] run function fate_expedition:events/soul_tax_fight
scoreboard players set @a[scores={fe_choice=1..}] fe_choice 0
execute as @a[scores={fe_boon=1}] run function fate_expedition:boons/select/option_1
execute as @a[scores={fe_boon=2}] run function fate_expedition:boons/select/option_2
execute as @a[scores={fe_boon=3}] run function fate_expedition:boons/select/option_3
execute as @a[scores={fe_boon=4}] run function fate_expedition:boons/select/option_4
scoreboard players set @a[scores={fe_boon=1..}] fe_boon 0
execute as @a[scores={fe_uninstall=1..}] run function fate_expedition:admin/uninstall
