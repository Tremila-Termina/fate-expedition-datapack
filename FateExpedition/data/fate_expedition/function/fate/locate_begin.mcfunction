scoreboard players set @s fe.menu 0
execute if score #locate_active fe.data matches 1 run tellraw @s {"text":"已有结构定位正在搜索。","color":"red"}
execute if score #locate_active fe.data matches 1 run return 0
execute unless dimension minecraft:the_nether run tellraw @s {"text":"你已离开下界，未扣费。","color":"red"}
execute unless dimension minecraft:the_nether run return 0
execute unless score #shards fe.data matches 5.. run tellraw @s {"text":"共享碎片已不足5枚。","color":"red"}
execute unless score #shards fe.data matches 5.. run return 0
scoreboard players remove #shards fe.data 5
scoreboard players set #locate_reserved fe.data 1
scoreboard players set #locate_active fe.data 1
scoreboard players set #locate_ticks fe.data 0
scoreboard players set #locate_scan fe.data 0
tag @a remove fe_locate_requester
tag @s add fe_locate_requester
kill @e[tag=fe_locate_ray]
kill @e[tag=fe_locate_destination]
summon minecraft:marker ~ 64 ~ {Tags:["fe_locate_ray"],Rotation:[0f,0f]}
summon minecraft:marker ~ 64 ~ {Tags:["fe_locate_ray"],Rotation:[11.25f,0f]}
summon minecraft:marker ~ 64 ~ {Tags:["fe_locate_ray"],Rotation:[22.5f,0f]}
summon minecraft:marker ~ 64 ~ {Tags:["fe_locate_ray"],Rotation:[33.75f,0f]}
summon minecraft:marker ~ 64 ~ {Tags:["fe_locate_ray"],Rotation:[45f,0f]}
summon minecraft:marker ~ 64 ~ {Tags:["fe_locate_ray"],Rotation:[56.25f,0f]}
summon minecraft:marker ~ 64 ~ {Tags:["fe_locate_ray"],Rotation:[67.5f,0f]}
summon minecraft:marker ~ 64 ~ {Tags:["fe_locate_ray"],Rotation:[78.75f,0f]}
summon minecraft:marker ~ 64 ~ {Tags:["fe_locate_ray"],Rotation:[90f,0f]}
summon minecraft:marker ~ 64 ~ {Tags:["fe_locate_ray"],Rotation:[101.25f,0f]}
summon minecraft:marker ~ 64 ~ {Tags:["fe_locate_ray"],Rotation:[112.5f,0f]}
summon minecraft:marker ~ 64 ~ {Tags:["fe_locate_ray"],Rotation:[123.75f,0f]}
summon minecraft:marker ~ 64 ~ {Tags:["fe_locate_ray"],Rotation:[135f,0f]}
summon minecraft:marker ~ 64 ~ {Tags:["fe_locate_ray"],Rotation:[146.25f,0f]}
summon minecraft:marker ~ 64 ~ {Tags:["fe_locate_ray"],Rotation:[157.5f,0f]}
summon minecraft:marker ~ 64 ~ {Tags:["fe_locate_ray"],Rotation:[168.75f,0f]}
summon minecraft:marker ~ 64 ~ {Tags:["fe_locate_ray"],Rotation:[180f,0f]}
summon minecraft:marker ~ 64 ~ {Tags:["fe_locate_ray"],Rotation:[191.25f,0f]}
summon minecraft:marker ~ 64 ~ {Tags:["fe_locate_ray"],Rotation:[202.5f,0f]}
summon minecraft:marker ~ 64 ~ {Tags:["fe_locate_ray"],Rotation:[213.75f,0f]}
summon minecraft:marker ~ 64 ~ {Tags:["fe_locate_ray"],Rotation:[225f,0f]}
summon minecraft:marker ~ 64 ~ {Tags:["fe_locate_ray"],Rotation:[236.25f,0f]}
summon minecraft:marker ~ 64 ~ {Tags:["fe_locate_ray"],Rotation:[247.5f,0f]}
summon minecraft:marker ~ 64 ~ {Tags:["fe_locate_ray"],Rotation:[258.75f,0f]}
summon minecraft:marker ~ 64 ~ {Tags:["fe_locate_ray"],Rotation:[270f,0f]}
summon minecraft:marker ~ 64 ~ {Tags:["fe_locate_ray"],Rotation:[281.25f,0f]}
summon minecraft:marker ~ 64 ~ {Tags:["fe_locate_ray"],Rotation:[292.5f,0f]}
summon minecraft:marker ~ 64 ~ {Tags:["fe_locate_ray"],Rotation:[303.75f,0f]}
summon minecraft:marker ~ 64 ~ {Tags:["fe_locate_ray"],Rotation:[315f,0f]}
summon minecraft:marker ~ 64 ~ {Tags:["fe_locate_ray"],Rotation:[326.25f,0f]}
summon minecraft:marker ~ 64 ~ {Tags:["fe_locate_ray"],Rotation:[337.5f,0f]}
summon minecraft:marker ~ 64 ~ {Tags:["fe_locate_ray"],Rotation:[348.75f,0f]}
title @s actionbar {"text":"正在搜索结构坐标……","color":"gold"}
