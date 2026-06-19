function fate_expedition:internal/enable_triggers
function fate_expedition:internal/handle_triggers
execute if score #running fe.data matches 1 run function fate_expedition:boons/tick
function fate_expedition:boons/maintain_modifiers
execute if score #running fe.data matches 1 run function fate_expedition:internal/tick_running
