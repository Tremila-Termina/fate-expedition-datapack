scoreboard players set #travel_phase fe.data 2
scoreboard players set #travel_xi fe.data 0
scoreboard players set #travel_yi fe.data 0
scoreboard players set #travel_zi fe.data 0
kill @e[tag=fe_travel_ray]
kill @e[tag=fe_travel_probe]
execute as @e[tag=fe_travel_anchor,limit=1] at @s run summon minecraft:marker ~ ~ ~ {Tags:["fe_travel_probe"]}
execute as @e[tag=fe_travel_probe,limit=1] at @s run tp @s ~-10 ~-10 ~-10
