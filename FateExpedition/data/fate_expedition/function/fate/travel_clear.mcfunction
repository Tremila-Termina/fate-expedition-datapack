scoreboard players set #travel_active fe.data 0
scoreboard players set #travel_ticks fe.data 0
scoreboard players set #travel_scan fe.data 0
scoreboard players set #travel_phase fe.data 0
scoreboard players set #travel_xi fe.data 0
scoreboard players set #travel_yi fe.data 0
scoreboard players set #travel_zi fe.data 0
kill @e[tag=fe_travel_ray]
kill @e[tag=fe_travel_anchor]
kill @e[tag=fe_travel_probe]
kill @e[tag=fe_travel_destination]
tag @a remove fe_travel_party
tag @a remove fe_travel_requester
