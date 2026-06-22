execute as @a[gamemode=!spectator] at @s run summon minecraft:marker ~5 ~ ~ {Tags:["fe_breath_marker","fe_marker_new"]}
scoreboard players set @e[tag=fe_marker_new] fe.timer 3
tag @e[tag=fe_marker_new] remove fe_marker_new
execute as @e[tag=fe_breath_marker] at @s run particle minecraft:dragon_breath ~ ~0.2 ~ 1 0.2 1 0.02 30 force
playsound minecraft:entity.ender_dragon.growl hostile @a[gamemode=!spectator] ~ ~ ~ 0.4 1.4
