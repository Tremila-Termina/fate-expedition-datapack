scoreboard players set #event_success fe.data 1
scoreboard players add #shards fe.data 3
give @a[gamemode=!spectator] minecraft:gold_ingot 4
tellraw @a {"text":"猪灵追猎完成：+3碎片，每人4金锭。","color":"gold"}
scoreboard players set #event_time fe.data 0
