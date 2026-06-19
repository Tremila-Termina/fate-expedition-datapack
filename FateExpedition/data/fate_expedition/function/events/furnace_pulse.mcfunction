execute if score #mob_count fe.data matches 17.. run return 0
execute as @a[gamemode=!spectator] at @s run setblock ~1 ~ ~ minecraft:fire keep
execute as @a[gamemode=!spectator] at @s run setblock ~-1 ~ ~ minecraft:fire keep
execute as @a[gamemode=!spectator] at @s run summon minecraft:magma_cube ~3 ~ ~ {Size:1,Tags:["fe_event_mob"]}
execute if score #doom fe.data matches 6.. as @a[gamemode=!spectator] at @s run summon minecraft:magma_cube ~-3 ~ ~ {Size:3,Tags:["fe_event_mob"]}
