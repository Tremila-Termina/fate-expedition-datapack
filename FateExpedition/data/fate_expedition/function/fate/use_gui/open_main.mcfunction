execute if score #use_gui_active fe.data matches 1 run function fate_expedition:fate/use_gui/close
scoreboard players set #use_gui_active fe.data 1
scoreboard players set #use_gui_mode fe.data 1
tag @a remove fe_use_gui_user
tag @s add fe_use_gui_user
kill @e[type=minecraft:chest_minecart,tag=fe_use_gui]
kill @e[type=minecraft:marker,tag=fe_use_gui_anchor]
execute as @s at @s run summon minecraft:marker ~ ~ ~ {Tags:["fe_use_gui_anchor"]}
execute as @s at @s run summon minecraft:chest_minecart ~ ~ ~ {Tags:["fe_use_gui"],NoGravity:1b,Invulnerable:1b,Silent:1b}
execute as @e[type=minecraft:marker,tag=fe_use_gui_anchor,limit=1] at @s run tp @e[type=minecraft:chest_minecart,tag=fe_use_gui,limit=1,sort=nearest] ~ ~ ~
execute unless entity @e[type=minecraft:chest_minecart,tag=fe_use_gui,distance=..8,limit=1] run tellraw @s {"text":"[命运碎片菜单] 菜单矿车生成失败，请反馈此消息。","color":"red"}
function fate_expedition:fate/use_gui/render_main
tellraw @s {"text":"[命运碎片菜单] 菜单矿车已在当前位置生成，右键可连续购买。","color":"aqua"}
