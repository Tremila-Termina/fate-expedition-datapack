execute as @a run attribute @s minecraft:max_health modifier remove fate_expedition:upgrade_health
execute as @a run attribute @s minecraft:movement_speed modifier remove fate_expedition:upgrade_speed
execute as @a run attribute @s minecraft:armor modifier remove fate_expedition:iron_armor
execute as @a run attribute @s minecraft:max_health modifier remove fate_expedition:iron_health
execute as @a run attribute @s minecraft:attack_damage modifier remove fate_expedition:diamond_damage
execute as @a run attribute @s minecraft:armor_toughness modifier remove fate_expedition:diamond_toughness
execute as @a run attribute @s minecraft:block_interaction_range modifier remove fate_expedition:nether_block_reach
execute as @a run attribute @s minecraft:entity_interaction_range modifier remove fate_expedition:nether_entity_reach
execute as @a run attribute @s minecraft:movement_speed modifier remove fate_expedition:nether_stride_speed
execute as @a run attribute @s minecraft:step_height modifier remove fate_expedition:nether_stride_step
execute as @a run attribute @s minecraft:max_health modifier remove fate_expedition:skull_health
execute as @a run attribute @s minecraft:attack_damage modifier remove fate_expedition:skull_damage
execute as @a run attribute @s minecraft:armor modifier remove fate_expedition:bastion_armor
execute as @a run attribute @s minecraft:movement_speed modifier remove fate_expedition:bastion_speed
execute as @a run attribute @s minecraft:knockback_resistance modifier remove fate_expedition:bastion_knockback
execute as @a run attribute @s minecraft:max_health modifier remove fate_expedition:eye_health
execute as @a run attribute @s minecraft:armor_toughness modifier remove fate_expedition:eye_toughness
execute as @a run attribute @s minecraft:knockback_resistance modifier remove fate_expedition:eye_knockback
tag @a remove fe_m_upgrade_health
tag @a remove fe_m_upgrade_speed
tag @a remove fe_m_iron_armor
tag @a remove fe_m_iron_health
tag @a remove fe_m_diamond_damage
tag @a remove fe_m_diamond_toughness
tag @a remove fe_m_nether_reach
tag @a remove fe_m_nether_stride
tag @a remove fe_m_skull_health
tag @a remove fe_m_skull_damage
tag @a remove fe_m_bastion_armor
tag @a remove fe_m_bastion_momentum
tag @a remove fe_m_eye_health
tag @a remove fe_m_eye_dragon
scoreboard players set #m_upgrade_health fe.boon 0
scoreboard players set #m_upgrade_speed fe.boon 0
scoreboard players set #m_iron_armor fe.boon 0
scoreboard players set #m_iron_health fe.boon 0
scoreboard players set #m_diamond_damage fe.boon 0
scoreboard players set #m_diamond_toughness fe.boon 0
scoreboard players set #m_nether_reach fe.boon 0
scoreboard players set #m_nether_stride fe.boon 0
scoreboard players set #m_skull_health fe.boon 0
scoreboard players set #m_skull_damage fe.boon 0
scoreboard players set #m_bastion_armor fe.boon 0
scoreboard players set #m_bastion_momentum fe.boon 0
scoreboard players set #m_eye_health fe.boon 0
scoreboard players set #m_eye_dragon fe.boon 0

