execute if entity @e[tag=fe_locate_destination,limit=1] run return 0
execute if score #locate_type fe.data matches 1 if predicate fate_expedition:in_fortress run summon minecraft:marker ~ ~ ~ {Tags:["fe_locate_destination"]}
execute if score #locate_type fe.data matches 2 if predicate fate_expedition:in_bastion run summon minecraft:marker ~ ~ ~ {Tags:["fe_locate_destination"]}
