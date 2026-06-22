scoreboard players set @s fe.menu 1
scoreboard players enable @s fe_use
tellraw @s [{"text":"\n[命运碎片：","color":"aqua","bold":true},{"score":{"name":"#shards","objective":"fe.data"},"color":"gold"},{"text":"枚]","color":"aqua","bold":true}]
tellraw @s [{"text":"[1] 附魔（2碎片）","color":"light_purple","bold":true,"underlined":true,"click_event":{"action":"run_command","command":"/trigger fe_use set 1"},"hover_event":{"action":"show_text","value":{"text":"随机强化购买者的一件合格物品；无目标时给予经验修补书。"}}}]
tellraw @s [{"text":"[2] 定位（5碎片）","color":"aqua","bold":true,"underlined":true,"click_event":{"action":"run_command","command":"/trigger fe_use set 2"},"hover_event":{"action":"show_text","value":{"text":"仅在下界可用：显示最近的下界堡垒或堡垒遗迹坐标。"}}}]
tellraw @s [{"text":"[3] 护命（3碎片）","color":"green","bold":true,"underlined":true,"click_event":{"action":"run_command","command":"/trigger fe_use set 3"},"hover_event":{"action":"show_text","value":{"text":"仅在无事件时降低1点灾厄。"}}}]
tellraw @s [{"text":"[4] 挑衅（+2碎片）","color":"red","bold":true,"underlined":true,"click_event":{"action":"run_command","command":"/trigger fe_use set 4"},"hover_event":{"action":"show_text","value":{"text":"每阶段一次：灾厄+1并立即触发事件。"}}}]
tellraw @s [{"text":"[5] 团队传送（10碎片）","color":"gold","bold":true,"underlined":true,"click_event":{"action":"run_command","command":"/trigger fe_use set 5"},"hover_event":{"action":"show_text","value":{"text":"仅在下界且无大灾变时可用；传送购买时位于下界的队员。"}}}]
