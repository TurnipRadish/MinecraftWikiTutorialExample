function wiki:example/show_item_sprite

data modify storage wiki:text_component join set value {buffer:[]}
data modify storage wiki:text_component join.buffer append from storage wiki:text_component output.result

function wiki:example/show_item

data modify storage wiki:text_component join.buffer append from storage wiki:text_component output.result

data modify storage wiki:text_component output.result set from storage wiki:text_component join.buffer

function wiki:tellraw_abstract_text_component
