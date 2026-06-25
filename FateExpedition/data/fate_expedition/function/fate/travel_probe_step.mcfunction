execute unless score #travel_active fe.data matches 1 run return 0
execute unless score #travel_phase fe.data matches 2 run return 0
execute if entity @e[tag=fe_travel_destination,limit=1] run return 0
execute unless entity @e[tag=fe_travel_probe,limit=1] run function fate_expedition:fate/travel_fail
execute unless score #travel_active fe.data matches 1 run return 0
execute as @e[tag=fe_travel_probe,limit=1] at @s run function fate_expedition:fate/travel_probe_check
execute unless score #travel_active fe.data matches 1 run return 0
execute if entity @e[tag=fe_travel_destination,limit=1] run return 0
scoreboard players add #travel_xi fe.data 1
execute if score #travel_xi fe.data matches ..20 as @e[tag=fe_travel_probe,limit=1] at @s run tp @s ~1 ~ ~
execute if score #travel_xi fe.data matches ..20 run return 0
scoreboard players set #travel_xi fe.data 0
scoreboard players add #travel_zi fe.data 1
execute as @e[tag=fe_travel_probe,limit=1] at @s run tp @s ~-20 ~ ~
execute if score #travel_zi fe.data matches ..20 as @e[tag=fe_travel_probe,limit=1] at @s run tp @s ~ ~ ~1
execute if score #travel_zi fe.data matches ..20 run return 0
scoreboard players set #travel_zi fe.data 0
scoreboard players add #travel_yi fe.data 1
execute as @e[tag=fe_travel_probe,limit=1] at @s run tp @s ~ ~ ~-20
execute if score #travel_yi fe.data matches ..20 as @e[tag=fe_travel_probe,limit=1] at @s run tp @s ~ ~1 ~
execute if score #travel_yi fe.data matches ..20 run return 0
function fate_expedition:fate/travel_fail
