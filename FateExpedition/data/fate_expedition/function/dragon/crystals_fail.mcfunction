scoreboard players set #task_failed fe.data 1
function fate_expedition:doom/add_2
tellraw @a [{"text":"[任务失败] ","color":"dark_red","bold":true},{"text":"水晶破坏者超过3分钟：灾厄+2。","color":"red"}]
