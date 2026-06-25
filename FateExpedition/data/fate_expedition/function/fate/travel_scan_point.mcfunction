execute if entity @e[tag=fe_travel_destination,limit=1] run return 0
execute if entity @e[tag=fe_travel_anchor,limit=1] run return 0
execute if score #travel_type fe.data matches 1 if predicate fate_expedition:in_fortress run summon minecraft:marker ~ ~ ~ {Tags:["fe_travel_anchor"]}
execute if score #travel_type fe.data matches 2 if predicate fate_expedition:in_bastion run summon minecraft:marker ~ ~ ~ {Tags:["fe_travel_anchor"]}
