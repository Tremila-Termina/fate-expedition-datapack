execute in minecraft:the_end as @e[type=minecraft:enderman,distance=..64] at @s if entity @p[gamemode=!spectator,distance=..64] run data modify entity @s AngryAt set from entity @p[gamemode=!spectator,distance=..64] UUID
tellraw @a [{"text":"[事件] ","color":"dark_purple","bold":true},{"text":"末影人暴动：附近末影人已锁定玩家。","color":"red"}]
