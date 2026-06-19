execute unless score #menu fe.data matches 1 run return 0
execute unless score #shards fe.data matches 5.. run tellraw @s {"text":"碎片不足，需要5枚。","color":"red"}
execute unless score #shards fe.data matches 5.. run return 0
execute at @s unless dimension minecraft:the_nether run tellraw @s {"text":"定位只能在下界购买。","color":"red"}
execute at @s unless dimension minecraft:the_nether run return 0
scoreboard players set #menu fe.data 0
scoreboard players set #locate_menu fe.data 1
tellraw @s [{"text":"[下界定位]","color":"gold","bold":true},{"text":" 请选择目标：","color":"gray"}]
tellraw @s [{"text":"[1] 下界要塞","color":"red","bold":true,"underlined":true,"click_event":{"action":"run_command","command":"/trigger fe_locate set 1"},"hover_event":{"action":"show_text","value":{"text":"成功定位后扣除5枚共享碎片。"}}}]
tellraw @s [{"text":"[2] 堡垒遗迹","color":"gold","bold":true,"underlined":true,"click_event":{"action":"run_command","command":"/trigger fe_locate set 2"},"hover_event":{"action":"show_text","value":{"text":"成功定位后扣除5枚共享碎片。"}}}]
