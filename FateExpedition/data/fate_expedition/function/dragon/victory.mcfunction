title @a title {"text":"命运已被征服","color":"gold","bold":true}
title @a subtitle [{"text":"事件 ","color":"gray"},{"score":{"name":"#events","objective":"fe.data"},"color":"aqua"},{"text":" | 大灾变 ","color":"gray"},{"score":{"name":"#cats","objective":"fe.data"},"color":"red"},{"text":" | 死亡 ","color":"gray"},{"score":{"name":"#deaths","objective":"fe.data"},"color":"dark_red"}]
tellraw @a [{"text":"[通关战报] ","color":"gold","bold":true},{"text":"事件=","color":"gray"},{"score":{"name":"#events","objective":"fe.data"}},{"text":"，大灾变=","color":"gray"},{"score":{"name":"#cats","objective":"fe.data"}},{"text":"，死亡=","color":"gray"},{"score":{"name":"#deaths","objective":"fe.data"}},{"text":"，剩余碎片=","color":"gray"},{"score":{"name":"#shards","objective":"fe.data"}}]
function fate_expedition:admin/stop
