execute unless entity @a[tag=fe_locate_requester,limit=1] run function fate_expedition:fate/locate_fail
execute unless score #locate_active fe.data matches 1 run return 0
execute as @a[tag=fe_locate_requester,limit=1] at @s unless dimension minecraft:the_nether run function fate_expedition:fate/locate_fail
execute unless score #locate_active fe.data matches 1 run return 0
scoreboard players add #locate_ticks fe.data 1
scoreboard players add #locate_scan fe.data 4
execute as @e[tag=fe_locate_ray] at @s run tp @s ^ ^ ^4
execute as @e[tag=fe_locate_ray] at @s run function fate_expedition:fate/locate_scan_ray
execute if entity @e[tag=fe_locate_destination,limit=1] run function fate_expedition:fate/locate_success
execute if score #locate_ticks fe.data matches 600.. run function fate_expedition:fate/locate_fail
execute if score #locate_scan fe.data matches 1537.. run function fate_expedition:fate/locate_fail
title @a[tag=fe_locate_requester] actionbar [{"text":"定位搜索：","color":"gold"},{"score":{"name":"#locate_scan","objective":"fe.data"}},{"text":" / 1536格","color":"gray"}]
