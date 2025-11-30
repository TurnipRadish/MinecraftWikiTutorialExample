data modify storage wiki:text_component input set value {}
data modify storage wiki:text_component input.item set from entity @s SelectedItem
data modify storage wiki:text_component input.text set value ['[', '？', ']']

function wiki:get_item_name_text
