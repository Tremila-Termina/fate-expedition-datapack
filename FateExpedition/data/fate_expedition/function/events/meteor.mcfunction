execute as @a[gamemode=!spectator] at @s run particle minecraft:flame ~ ~0.2 ~ 1 0.1 1 0.02 30 force
execute as @a[gamemode=!spectator] at @s run playsound minecraft:entity.tnt.primed master @s ~ ~ ~ 0.8 1.3
execute as @a[gamemode=!spectator] at @s run summon minecraft:tnt ~ ~8 ~ {fuse:60}
