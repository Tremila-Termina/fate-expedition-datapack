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
function fate_expedition:boons/maintain_modifiers
tellraw @a [{"text":"[命运远征] ","color":"dark_purple","bold":true},{"text":"v0.1.0 已加载。使用 /trigger fe_ping 检测。","color":"gray"}]
