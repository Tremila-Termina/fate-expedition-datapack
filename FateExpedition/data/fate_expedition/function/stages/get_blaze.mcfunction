scoreboard players set #blaze fe.data 1
scoreboard players set #task_done fe.data 1
execute if score #task_failed fe.data matches 0 if score #stage_time fe.data matches ..900 run function fate_expedition:stages/reward_fast
execute if score #task_failed fe.data matches 0 if score #stage_time fe.data matches 901..1500 run function fate_expedition:stages/reward_normal
function fate_expedition:doom/add_3
tellraw @a [{"text":"[夺取烈焰] ","color":"gold","bold":true},{"text":"任务完成；事件池仍保持下界阶段，直到有人返回主世界。灾厄+3。","color":"yellow"}]
