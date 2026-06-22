execute as @e[tag=fe_storm_marker] run scoreboard players remove @s fe.timer 1
execute as @e[tag=fe_storm_marker] at @s run particle minecraft:electric_spark ~ ~0.2 ~ 0.6 0.1 0.6 0.02 8 force
execute as @e[tag=fe_storm_marker,scores={fe.timer=..0}] at @s run summon minecraft:lightning_bolt ~ ~ ~
kill @e[tag=fe_storm_marker,scores={fe.timer=..0}]
