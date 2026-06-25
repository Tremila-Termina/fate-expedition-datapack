execute unless score #shards fe.data matches 1.. run tellraw @s {"text":"碎片不足，需要1枚。","color":"red"}
execute unless score #shards fe.data matches 1.. run return 0
scoreboard players remove #shards fe.data 1
effect clear @a[gamemode=!spectator] minecraft:blindness
effect clear @a[gamemode=!spectator] minecraft:darkness
effect clear @a[gamemode=!spectator] minecraft:hunger
effect clear @a[gamemode=!spectator] minecraft:mining_fatigue
effect clear @a[gamemode=!spectator] minecraft:nausea
effect clear @a[gamemode=!spectator] minecraft:poison
effect clear @a[gamemode=!spectator] minecraft:slowness
effect clear @a[gamemode=!spectator] minecraft:unluck
effect clear @a[gamemode=!spectator] minecraft:weakness
effect clear @a[gamemode=!spectator] minecraft:wither
effect clear @a[gamemode=!spectator] minecraft:bad_omen
effect clear @a[gamemode=!spectator] minecraft:levitation
effect clear @a[gamemode=!spectator] minecraft:oozing
effect clear @a[gamemode=!spectator] minecraft:infested
effect clear @a[gamemode=!spectator] minecraft:weaving
tellraw @a [{"text":"[净化] ","color":"green","bold":true},{"selector":"@s","color":"aqua"},{"text":" 消耗1碎片，清除了全队负面效果。","color":"gray"}]
