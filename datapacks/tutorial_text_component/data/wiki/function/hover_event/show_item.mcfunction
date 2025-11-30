# input:
# {item: <要展示的物品>}

data modify storage wiki:text_component output.buffer append value {text:'', hover_event:{action:"show_item"}}
data modify storage wiki:text_component output.buffer[-1].hover_event merge from storage wiki:text_component input.item
