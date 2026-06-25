function fate_expedition:fate/use_gui/clear_container
item replace entity @e[type=minecraft:chest_minecart,tag=fe_use_gui,limit=1] container.4 with minecraft:air
item replace entity @e[type=minecraft:chest_minecart,tag=fe_use_gui,limit=1] container.11 with minecraft:nether_brick[custom_data={fe_use_gui:1},custom_name={text:"下界堡垒（5碎片）",color:"red",italic:false}]
item replace entity @e[type=minecraft:chest_minecart,tag=fe_use_gui,limit=1] container.13 with minecraft:gilded_blackstone[custom_data={fe_use_gui:1},custom_name={text:"堡垒遗迹（5碎片）",color:"gold",italic:false}]
item replace entity @e[type=minecraft:chest_minecart,tag=fe_use_gui,limit=1] container.15 with minecraft:arrow[custom_data={fe_use_gui:1},custom_name={text:"返回主菜单",color:"aqua",italic:false}]
item replace entity @e[type=minecraft:chest_minecart,tag=fe_use_gui,limit=1] container.22 with minecraft:barrier[custom_data={fe_use_gui:1},custom_name={text:"关闭菜单",color:"gray",italic:false}]
