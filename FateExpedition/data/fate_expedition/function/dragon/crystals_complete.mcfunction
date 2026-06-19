scoreboard players set #task_done fe.data 1
execute if score #stage_time fe.data matches ..120 run function fate_expedition:stages/reward_fast
execute if score #stage_time fe.data matches 121..180 run function fate_expedition:stages/reward_normal
tellraw @a [{"text":"[水晶破坏者] ","color":"green","bold":true},{"text":"所有已加载水晶均已摧毁。","color":"aqua"}]
