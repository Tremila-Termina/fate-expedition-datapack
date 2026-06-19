scoreboard players set #cat fe.data 0
scoreboard players set #doom fe.data 7
scoreboard players add #shards fe.data 3
scoreboard players operation #doom fe.data += #pending_doom fe.data
scoreboard players set #pending_doom fe.data 0
execute if score #doom fe.data matches 11.. run scoreboard players set #doom fe.data 10
tag @a remove fe_target
execute if score #stage fe.data matches 4 in minecraft:the_end as @e[type=minecraft:enderman,distance=..96] run data remove entity @s AngryAt
kill @e[tag=fe_event_mob]
tellraw @a [{"text":"[大灾变结束] ","color":"gold","bold":true},{"text":"+3碎片；灾厄降至7后结算延后进度。","color":"yellow"}]
execute if score #doom fe.data matches 10 run function fate_expedition:catastrophes/start
execute unless score #doom fe.data matches 10 run function fate_expedition:events/set_cooldown
