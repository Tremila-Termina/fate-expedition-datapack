tag @a remove fe_target
execute as @r[gamemode=!spectator] run tag @s add fe_target
execute at @a[tag=fe_target,limit=1] run summon minecraft:piglin_brute ~5 ~ ~ {PersistenceRequired:1b,Tags:["fe_event_mob","fe_piglin_captain"],CustomName:'{"text":"追猎队长"}'}
function fate_expedition:events/piglin_reinforce
tellraw @a [{"text":"[事件] ","color":"dark_red","bold":true},{"text":"猪灵追猎：保护被标记的队员并击杀蛮兵队长！","color":"gold"}]
