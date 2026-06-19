execute as @a[gamemode=!spectator] at @s facing 0 80 0 run tp @s ^ ^ ^-0.75
execute if score #doom fe.data matches 6.. as @a[gamemode=!spectator] at @s facing 0 80 0 run tp @s ^ ^ ^-0.5
playsound minecraft:entity.breeze.wind_burst master @a ~ ~ ~ 0.6 0.8
