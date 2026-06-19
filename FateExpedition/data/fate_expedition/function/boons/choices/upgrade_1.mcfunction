scoreboard players set #pending fe.boon 0
scoreboard players set #m_upgrade_health fe.boon 1
function fate_expedition:boons/apply_active_modifiers
tellraw @a [{"text":"[里程碑] ","color":"aqua"},{"text":"团队奖励已生效。","color":"blue"}]
