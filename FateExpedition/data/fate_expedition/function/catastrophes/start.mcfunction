execute unless score #cat fe.data matches 0 run return 0
kill @e[tag=fe_event_mob]
scoreboard players operation #cat fe.data = #stage fe.data
scoreboard players set #cat_elapsed fe.data 0
scoreboard players set #cat_extra fe.data 0
scoreboard players set #event fe.data 0
scoreboard players set #choice_menu fe.data 0
scoreboard players add #cats fe.data 1
execute if score #cat fe.data matches 1 run scoreboard players set #cat_time fe.data 60
execute if score #cat fe.data matches 1 run tellraw @a [{"text":"[大灾变：赤色天穹] ","color":"dark_red","bold":true},{"text":"血月与流星同时降临60秒！","color":"red"}]
execute if score #cat fe.data matches 2 run scoreboard players set #cat_time fe.data 75
execute if score #cat fe.data matches 2 run tag @a remove fe_target
execute if score #cat fe.data matches 2 as @r[gamemode=!spectator] run tag @s add fe_target
execute if score #cat fe.data matches 2 at @a[tag=fe_target,limit=1] run summon minecraft:piglin_brute ~5 ~ ~ {PersistenceRequired:1b,Tags:["fe_event_mob","fe_piglin_captain"],CustomName:'{"text":"炼狱队长"}'}
execute if score #cat fe.data matches 2 run tellraw @a [{"text":"[大灾变：炼狱开门] ","color":"dark_red","bold":true},{"text":"熔炉与猪灵追猎持续75秒！","color":"gold"}]
execute if score #cat fe.data matches 3 run scoreboard players set #cat_time fe.data 60
execute if score #cat fe.data matches 3 run effect give @a[gamemode=!spectator] minecraft:darkness 60 0 true
execute if score #cat fe.data matches 3 run effect give @a[gamemode=!spectator] minecraft:nausea 60 0 true
execute if score #cat fe.data matches 3 run tellraw @a [{"text":"[大灾变：破碎罗盘] ","color":"dark_purple","bold":true},{"text":"迷途与虫群持续60秒！","color":"gray"}]
execute if score #cat fe.data matches 4 run scoreboard players set #cat_time fe.data 60
execute if score #cat fe.data matches 4 run function fate_expedition:events/anger_endermen
execute if score #cat fe.data matches 4 run tellraw @a [{"text":"[大灾变：虚空审判] ","color":"dark_purple","bold":true},{"text":"烈风与末影暴动持续60秒！","color":"red"}]
