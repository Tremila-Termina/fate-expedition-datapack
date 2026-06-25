function fate_expedition:internal/enable_triggers
function fate_expedition:internal/handle_triggers
execute if score #running fe.data matches 1 run function fate_expedition:boons/tick
function fate_expedition:boons/maintain_modifiers
execute if score #use_gui_active fe.data matches 1 run function fate_expedition:fate/use_gui/tick
execute if score #locate_active fe.data matches 1 run function fate_expedition:fate/locate_tick
execute if score #travel_active fe.data matches 1 run function fate_expedition:fate/travel_tick
execute if score #running fe.data matches 1 run function fate_expedition:internal/tick_running
