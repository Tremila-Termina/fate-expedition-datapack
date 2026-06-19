scoreboard players set #pending fe.boon 2
scoreboard players set #iron_done fe.boon 1
tellraw @a [{"text":"\n[里程碑：来硬的]","color":"aqua","bold":true}]
tellraw @a [{"text":"[1] 铁皮：全队+2护甲","color":"blue","bold":true,"underlined":true,"click_event":{"action":"run_command","command":"/trigger fe_boon set 1"},"hover_event":{"action":"show_text","value":{"text":"永久团队属性。"}}}]
tellraw @a [{"text":"[2] 生命训练：全队+2最大生命","color":"aqua","bold":true,"underlined":true,"click_event":{"action":"run_command","command":"/trigger fe_boon set 2"},"hover_event":{"action":"show_text","value":{"text":"永久团队属性。"}}}]
tellraw @a [{"text":"[3] 铁匠包：每人16铁锭+盾牌+16金胡萝卜","color":"gold","bold":true,"underlined":true,"click_event":{"action":"run_command","command":"/trigger fe_boon set 3"},"hover_event":{"action":"show_text","value":{"text":"即时团队物资。"}}}]
tellraw @a [{"text":"[4] 熔炉包：每人8铁锭+16煤+16金胡萝卜","color":"yellow","bold":true,"underlined":true,"click_event":{"action":"run_command","command":"/trigger fe_boon set 4"},"hover_event":{"action":"show_text","value":{"text":"即时团队物资。"}}}]
