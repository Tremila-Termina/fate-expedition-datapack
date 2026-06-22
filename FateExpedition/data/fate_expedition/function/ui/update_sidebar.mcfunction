scoreboard players set "§0" fe.display 70
scoreboard players set "§1" fe.display 60
scoreboard players set "§2" fe.display 50
scoreboard players set "§3" fe.display 40
scoreboard players set "§4" fe.display 30
scoreboard players set "§5" fe.display 20
scoreboard players reset "§6" fe.display
scoreboard players reset "§7" fe.display
team modify fe.line.stage suffix {"text":"荒野求生","color":"white"}
execute if score #stage fe.data matches 2 run team modify fe.line.stage suffix {"text":"炼狱夺火","color":"red"}
execute if score #stage fe.data matches 3 run team modify fe.line.stage suffix {"text":"要塞追猎","color":"yellow"}
execute if score #stage fe.data matches 4 run team modify fe.line.stage suffix {"text":"终末决战","color":"dark_purple"}
team modify fe.line.fate suffix {"text":"丰饶纪元","color":"green"}
execute if score #fate fe.data matches 2 run team modify fe.line.fate suffix {"text":"血月降临","color":"red"}
execute if score #fate fe.data matches 3 run team modify fe.line.fate suffix {"text":"失序世界","color":"light_purple"}
execute if score #fate fe.data matches 4 run team modify fe.line.fate suffix {"text":"末日倒计时","color":"dark_red"}
team modify fe.line.doom suffix [{"score":{"name":"#doom","objective":"fe.data"}},{"text":" / 10","color":"dark_gray"}]
team modify fe.line.shard suffix {"score":{"name":"#shards","objective":"fe.data"},"color":"gold"}
team modify fe.line.event suffix {"text":"暂时平静","color":"gray"}
execute if score #event fe.data matches 1 run team modify fe.line.event suffix {"text":"血月狩猎","color":"red"}
execute if score #event fe.data matches 2 run team modify fe.line.event suffix {"text":"流星灾雨","color":"gold"}
execute if score #event fe.data matches 3 run team modify fe.line.event suffix {"text":"饥馑迷雾","color":"dark_green"}
execute if score #event fe.data matches 4 run team modify fe.line.event suffix {"text":"远行者补给","color":"green"}
execute if score #event fe.data matches 5 run team modify fe.line.event suffix {"text":"熔炉之心","color":"red"}
execute if score #event fe.data matches 6 run team modify fe.line.event suffix {"text":"猪灵追猎","color":"gold"}
execute if score #event fe.data matches 7 run team modify fe.line.event suffix {"text":"灵魂税契","color":"dark_red"}
execute if score #event fe.data matches 8 run team modify fe.line.event suffix {"text":"镀金喘息","color":"green"}
execute if score #event fe.data matches 9 run team modify fe.line.event suffix {"text":"末影追猎","color":"light_purple"}
execute if score #event fe.data matches 10 run team modify fe.line.event suffix {"text":"迷途回响","color":"gray"}
execute if score #event fe.data matches 11 run team modify fe.line.event suffix {"text":"地脉虫群","color":"dark_green"}
execute if score #event fe.data matches 12 run team modify fe.line.event suffix {"text":"先知之窗","color":"green"}
execute if score #event fe.data matches 13 run team modify fe.line.event suffix {"text":"虚空烈风","color":"aqua"}
execute if score #event fe.data matches 14 run team modify fe.line.event suffix {"text":"水晶共振","color":"light_purple"}
execute if score #event fe.data matches 15 run team modify fe.line.event suffix {"text":"末影人暴动","color":"dark_purple"}
execute if score #event fe.data matches 16 run team modify fe.line.event suffix {"text":"最后的光","color":"yellow"}
execute if score #event fe.data matches 17 run team modify fe.line.event suffix {"text":"雷暴前线","color":"aqua"}
execute if score #event fe.data matches 18 run team modify fe.line.event suffix {"text":"苦力怕围城","color":"dark_green"}
execute if score #event fe.data matches 19 run team modify fe.line.event suffix {"text":"矿脉赐福","color":"green"}
execute if score #event fe.data matches 20 run team modify fe.line.event suffix {"text":"生命回响","color":"green"}
execute if score #event fe.data matches 21 run team modify fe.line.event suffix {"text":"烈焰围城","color":"gold"}
execute if score #event fe.data matches 22 run team modify fe.line.event suffix {"text":"凋零巡猎","color":"dark_gray"}
execute if score #event fe.data matches 23 run team modify fe.line.event suffix {"text":"灵魂疾行","color":"aqua"}
execute if score #event fe.data matches 24 run team modify fe.line.event suffix {"text":"战火赐福","color":"green"}
execute if score #event fe.data matches 25 run team modify fe.line.event suffix {"text":"毒蛛侵入","color":"dark_green"}
execute if score #event fe.data matches 26 run team modify fe.line.event suffix {"text":"门廊守卫","color":"dark_red"}
execute if score #event fe.data matches 27 run team modify fe.line.event suffix {"text":"猎眼直觉","color":"aqua"}
execute if score #event fe.data matches 28 run team modify fe.line.event suffix {"text":"古卷赐福","color":"green"}
execute if score #event fe.data matches 29 run team modify fe.line.event suffix {"text":"龙息花园","color":"light_purple"}
execute if score #event fe.data matches 30 run team modify fe.line.event suffix {"text":"潜影裂隙","color":"dark_purple"}
execute if score #event fe.data matches 31 run team modify fe.line.event suffix {"text":"星尘锋芒","color":"yellow"}
execute if score #event fe.data matches 32 run team modify fe.line.event suffix {"text":"珍珠回响","color":"green"}
execute if score #cat fe.data matches 1 run team modify fe.line.event suffix {"text":"赤色天穹","color":"dark_red","bold":true}
execute if score #cat fe.data matches 2 run team modify fe.line.event suffix {"text":"炼狱开门","color":"red","bold":true}
execute if score #cat fe.data matches 3 run team modify fe.line.event suffix {"text":"破碎罗盘","color":"dark_purple","bold":true}
execute if score #cat fe.data matches 4 run team modify fe.line.event suffix {"text":"虚空审判","color":"dark_purple","bold":true}
team modify fe.line.timer suffix [{"score":{"name":"#cooldown","objective":"fe.data"}},{"text":" 秒","color":"dark_gray"}]
execute if score #event fe.data matches 1.. run team modify fe.line.timer suffix [{"score":{"name":"#event_time","objective":"fe.data"}},{"text":" 秒","color":"white"}]
execute if score #cat fe.data matches 1.. run team modify fe.line.timer suffix [{"score":{"name":"#cat_time","objective":"fe.data"}},{"text":" 秒","color":"red"}]
execute if score #stage fe.data matches 1 run scoreboard players set "§6" fe.display 10
execute if score #stage fe.data matches 1 run team modify fe.line.task suffix {"text":"下界远征","color":"white"}
execute if score #stage fe.data matches 2 run scoreboard players set "§6" fe.display 10
execute if score #stage fe.data matches 2 run team modify fe.line.task suffix {"text":"夺取烈焰","color":"white"}
execute if score #stage fe.data matches 3 run scoreboard players set "§6" fe.display 10
execute if score #stage fe.data matches 3 run team modify fe.line.task suffix {"text":"追寻末路","color":"white"}
execute if score #stage fe.data matches 4 run scoreboard players set "§6" fe.display 10
execute if score #stage fe.data matches 4 run team modify fe.line.task suffix {"text":"水晶破坏者","color":"white"}
execute if score #stage fe.data matches 4 run scoreboard players set "§7" fe.display 5
execute if score #stage fe.data matches 4 run team modify fe.line.dragon suffix [{"text":"第 "},{"score":{"name":"#dragon_phase","objective":"fe.data"}},{"text":" 阶段"}]
execute if score #stage fe.data matches 4 if score #dragon_phase fe.data matches 3 run team modify fe.line.task suffix [{"text":"最后抗争 "},{"score":{"name":"#final_timer","objective":"fe.data"}},{"text":"秒"}]
