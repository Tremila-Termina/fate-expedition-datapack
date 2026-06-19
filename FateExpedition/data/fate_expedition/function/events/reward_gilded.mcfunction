execute if score #doom fe.data matches ..5 run effect give @a[gamemode=!spectator] minecraft:fire_resistance 90 0 true
execute if score #doom fe.data matches ..5 run effect give @a[gamemode=!spectator] minecraft:resistance 90 0 true
execute if score #doom fe.data matches 6.. run effect give @a[gamemode=!spectator] minecraft:fire_resistance 60 0 true
execute if score #doom fe.data matches 6.. run effect give @a[gamemode=!spectator] minecraft:resistance 60 0 true
give @a[gamemode=!spectator] minecraft:gold_ingot 4
tellraw @a [{"text":"[正面事件] ","color":"green","bold":true},{"text":"镀金喘息：抗火、抗性与黄金。","color":"gold"}]
function fate_expedition:events/finish
