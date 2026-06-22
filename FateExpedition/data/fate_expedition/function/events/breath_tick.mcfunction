execute as @e[tag=fe_breath_marker] run scoreboard players remove @s fe.timer 1
execute as @e[tag=fe_breath_marker] at @s run particle minecraft:dragon_breath ~ ~0.3 ~ 1.5 0.3 1.5 0.03 25 force
execute as @e[tag=fe_breath_marker,scores={fe.timer=..0}] at @s as @a[distance=..3,gamemode=!spectator] run damage @s 5 minecraft:indirect_magic
kill @e[tag=fe_breath_marker,scores={fe.timer=..0}]
