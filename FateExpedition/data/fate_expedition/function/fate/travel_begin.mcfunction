scoreboard players set @s fe.menu 0
execute unless dimension minecraft:the_nether run tellraw @s {"text":"你已离开下界，未扣费。","color":"red"}
execute unless dimension minecraft:the_nether run return 0
execute if score #cat fe.data matches 1.. run tellraw @s {"text":"大灾变已经开始，未扣费。","color":"red"}
execute if score #cat fe.data matches 1.. run return 0
execute if score #travel_active fe.data matches 1 run tellraw @s {"text":"已有传送搜索，未扣费。","color":"red"}
execute if score #travel_active fe.data matches 1 run return 0
execute unless score #shards fe.data matches 10.. run tellraw @s {"text":"共享碎片已不足10枚。","color":"red"}
execute unless score #shards fe.data matches 10.. run return 0
scoreboard players set @s fe.attr 0
execute if score #travel_type fe.data matches 1 store success score @s fe.attr store result score #travel_distance fe.data run locate structure minecraft:fortress
execute if score #travel_type fe.data matches 2 store success score @s fe.attr store result score #travel_distance fe.data run locate structure minecraft:bastion_remnant
execute unless score @s fe.attr matches 1 run tellraw @s {"text":"结构定位失败，未扣费。","color":"red"}
execute unless score @s fe.attr matches 1 run return 0
execute if score #travel_distance fe.data matches 1537.. run tellraw @s {"text":"最近结构超过1536格，自动传送取消。你仍可使用5碎片定位。","color":"red"}
execute if score #travel_distance fe.data matches 1537.. run return 0
scoreboard players remove #shards fe.data 10
scoreboard players set #travel_reserved fe.data 1
scoreboard players set #travel_active fe.data 1
scoreboard players set #travel_phase fe.data 1
scoreboard players set #travel_ticks fe.data 0
scoreboard players set #travel_scan fe.data 0
tag @a remove fe_travel_party
tag @a remove fe_travel_requester
execute as @a[gamemode=!spectator] at @s if dimension minecraft:the_nether run tag @s add fe_travel_party
tag @s add fe_travel_requester
kill @e[tag=fe_travel_ray]
kill @e[tag=fe_travel_anchor]
kill @e[tag=fe_travel_probe]
kill @e[tag=fe_travel_destination]
summon minecraft:marker ~ 64 ~ {Tags:["fe_travel_ray"],Rotation:[0f,0f]}
summon minecraft:marker ~ 64 ~ {Tags:["fe_travel_ray"],Rotation:[11.25f,0f]}
summon minecraft:marker ~ 64 ~ {Tags:["fe_travel_ray"],Rotation:[22.5f,0f]}
summon minecraft:marker ~ 64 ~ {Tags:["fe_travel_ray"],Rotation:[33.75f,0f]}
summon minecraft:marker ~ 64 ~ {Tags:["fe_travel_ray"],Rotation:[45f,0f]}
summon minecraft:marker ~ 64 ~ {Tags:["fe_travel_ray"],Rotation:[56.25f,0f]}
summon minecraft:marker ~ 64 ~ {Tags:["fe_travel_ray"],Rotation:[67.5f,0f]}
summon minecraft:marker ~ 64 ~ {Tags:["fe_travel_ray"],Rotation:[78.75f,0f]}
summon minecraft:marker ~ 64 ~ {Tags:["fe_travel_ray"],Rotation:[90f,0f]}
summon minecraft:marker ~ 64 ~ {Tags:["fe_travel_ray"],Rotation:[101.25f,0f]}
summon minecraft:marker ~ 64 ~ {Tags:["fe_travel_ray"],Rotation:[112.5f,0f]}
summon minecraft:marker ~ 64 ~ {Tags:["fe_travel_ray"],Rotation:[123.75f,0f]}
summon minecraft:marker ~ 64 ~ {Tags:["fe_travel_ray"],Rotation:[135f,0f]}
summon minecraft:marker ~ 64 ~ {Tags:["fe_travel_ray"],Rotation:[146.25f,0f]}
summon minecraft:marker ~ 64 ~ {Tags:["fe_travel_ray"],Rotation:[157.5f,0f]}
summon minecraft:marker ~ 64 ~ {Tags:["fe_travel_ray"],Rotation:[168.75f,0f]}
summon minecraft:marker ~ 64 ~ {Tags:["fe_travel_ray"],Rotation:[180f,0f]}
summon minecraft:marker ~ 64 ~ {Tags:["fe_travel_ray"],Rotation:[191.25f,0f]}
summon minecraft:marker ~ 64 ~ {Tags:["fe_travel_ray"],Rotation:[202.5f,0f]}
summon minecraft:marker ~ 64 ~ {Tags:["fe_travel_ray"],Rotation:[213.75f,0f]}
summon minecraft:marker ~ 64 ~ {Tags:["fe_travel_ray"],Rotation:[225f,0f]}
summon minecraft:marker ~ 64 ~ {Tags:["fe_travel_ray"],Rotation:[236.25f,0f]}
summon minecraft:marker ~ 64 ~ {Tags:["fe_travel_ray"],Rotation:[247.5f,0f]}
summon minecraft:marker ~ 64 ~ {Tags:["fe_travel_ray"],Rotation:[258.75f,0f]}
summon minecraft:marker ~ 64 ~ {Tags:["fe_travel_ray"],Rotation:[270f,0f]}
summon minecraft:marker ~ 64 ~ {Tags:["fe_travel_ray"],Rotation:[281.25f,0f]}
summon minecraft:marker ~ 64 ~ {Tags:["fe_travel_ray"],Rotation:[292.5f,0f]}
summon minecraft:marker ~ 64 ~ {Tags:["fe_travel_ray"],Rotation:[303.75f,0f]}
summon minecraft:marker ~ 64 ~ {Tags:["fe_travel_ray"],Rotation:[315f,0f]}
summon minecraft:marker ~ 64 ~ {Tags:["fe_travel_ray"],Rotation:[326.25f,0f]}
summon minecraft:marker ~ 64 ~ {Tags:["fe_travel_ray"],Rotation:[337.5f,0f]}
summon minecraft:marker ~ 64 ~ {Tags:["fe_travel_ray"],Rotation:[348.75f,0f]}
title @a[tag=fe_travel_party] actionbar {"text":"正在搜索安全落点……","color":"gold"}
