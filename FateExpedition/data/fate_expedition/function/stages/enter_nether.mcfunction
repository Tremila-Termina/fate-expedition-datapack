execute if score #task_failed fe.data matches 0 if score #stage_time fe.data matches ..720 run function fate_expedition:stages/reward_fast
execute if score #task_failed fe.data matches 0 if score #stage_time fe.data matches 721..1200 run function fate_expedition:stages/reward_normal
scoreboard players set #stage fe.data 2
scoreboard players set #stage_time fe.data 0
scoreboard players set #task_done fe.data 0
scoreboard players set #task_failed fe.data 0
function fate_expedition:doom/add_3
tellraw @a [{"text":"[阶段 II] ","color":"red","bold":true},{"text":"炼狱夺火：取得烈焰棒并返回主世界。关键进度灾厄+3。","color":"gold"}]
