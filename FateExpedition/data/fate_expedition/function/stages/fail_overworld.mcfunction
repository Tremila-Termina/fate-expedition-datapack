scoreboard players set #task_failed fe.data 1
function fate_expedition:doom/add_3
tellraw @a [{"text":"[任务失败] ","color":"dark_red","bold":true},{"text":"下界远征超过20分钟：灾厄+3。","color":"red"}]
