scoreboard players set #doom_clock fe.data 0
function fate_expedition:doom/add_1
tellraw @a [{"text":"[灾厄] ","color":"dark_red","bold":true},{"text":"命运随时间恶化：灾厄+1。","color":"red"}]
