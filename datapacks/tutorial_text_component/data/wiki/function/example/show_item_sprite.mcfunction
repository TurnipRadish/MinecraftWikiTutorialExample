# data modify storage wiki:text_component output set value {buffer:[], result:[]}
data modify storage wiki:text_component input set value {}
data modify storage wiki:text_component output set value {}
data modify storage wiki:text_component input.item set from entity @s SelectedItem

data modify storage wiki:text_component input.item.id set string storage wiki:text_component input.item.id 10

function wiki:example/show_item_sprite/text with storage wiki:text_component input.item

data modify storage wiki:text_component output.result set from storage wiki:text_component output.buffer[-1]

# function wiki:tellraw_abstract_text_component
