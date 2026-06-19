execute if score #mob_count fe.data matches 21.. run return 0
execute at @a[tag=fe_target,limit=1] run summon minecraft:endermite ~2 ~ ~ {PersistenceRequired:1b,Tags:["fe_event_mob"]}
execute at @a[tag=fe_target,limit=1] run summon minecraft:endermite ~-2 ~ ~ {PersistenceRequired:1b,Tags:["fe_event_mob"]}
execute if score #doom fe.data matches 6.. at @a[tag=fe_target,limit=1] run summon minecraft:enderman ~4 ~ ~ {PersistenceRequired:1b,Tags:["fe_event_mob"]}
