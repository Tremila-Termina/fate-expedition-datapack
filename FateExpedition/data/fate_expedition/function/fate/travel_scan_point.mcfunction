execute if entity @e[tag=fe_travel_destination,limit=1] run return 0
execute unless block ~ ~ ~ minecraft:air run return 0
execute unless block ~ ~1 ~ minecraft:air run return 0
execute if block ~ ~-1 ~ minecraft:air run return 0
execute if block ~ ~-1 ~ minecraft:lava run return 0
execute if block ~ ~-1 ~ minecraft:fire run return 0
execute if block ~ ~-1 ~ minecraft:soul_fire run return 0
execute if score #travel_type fe.data matches 1 if predicate fate_expedition:in_fortress run summon minecraft:marker ~ ~ ~ {Tags:["fe_travel_destination"]}
execute if score #travel_type fe.data matches 2 if predicate fate_expedition:in_bastion run summon minecraft:marker ~ ~ ~ {Tags:["fe_travel_destination"]}
