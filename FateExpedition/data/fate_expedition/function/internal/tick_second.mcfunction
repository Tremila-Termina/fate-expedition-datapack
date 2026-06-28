scoreboard players set #subtick fe.data 0
scoreboard players add #elapsed fe.data 1
scoreboard players set #mob_count fe.data 0
execute as @e[tag=fe_event_mob] run scoreboard players add #mob_count fe.data 1
execute if score #cat fe.data matches 0 run scoreboard players add #doom_clock fe.data 1
execute if score #doom_clock fe.data matches 300.. run function fate_expedition:doom/time_gain
execute if score #fate fe.data matches 4 run scoreboard players remove #deadline fe.data 1
execute if score #fate fe.data matches 4 if score #deadline fe.data matches ..0 run function fate_expedition:stages/defeat
function fate_expedition:stages/tick
function fate_expedition:dragon/tick
execute if score #cat fe.data matches 1.. run function fate_expedition:catastrophes/tick
execute if score #cat fe.data matches 0 if score #event fe.data matches 1.. run function fate_expedition:events/tick
execute if score #cat fe.data matches 0 if score #event fe.data matches 0 if score #cooldown fe.data matches 1.. run scoreboard players remove #cooldown fe.data 1
execute if score #cat fe.data matches 0 if score #event fe.data matches 0 if score #cooldown fe.data matches ..0 run function fate_expedition:events/select
function fate_expedition:ui/update_sidebar
function fate_expedition:advancements/tick
