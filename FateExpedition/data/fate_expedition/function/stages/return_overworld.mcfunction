scoreboard players set #stage fe.data 3
scoreboard players set #stage_time fe.data 0
scoreboard players set #task_done fe.data 0
scoreboard players set #task_failed fe.data 0
scoreboard players set #returned fe.data 1
function fate_expedition:doom/add_3
tellraw @a [{"text":"[阶段 III] ","color":"light_purple","bold":true},{"text":"要塞追猎：寻找末地传送门。关键进度灾厄+3。","color":"aqua"}]
