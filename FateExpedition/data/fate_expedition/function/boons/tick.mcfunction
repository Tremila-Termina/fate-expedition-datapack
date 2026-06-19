execute if score #pending fe.boon matches 0 if score #upgrade_done fe.boon matches 0 if entity @a[advancements={minecraft:story/upgrade_tools=true}] run function fate_expedition:boons/nodes/upgrade
execute if score #pending fe.boon matches 0 if score #iron_done fe.boon matches 0 if entity @a[advancements={minecraft:story/smelt_iron=true}] run function fate_expedition:boons/nodes/iron
execute if score #pending fe.boon matches 0 if score #diamond_done fe.boon matches 0 if entity @a[advancements={minecraft:story/mine_diamond=true}] run function fate_expedition:boons/nodes/diamond
execute if score #pending fe.boon matches 0 if score #nether_done fe.boon matches 0 if entity @a[advancements={minecraft:story/enter_the_nether=true}] run function fate_expedition:boons/nodes/nether
execute if score #pending fe.boon matches 0 if score #skull_done fe.boon matches 0 if entity @a[advancements={minecraft:nether/find_fortress=true}] run function fate_expedition:boons/nodes/skull
execute if score #pending fe.boon matches 0 if score #bastion_done fe.boon matches 0 if entity @a[advancements={minecraft:nether/find_bastion=true}] run function fate_expedition:boons/nodes/bastion
execute if score #pending fe.boon matches 0 if score #eye_done fe.boon matches 0 if entity @a[advancements={minecraft:story/follow_ender_eye=true}] run function fate_expedition:boons/nodes/eye

