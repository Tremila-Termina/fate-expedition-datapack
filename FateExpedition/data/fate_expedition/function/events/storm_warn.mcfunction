execute as @a[gamemode=!spectator] at @s run summon minecraft:marker ~6 ~ ~ {Tags:["fe_storm_marker","fe_marker_new"]}
scoreboard players set @e[tag=fe_marker_new] fe.timer 3
tag @e[tag=fe_marker_new] remove fe_marker_new
execute as @e[tag=fe_storm_marker] at @s run particle minecraft:electric_spark ~ ~0.2 ~ 1 0.2 1 0.05 20 force
playsound minecraft:entity.lightning_bolt.thunder hostile @a[gamemode=!spectator] ~ ~ ~ 0.4 1.5
