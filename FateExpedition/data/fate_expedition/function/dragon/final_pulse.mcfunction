scoreboard players set #final_pulse fe.data 0
effect give @a[gamemode=!spectator] minecraft:wither 5 0 true
function fate_expedition:events/void_push
execute if score #mob_count fe.data matches ..20 as @a[gamemode=!spectator] at @s run summon minecraft:endermite ~3 ~ ~ {PersistenceRequired:1b,Tags:["fe_event_mob"]}
tellraw @a {"text":"终末脉冲爆发！","color":"dark_red","bold":true}
