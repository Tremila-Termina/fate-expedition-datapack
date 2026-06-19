execute if score #mob_count fe.data matches 21.. run return 0
execute at @a[tag=fe_target,limit=1] run summon minecraft:piglin ~3 ~ ~ {Tags:["fe_event_mob"]}
execute at @a[tag=fe_target,limit=1] run summon minecraft:piglin ~-3 ~ ~ {Tags:["fe_event_mob"]}
