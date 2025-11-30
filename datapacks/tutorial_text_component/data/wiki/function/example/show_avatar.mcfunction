data modify storage wiki:text_component input set value {}
data modify storage wiki:text_component output set value {}

function wiki:get_player_name_text

data modify storage wiki:text_component output.buffer append value {player:{name:"Alex"}}

data modify storage wiki:text_component output.buffer[-1].player.name set from storage wiki:text_component output.buffer[-2]

data modify storage wiki:text_component output.result set from storage wiki:text_component output.buffer[-1]

function wiki:tellraw_abstract_text_component
