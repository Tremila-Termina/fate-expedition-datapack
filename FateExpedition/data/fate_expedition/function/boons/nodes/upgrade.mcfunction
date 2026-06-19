scoreboard players set #pending fe.boon 1
scoreboard players set #upgrade_done fe.boon 1
tellraw @a [{"text":"\n[里程碑：获得升级]","color":"aqua","bold":true}]
tellraw @a [{"text":"[1] 稳健开局：全队+2最大生命","color":"blue","bold":true,"underlined":true,"click_event":{"action":"run_command","command":"/trigger fe_boon set 1"},"hover_event":{"action":"show_text","value":{"text":"死亡后保留，卸载时移除。"}}}]
tellraw @a [{"text":"[2] 轻快步伐：全队+5%移动速度","color":"aqua","bold":true,"underlined":true,"click_event":{"action":"run_command","command":"/trigger fe_boon set 2"},"hover_event":{"action":"show_text","value":{"text":"死亡后保留，卸载时移除。"}}}]
tellraw @a [{"text":"[3] 旅行口粮：每人16原木+16金胡萝卜","color":"gold","bold":true,"underlined":true,"click_event":{"action":"run_command","command":"/trigger fe_boon set 3"},"hover_event":{"action":"show_text","value":{"text":"即时物资，后加入者不补发。"}}}]
tellraw @a [{"text":"[4] 工具套装：每人铁镐+铁斧+水桶","color":"yellow","bold":true,"underlined":true,"click_event":{"action":"run_command","command":"/trigger fe_boon set 4"},"hover_event":{"action":"show_text","value":{"text":"即时物资，后加入者不补发。"}}}]
