execute if score #task_failed fe.data matches 0 if score #stage_time fe.data matches ..1800 run function fate_expedition:stages/reward_fast
execute if score #task_failed fe.data matches 0 if score #stage_time fe.data matches 1801..2700 run function fate_expedition:stages/reward_normal
scoreboard players set #stage fe.data 4
scoreboard players set #stage_time fe.data 0
scoreboard players set #task_done fe.data 0
scoreboard players set #task_failed fe.data 0
scoreboard players set #crystal_seen fe.data 0
function fate_expedition:doom/add_3
tellraw @a [{"text":"[阶段 IV] ","color":"dark_purple","bold":true},{"text":"终末决战：水晶破坏者计时开始。灾厄+3。","color":"light_purple"}]
