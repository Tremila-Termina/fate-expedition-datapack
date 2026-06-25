scoreboard players set #locate_active fe.data 0
scoreboard players set #locate_ticks fe.data 0
scoreboard players set #locate_scan fe.data 0
scoreboard players set #locate_type fe.data 0
kill @e[tag=fe_locate_ray]
kill @e[tag=fe_locate_destination]
tag @a remove fe_locate_requester
