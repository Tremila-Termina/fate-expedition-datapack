scoreboard players set #pending fe.boon 6
scoreboard players set #bastion_done fe.boon 1
tellraw @a [{"text":"\n[里程碑：光辉岁月]","color":"aqua","bold":true}]
tellraw @a [{"text":"[1] 远古板甲：全队+4护甲","color":"blue","bold":true,"underlined":true,"click_event":{"action":"run_command","command":"/trigger fe_boon set 1"},"hover_event":{"action":"show_text","value":{"text":"永久团队属性。"}}}]
tellraw @a [{"text":"[2] 堡垒动量：+10%速度、+0.1击退抗性","color":"aqua","bold":true,"underlined":true,"click_event":{"action":"run_command","command":"/trigger fe_boon set 2"},"hover_event":{"action":"show_text","value":{"text":"永久团队属性。"}}}]
tellraw @a [{"text":"[3] 堡垒储备：每人6金块+2金苹果+12级","color":"gold","bold":true,"underlined":true,"click_event":{"action":"run_command","command":"/trigger fe_boon set 3"},"hover_event":{"action":"show_text","value":{"text":"即时团队物资。"}}}]
tellraw @a [{"text":"[4] 交易准备：每人8金块+16金胡萝卜","color":"yellow","bold":true,"underlined":true,"click_event":{"action":"run_command","command":"/trigger fe_boon set 4"},"hover_event":{"action":"show_text","value":{"text":"即时团队物资。"}}}]
