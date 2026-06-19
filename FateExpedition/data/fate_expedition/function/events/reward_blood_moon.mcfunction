scoreboard players add #shards fe.data 2
execute as @a[gamemode=!spectator] store result score @s fe.attr run random value 1..4
execute as @a[gamemode=!spectator,scores={fe.attr=1}] run give @s minecraft:iron_ingot 8
execute as @a[gamemode=!spectator,scores={fe.attr=2}] run give @s minecraft:diamond 2
execute as @a[gamemode=!spectator,scores={fe.attr=3}] run give @s minecraft:golden_apple 1
execute as @a[gamemode=!spectator,scores={fe.attr=4}] run give @s minecraft:golden_carrot 8
tellraw @a {"text":"血月狩猎无人死亡：+2碎片并发放材料包。","color":"gold"}
