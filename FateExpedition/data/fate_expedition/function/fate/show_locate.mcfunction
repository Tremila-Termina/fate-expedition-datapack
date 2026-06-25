execute unless score #shards fe.data matches 5.. run tellraw @s {"text":"碎片不足，需要5枚。","color":"red"}
execute unless score #shards fe.data matches 5.. run return 0
execute unless dimension minecraft:the_nether run tellraw @s {"text":"定位只能在下界购买。","color":"red"}
execute unless dimension minecraft:the_nether run return 0
scoreboard players set @s fe.menu 2
function fate_expedition:fate/use_gui/switch_locate
