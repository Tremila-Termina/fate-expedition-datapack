scoreboard players set #dragon_phase fe.data 2
function fate_expedition:doom/add_1
effect give @a[gamemode=!spectator] minecraft:darkness 8 0 true
execute as @a[gamemode=!spectator] at @s run summon minecraft:endermite ~2 ~ ~ {PersistenceRequired:1b,Tags:["fe_event_mob"]}
tellraw @a [{"text":"[龙之灾厄] ","color":"dark_purple","bold":true},{"text":"末影龙进入第二阶段：灾厄+1。","color":"red"}]
