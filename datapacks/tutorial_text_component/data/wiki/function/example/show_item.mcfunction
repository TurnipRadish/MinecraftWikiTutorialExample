# 设置物品、显示文本
data modify storage wiki:text_component input set value {}
data modify storage wiki:text_component output set value {result_buffer:[]}
data modify storage wiki:text_component input.item set from entity @s SelectedItem

# 设置文本
function wiki:example/show_item/text

data modify storage wiki:text_component output.result set from storage wiki:text_component output.result_buffer

# 设置样式
function wiki:example/show_item/style

# tellraw显示文本组件
function wiki:tellraw_abstract_text_component

# execute as @n[tag=test] run data modify entity @s text set value {nbt:"output", storage:"wiki:text_component", interpret:true}
