data modify storage wiki:text_component input set value {}
data modify storage wiki:text_component input.item set from entity @p SelectedItem
data modify storage wiki:text_component input.text set value 'Test'

function wiki:hover_event/build_item_text

function wiki:tellraw_abstract_text_component
