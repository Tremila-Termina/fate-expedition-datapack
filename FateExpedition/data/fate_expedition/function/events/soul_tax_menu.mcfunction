tellraw @a [{"text":"[灵魂税契] ","color":"dark_purple","bold":true},{"text":"20秒内由一名玩家代表全队选择。","color":"gray"}]
tellraw @a [{"text":"[献祭8金锭：灾厄-1]","color":"gold","bold":true,"underlined":true,"click_event":{"action":"run_command","command":"/trigger fe_choice set 1"},"hover_event":{"action":"show_text","value":{"text":"由点击者支付8金锭。"}}}]
tellraw @a [{"text":"[反抗：迎战凋灵骷髅]","color":"red","bold":true,"underlined":true,"click_event":{"action":"run_command","command":"/trigger fe_choice set 2"},"hover_event":{"action":"show_text","value":{"text":"胜利奖励2枚碎片。"}}}]
