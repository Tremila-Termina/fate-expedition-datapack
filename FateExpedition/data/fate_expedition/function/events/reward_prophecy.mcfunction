execute store result score #forced_1 fe.data run random value 9..12
execute store result score #forced_2 fe.data run random value 9..12
effect give @a[gamemode=!spectator] minecraft:slow_falling 60 0 true
scoreboard players add #shards fe.data 1
tellraw @a [{"text":"[先知之窗] ","color":"aqua","bold":true},{"text":"后续事件编号：","color":"gray"},{"score":{"name":"#forced_1","objective":"fe.data"},"color":"gold"},{"text":"、","color":"gray"},{"score":{"name":"#forced_2","objective":"fe.data"},"color":"gold"},{"text":"；+1碎片。","color":"gray"}]
function fate_expedition:events/finish
