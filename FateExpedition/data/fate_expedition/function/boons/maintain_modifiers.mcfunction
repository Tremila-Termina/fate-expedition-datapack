scoreboard players add @a fe.deaths 0
scoreboard players add @a fe.boon_seen 0
execute as @a unless score @s fe.deaths = @s fe.boon_seen run function fate_expedition:boons/refresh_player
execute as @a run scoreboard players operation @s fe.boon_seen = @s fe.deaths
function fate_expedition:boons/check_modifiers
function fate_expedition:boons/apply_active_modifiers
