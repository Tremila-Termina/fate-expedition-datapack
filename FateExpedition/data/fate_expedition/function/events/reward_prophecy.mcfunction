execute store result score #forced_1 fe.data run random value 9..12
execute store result score #forced_2 fe.data run random value 9..12
effect give @a[gamemode=!spectator] minecraft:slow_falling 60 0 true
scoreboard players add #shards fe.data 1
tellraw @a [{"text":"[先知之窗] ","color":"aqua","bold":true},{"text":"预见了后续两次事件；+1碎片。","color":"gray"}]
execute if score #forced_1 fe.data matches 9 run tellraw @a {"text":"首先：末影追猎","color":"light_purple"}
execute if score #forced_1 fe.data matches 10 run tellraw @a {"text":"首先：迷途回响","color":"gray"}
execute if score #forced_1 fe.data matches 11 run tellraw @a {"text":"首先：地脉虫群","color":"dark_green"}
execute if score #forced_1 fe.data matches 12 run tellraw @a {"text":"首先：先知之窗","color":"aqua"}
execute if score #forced_2 fe.data matches 9 run tellraw @a {"text":"随后：末影追猎","color":"light_purple"}
execute if score #forced_2 fe.data matches 10 run tellraw @a {"text":"随后：迷途回响","color":"gray"}
execute if score #forced_2 fe.data matches 11 run tellraw @a {"text":"随后：地脉虫群","color":"dark_green"}
execute if score #forced_2 fe.data matches 12 run tellraw @a {"text":"随后：先知之窗","color":"aqua"}
function fate_expedition:events/finish
