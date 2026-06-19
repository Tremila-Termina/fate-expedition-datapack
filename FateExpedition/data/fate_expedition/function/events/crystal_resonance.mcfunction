scoreboard players set #crystals fe.data 0
execute in minecraft:the_end as @e[type=minecraft:end_crystal] run scoreboard players add #crystals fe.data 1
execute if score #crystals fe.data matches 1..3 as @a[gamemode=!spectator] run damage @s 1 minecraft:magic
execute if score #crystals fe.data matches 4..7 as @a[gamemode=!spectator] run damage @s 2 minecraft:magic
execute if score #crystals fe.data matches 8.. as @a[gamemode=!spectator] run damage @s 3 minecraft:magic
execute if score #crystals fe.data matches 0 run scoreboard players add #shards fe.data 2
execute if score #crystals fe.data matches 0 run tellraw @a {"text":"水晶共振被终止：+2碎片。","color":"aqua"}
execute if score #crystals fe.data matches 0 run scoreboard players set #event_time fe.data 0
