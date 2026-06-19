effect give @a[gamemode=!spectator] minecraft:absorption 60 3 true
effect give @a[gamemode=!spectator] minecraft:slow_falling 60 0 true
give @a[gamemode=!spectator] minecraft:arrow 32
execute if score #fate fe.data matches 1 if score #doom fe.data matches 3.. run scoreboard players remove #doom fe.data 1
execute unless score #fate fe.data matches 1 if score #doom fe.data matches 1.. run scoreboard players remove #doom fe.data 1
tellraw @a [{"text":"[正面事件] ","color":"green","bold":true},{"text":"最后的光：吸收、缓降与箭矢。","color":"aqua"}]
function fate_expedition:events/finish
