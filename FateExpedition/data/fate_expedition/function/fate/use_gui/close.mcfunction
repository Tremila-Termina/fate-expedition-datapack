scoreboard players set #use_gui_active fe.data 0
scoreboard players set #use_gui_mode fe.data 0
scoreboard players set #use_gui_click fe.data 0
scoreboard players set #use_gui_cooldown fe.data 0
data remove entity @e[type=minecraft:chest_minecart,tag=fe_use_gui,limit=1] Items
kill @e[type=minecraft:chest_minecart,tag=fe_use_gui]
kill @e[type=minecraft:marker,tag=fe_use_gui_anchor]
kill @e[type=item,nbt={Item:{id:"minecraft:chest_minecart"}}]
tag @a remove fe_use_gui_user
