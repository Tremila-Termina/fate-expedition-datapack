execute if score #mob_count fe.data matches 17.. run return 0
execute as @a[gamemode=!spectator] at @s run fill ~-2 ~-1 ~-2 ~2 ~1 ~2 minecraft:infested_stone replace minecraft:stone
execute as @a[gamemode=!spectator] at @s run fill ~-2 ~-1 ~-2 ~2 ~1 ~2 minecraft:infested_stone_bricks replace minecraft:stone_bricks
execute as @a[gamemode=!spectator] at @s run summon minecraft:silverfish ~2 ~ ~ {Tags:["fe_event_mob"]}
execute as @a[gamemode=!spectator] at @s run summon minecraft:silverfish ~-2 ~ ~ {Tags:["fe_event_mob"]}
