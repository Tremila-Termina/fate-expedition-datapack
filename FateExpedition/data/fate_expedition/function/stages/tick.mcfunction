scoreboard players add #stage_time fe.data 1
execute if score #stage fe.data matches 1 if score #task_done fe.data matches 0 if score #task_failed fe.data matches 0 if score #stage_time fe.data matches 1200.. run function fate_expedition:stages/fail_overworld
execute if score #stage fe.data matches 2 if score #task_done fe.data matches 0 if score #task_failed fe.data matches 0 if score #stage_time fe.data matches 1500.. run function fate_expedition:stages/fail_nether
execute if score #stage fe.data matches 3 if score #task_done fe.data matches 0 if score #task_failed fe.data matches 0 if score #stage_time fe.data matches 2700.. run function fate_expedition:stages/fail_stronghold
scoreboard players set #found fe.data 0
execute if score #stage fe.data matches 1 as @a[gamemode=!spectator] at @s if dimension minecraft:the_nether run scoreboard players set #found fe.data 1
execute if score #stage fe.data matches 1 if score #found fe.data matches 1 run function fate_expedition:stages/enter_nether
execute if score #stage fe.data matches 2 if score #blaze fe.data matches 0 if entity @a[advancements={minecraft:nether/obtain_blaze_rod=true}] run function fate_expedition:stages/get_blaze
scoreboard players set #found fe.data 0
execute if score #stage fe.data matches 2 if score #blaze fe.data matches 1 as @a[gamemode=!spectator] at @s if dimension minecraft:overworld run scoreboard players set #found fe.data 1
execute if score #stage fe.data matches 2 if score #blaze fe.data matches 1 if score #found fe.data matches 1 run function fate_expedition:stages/return_overworld
scoreboard players set #found fe.data 0
execute if score #stage fe.data matches 3 as @a[gamemode=!spectator] at @s if dimension minecraft:the_end run scoreboard players set #found fe.data 1
execute if score #stage fe.data matches 3 if score #found fe.data matches 1 run function fate_expedition:stages/enter_end
