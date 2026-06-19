execute unless score #menu fe.data matches 1 run return 0
execute if score #stage fe.data matches 1 if score #wager_1 fe.data matches 1 run tellraw @s {"text":"本阶段已经挑衅过命运。","color":"red"}
execute if score #stage fe.data matches 1 if score #wager_1 fe.data matches 1 run return 0
execute if score #stage fe.data matches 2 if score #wager_2 fe.data matches 1 run tellraw @s {"text":"本阶段已经挑衅过命运。","color":"red"}
execute if score #stage fe.data matches 2 if score #wager_2 fe.data matches 1 run return 0
execute if score #stage fe.data matches 3 if score #wager_3 fe.data matches 1 run tellraw @s {"text":"本阶段已经挑衅过命运。","color":"red"}
execute if score #stage fe.data matches 3 if score #wager_3 fe.data matches 1 run return 0
execute if score #stage fe.data matches 4 if score #wager_4 fe.data matches 1 run tellraw @s {"text":"本阶段已经挑衅过命运。","color":"red"}
execute if score #stage fe.data matches 4 if score #wager_4 fe.data matches 1 run return 0
execute if score #stage fe.data matches 1 run scoreboard players set #wager_1 fe.data 1
execute if score #stage fe.data matches 2 run scoreboard players set #wager_2 fe.data 1
execute if score #stage fe.data matches 3 run scoreboard players set #wager_3 fe.data 1
execute if score #stage fe.data matches 4 run scoreboard players set #wager_4 fe.data 1
scoreboard players add #shards fe.data 2
scoreboard players set #menu fe.data 0
scoreboard players set #cooldown fe.data 0
function fate_expedition:doom/add_1
tellraw @a [{"text":"[挑衅] ","color":"dark_red","bold":true},{"selector":"@s","color":"red"},{"text":" 获得2碎片并迫使命运立即回应。","color":"gray"}]
