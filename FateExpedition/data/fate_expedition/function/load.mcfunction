scoreboard objectives add fe.data dummy
scoreboard objectives add fe.deaths deathCount
scoreboard objectives add fe.prev dummy
scoreboard objectives add fe.boon_seen dummy
scoreboard objectives add fe.display dummy
scoreboard objectives add fe.boon dummy
scoreboard objectives add fe.attr dummy
scoreboard objectives add fe.enchant dummy
scoreboard objectives add fe.found dummy
scoreboard objectives add fe.pick dummy
scoreboard objectives add fe.random dummy
scoreboard objectives add fe.timer dummy
scoreboard objectives add fe_start trigger
scoreboard objectives add fe_stop trigger
scoreboard objectives add use trigger
scoreboard objectives add fe_use trigger
scoreboard objectives add fe_locate trigger
scoreboard objectives add fe_travel trigger
scoreboard objectives add fe.menu dummy
scoreboard objectives add fe_choice trigger
scoreboard objectives add fe_boon trigger
scoreboard objectives add fe_ping trigger
scoreboard objectives add fe_uninstall trigger
scoreboard players add #running fe.data 0
scoreboard players add #pending fe.boon 0
scoreboard players add #upgrade_done fe.boon 0
scoreboard players add #iron_done fe.boon 0
scoreboard players add #diamond_done fe.boon 0
scoreboard players add #nether_done fe.boon 0
scoreboard players add #skull_done fe.boon 0
scoreboard players add #bastion_done fe.boon 0
scoreboard players add #eye_done fe.boon 0
scoreboard players add #m_upgrade_health fe.boon 0
scoreboard players add #m_upgrade_speed fe.boon 0
scoreboard players add #m_iron_armor fe.boon 0
scoreboard players add #m_iron_health fe.boon 0
scoreboard players add #m_diamond_damage fe.boon 0
scoreboard players add #m_diamond_toughness fe.boon 0
scoreboard players add #m_nether_reach fe.boon 0
scoreboard players add #m_nether_stride fe.boon 0
scoreboard players add #m_skull_health fe.boon 0
scoreboard players add #m_skull_damage fe.boon 0
scoreboard players add #m_bastion_armor fe.boon 0
scoreboard players add #m_bastion_momentum fe.boon 0
scoreboard players add #m_eye_health fe.boon 0
scoreboard players add #m_eye_dragon fe.boon 0
scoreboard players set #zero fe.data 0
scoreboard players add #history_1 fe.data 0
scoreboard players add #history_2 fe.data 0
scoreboard players add #history_3 fe.data 0
scoreboard players add #travel_active fe.data 0
scoreboard players add #travel_reserved fe.data 0
scoreboard players add #travel_distance fe.data 0
scoreboard players add #travel_ticks fe.data 0
scoreboard players add #travel_type fe.data 0
execute if score #travel_reserved fe.data matches 1 run scoreboard players add #shards fe.data 10
scoreboard players set #travel_reserved fe.data 0
scoreboard players set #travel_active fe.data 0
kill @e[tag=fe_travel_ray]
kill @e[tag=fe_travel_destination]
team add fe.line.stage
team add fe.line.fate
team add fe.line.doom
team add fe.line.shard
team add fe.line.event
team add fe.line.timer
team add fe.line.task
team add fe.line.dragon
team modify fe.line.stage prefix {"text":"阶段：","color":"light_purple"}
team modify fe.line.fate prefix {"text":"命运：","color":"aqua"}
team modify fe.line.doom prefix {"text":"灾厄：","color":"gold"}
team modify fe.line.shard prefix {"text":"碎片：","color":"aqua"}
team modify fe.line.event prefix {"text":"事件：","color":"yellow"}
team modify fe.line.timer prefix {"text":"时间：","color":"gray"}
team modify fe.line.task prefix {"text":"任务：","color":"green"}
team modify fe.line.dragon prefix {"text":"龙战：","color":"dark_purple"}
team join fe.line.stage "§0"
team join fe.line.fate "§1"
team join fe.line.doom "§2"
team join fe.line.shard "§3"
team join fe.line.event "§4"
team join fe.line.timer "§5"
team join fe.line.task "§6"
team join fe.line.dragon "§7"
function fate_expedition:boons/maintain_modifiers
tellraw @a [{"text":"[命运远征] ","color":"dark_purple","bold":true},{"text":"v0.1.3 已加载。使用 /trigger fe_ping 检测。","color":"gray"}]
