scoreboard players set #travel_active fe.data 0
scoreboard players set #travel_ticks fe.data 0
scoreboard players set #travel_scan fe.data 0
kill @e[tag=fe_travel_ray]
kill @e[tag=fe_travel_destination]
tag @a remove fe_travel_party
tag @a remove fe_travel_requester
