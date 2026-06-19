execute unless score #fate fe.data matches 1 run give @a[gamemode=!spectator] minecraft:golden_carrot 8
execute unless score #fate fe.data matches 1 run give @a[gamemode=!spectator] minecraft:arrow 16
execute if score #fate fe.data matches 1 run give @a[gamemode=!spectator] minecraft:golden_carrot 12
execute if score #fate fe.data matches 1 run give @a[gamemode=!spectator] minecraft:arrow 24
execute as @a[gamemode=!spectator] store result score @s fe.attr run random value 1..4
execute unless score #fate fe.data matches 1 as @a[gamemode=!spectator,scores={fe.attr=1}] run give @s minecraft:iron_ingot 8
execute unless score #fate fe.data matches 1 as @a[gamemode=!spectator,scores={fe.attr=2}] run give @s minecraft:diamond 2
execute unless score #fate fe.data matches 1 as @a[gamemode=!spectator,scores={fe.attr=3}] run give @s minecraft:golden_apple 1
execute if score #fate fe.data matches 1 as @a[gamemode=!spectator,scores={fe.attr=1}] run give @s minecraft:iron_ingot 12
execute if score #fate fe.data matches 1 as @a[gamemode=!spectator,scores={fe.attr=2}] run give @s minecraft:diamond 3
execute if score #fate fe.data matches 1 as @a[gamemode=!spectator,scores={fe.attr=3}] run give @s minecraft:golden_apple 2
execute as @a[gamemode=!spectator,scores={fe.attr=4}] store result score @s fe.random run random value 1..3
execute as @a[gamemode=!spectator,scores={fe.attr=4,fe.random=1}] run give @s minecraft:iron_pickaxe 1
execute as @a[gamemode=!spectator,scores={fe.attr=4,fe.random=2}] run give @s minecraft:iron_axe 1
execute as @a[gamemode=!spectator,scores={fe.attr=4,fe.random=3}] run give @s minecraft:iron_sword 1
tellraw @a [{"text":"[正面事件] ","color":"green","bold":true},{"text":"远行者补给已经送达。","color":"gold"}]
function fate_expedition:events/finish
