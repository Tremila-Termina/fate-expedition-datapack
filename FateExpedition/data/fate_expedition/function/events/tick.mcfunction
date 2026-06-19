scoreboard players add #event_elapsed fe.data 1
scoreboard players remove #event_time fe.data 1
function fate_expedition:events/pulse
execute if score #event_time fe.data matches ..0 run function fate_expedition:events/finish
