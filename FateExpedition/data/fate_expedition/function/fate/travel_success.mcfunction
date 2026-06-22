execute as @a[tag=fe_travel_party] at @s if dimension minecraft:the_nether run tp @s @e[tag=fe_travel_destination,limit=1]
effect give @a[tag=fe_travel_party] minecraft:fire_resistance 10 0 true
effect give @a[tag=fe_travel_party] minecraft:resistance 10 1 true
effect give @a[tag=fe_travel_party] minecraft:slow_falling 10 0 true
tellraw @a[tag=fe_travel_party] {"text":"团队传送完成，已消耗10枚共享碎片。","color":"gold"}
scoreboard players set #travel_reserved fe.data 0
function fate_expedition:fate/travel_clear
