scoreboard players set #pending fe.boon 5
scoreboard players set #skull_done fe.boon 1
tellraw @a [{"text":"\n[里程碑：可怕的要塞]","color":"aqua","bold":true}]
tellraw @a [{"text":"[1] 要塞幸存者：全队+4最大生命","color":"blue","bold":true,"underlined":true,"click_event":{"action":"run_command","command":"/trigger fe_boon set 1"},"hover_event":{"action":"show_text","value":{"text":"永久团队属性。"}}}]
tellraw @a [{"text":"[2] 战斗专注：全队+2攻击伤害","color":"aqua","bold":true,"underlined":true,"click_event":{"action":"run_command","command":"/trigger fe_boon set 2"},"hover_event":{"action":"show_text","value":{"text":"永久团队属性。"}}}]
tellraw @a [{"text":"[3] 要塞战利品：每人2金苹果+12级+16金胡萝卜","color":"gold","bold":true,"underlined":true,"click_event":{"action":"run_command","command":"/trigger fe_boon set 3"},"hover_event":{"action":"show_text","value":{"text":"即时团队物资。"}}}]
tellraw @a [{"text":"[4] 火焰储备：每人2抗火药水+48箭+16金胡萝卜","color":"yellow","bold":true,"underlined":true,"click_event":{"action":"run_command","command":"/trigger fe_boon set 4"},"hover_event":{"action":"show_text","value":{"text":"即时团队物资。"}}}]
