execute unless entity @a[tag=fe_travel_requester] run function fate_expedition:fate/travel_fail
execute unless score #travel_active fe.data matches 1 run return 0
execute as @a[tag=fe_travel_requester] at @s unless dimension minecraft:the_nether run function fate_expedition:fate/travel_fail
execute unless score #travel_active fe.data matches 1 run return 0
scoreboard players add #travel_ticks fe.data 1
execute if score #travel_phase fe.data matches 1 run scoreboard players add #travel_scan fe.data 4
execute if score #travel_phase fe.data matches 1 as @e[tag=fe_travel_ray] at @s run tp @s ^ ^ ^4
execute if score #travel_phase fe.data matches 1 as @e[tag=fe_travel_ray] at @s run function fate_expedition:fate/travel_scan_ray
execute if score #travel_phase fe.data matches 1 if entity @e[tag=fe_travel_anchor,limit=1] run function fate_expedition:fate/travel_start_local_scan
execute if score #travel_phase fe.data matches 2 run function fate_expedition:fate/travel_probe_batch
execute if entity @e[tag=fe_travel_destination,limit=1] run function fate_expedition:fate/travel_success
execute if score #travel_ticks fe.data matches 600.. run function fate_expedition:fate/travel_fail
execute if score #travel_scan fe.data matches 1537.. run function fate_expedition:fate/travel_fail
execute if score #travel_phase fe.data matches 1 run title @a[tag=fe_travel_party] actionbar [{"text":"结构搜索：","color":"gold"},{"score":{"name":"#travel_scan","objective":"fe.data"}},{"text":" / 1536格","color":"gray"}]
execute if score #travel_phase fe.data matches 2 run title @a[tag=fe_travel_party] actionbar [{"text":"落点搜索：","color":"gold"},{"score":{"name":"#travel_ticks","objective":"fe.data"}},{"text":"t","color":"gray"}]
