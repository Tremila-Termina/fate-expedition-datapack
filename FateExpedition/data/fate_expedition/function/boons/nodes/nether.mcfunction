scoreboard players set #pending fe.boon 4
scoreboard players set #nether_done fe.boon 1
tellraw @a [{"text":"\n[里程碑：深入下界]","color":"aqua","bold":true}]
tellraw @a [{"text":"[1] 下界触及：交互距离+1","color":"blue","bold":true,"underlined":true,"click_event":{"action":"run_command","command":"/trigger fe_boon set 1"},"hover_event":{"action":"show_text","value":{"text":"方块与实体交互距离永久+1。"}}}]
tellraw @a [{"text":"[2] 炽热步伐：+10%速度、+0.5跨越高度","color":"aqua","bold":true,"underlined":true,"click_event":{"action":"run_command","command":"/trigger fe_boon set 2"},"hover_event":{"action":"show_text","value":{"text":"永久团队属性。"}}}]
tellraw @a [{"text":"[3] 下界储备：每人4金块+抗火药水+16金胡萝卜","color":"gold","bold":true,"underlined":true,"click_event":{"action":"run_command","command":"/trigger fe_boon set 3"},"hover_event":{"action":"show_text","value":{"text":"即时团队物资。"}}}]
tellraw @a [{"text":"[4] 远征包：每人64圆石+弓+32箭+16金胡萝卜","color":"yellow","bold":true,"underlined":true,"click_event":{"action":"run_command","command":"/trigger fe_boon set 4"},"hover_event":{"action":"show_text","value":{"text":"即时团队物资。"}}}]
