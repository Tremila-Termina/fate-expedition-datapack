execute unless score @s fe.menu matches 1 run return 0
execute unless dimension minecraft:the_nether run tellraw @s {"text":"团队传送只能在下界购买。","color":"red"}
execute unless dimension minecraft:the_nether run return 0
execute if score #cat fe.data matches 1.. run tellraw @s {"text":"大灾变期间无法启动团队传送。","color":"red"}
execute if score #cat fe.data matches 1.. run return 0
execute if score #travel_active fe.data matches 1 run tellraw @s {"text":"已有团队传送正在搜索。","color":"red"}
execute if score #travel_active fe.data matches 1 run return 0
execute unless score #shards fe.data matches 10.. run tellraw @s {"text":"碎片不足，需要10枚。","color":"red"}
execute unless score #shards fe.data matches 10.. run return 0
scoreboard players set @s fe.menu 3
scoreboard players enable @s fe_travel
tellraw @s [{"text":"[团队传送] ","color":"gold","bold":true},{"text":"请选择目标：","color":"gray"}]
tellraw @s [{"text":"[1] 下界堡垒","color":"red","bold":true,"underlined":true,"click_event":{"action":"run_command","command":"/trigger fe_travel set 1"},"hover_event":{"action":"show_text","value":{"text":"预留10碎片，搜索失败全额退还。"}}}]
tellraw @s [{"text":"[2] 堡垒遗迹","color":"gold","bold":true,"underlined":true,"click_event":{"action":"run_command","command":"/trigger fe_travel set 2"},"hover_event":{"action":"show_text","value":{"text":"预留10碎片，搜索失败全额退还。"}}}]
