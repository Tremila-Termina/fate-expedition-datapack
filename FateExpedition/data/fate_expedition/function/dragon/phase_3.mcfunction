scoreboard players set #dragon_phase fe.data 3
execute if score #doom fe.data matches ..6 run scoreboard players set #doom fe.data 7
scoreboard players set #final_timer fe.data 180
scoreboard players set #final_pulse fe.data 0
tellraw @a [{"text":"[最后抗争] ","color":"dark_red","bold":true},{"text":"180秒后终末脉冲将每20秒爆发。","color":"red"}]
