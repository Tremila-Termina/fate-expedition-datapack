scoreboard players set #pending fe.boon 7
scoreboard players set #eye_done fe.boon 1
tellraw @a [{"text":"\n[里程碑：隔墙有眼]","color":"aqua","bold":true}]
tellraw @a [{"text":"[1] 末影生命：全队+4最大生命","color":"blue","bold":true,"underlined":true,"click_event":{"action":"run_command","command":"/trigger fe_boon set 1"},"hover_event":{"action":"show_text","value":{"text":"永久团队属性。"}}}]
tellraw @a [{"text":"[2] 屠龙架势：+2韧性、+0.1击退抗性","color":"aqua","bold":true,"underlined":true,"click_event":{"action":"run_command","command":"/trigger fe_boon set 2"},"hover_event":{"action":"show_text","value":{"text":"永久团队属性。"}}}]
tellraw @a [{"text":"[3] 屠龙套装：每人64箭+2金苹果+缓降+16金胡萝卜","color":"gold","bold":true,"underlined":true,"click_event":{"action":"run_command","command":"/trigger fe_boon set 3"},"hover_event":{"action":"show_text","value":{"text":"即时团队物资。"}}}]
tellraw @a [{"text":"[4] 附魔冲刺：每人随机附魔+16级+24青金石","color":"yellow","bold":true,"underlined":true,"click_event":{"action":"run_command","command":"/trigger fe_boon set 4"},"hover_event":{"action":"show_text","value":{"text":"对每名当前玩家执行一次随机附魔。"}}}]
