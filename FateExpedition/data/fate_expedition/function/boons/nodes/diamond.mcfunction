scoreboard players set #pending fe.boon 3
scoreboard players set #diamond_done fe.boon 1
tellraw @a [{"text":"\n[里程碑：钻石！]","color":"aqua","bold":true}]
tellraw @a [{"text":"[1] 锋锐专注：全队+1攻击伤害","color":"blue","bold":true,"underlined":true,"click_event":{"action":"run_command","command":"/trigger fe_boon set 1"},"hover_event":{"action":"show_text","value":{"text":"永久团队属性。"}}}]
tellraw @a [{"text":"[2] 钻石核心：全队+2护甲韧性","color":"aqua","bold":true,"underlined":true,"click_event":{"action":"run_command","command":"/trigger fe_boon set 2"},"hover_event":{"action":"show_text","value":{"text":"永久团队属性。"}}}]
tellraw @a [{"text":"[3] 钻石回响：每人6钻石+16级经验","color":"gold","bold":true,"underlined":true,"click_event":{"action":"run_command","command":"/trigger fe_boon set 3"},"hover_event":{"action":"show_text","value":{"text":"即时团队物资。"}}}]
tellraw @a [{"text":"[4] 附魔准备：每人随机附魔+16青金石","color":"yellow","bold":true,"underlined":true,"click_event":{"action":"run_command","command":"/trigger fe_boon set 4"},"hover_event":{"action":"show_text","value":{"text":"对每名当前玩家执行一次随机附魔。"}}}]
