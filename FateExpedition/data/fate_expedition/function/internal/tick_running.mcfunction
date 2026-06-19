scoreboard players set #online fe.data 0
execute as @a[gamemode=!spectator] run scoreboard players add #online fe.data 1
execute if score #online fe.data matches 1.. run scoreboard players add #subtick fe.data 1
execute as @a unless score @s fe.deaths = @s fe.prev run function fate_expedition:internal/on_death
execute as @a run scoreboard players operation @s fe.prev = @s fe.deaths
execute if score #subtick fe.data matches 20.. run function fate_expedition:internal/tick_second
