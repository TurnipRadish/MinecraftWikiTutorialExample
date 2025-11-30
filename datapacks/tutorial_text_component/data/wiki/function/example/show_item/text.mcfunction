data modify storage wiki:text_component output.result_buffer append value {text: ''}
data modify storage wiki:text_component output.result_buffer append value {text: '['}

# 输入设置的物品、显示文本，输出物品名称对应的文本组件形式
function wiki:get_item_name_text
data modify storage wiki:text_component output.result_buffer append from storage wiki:text_component output.buffer[-1]

data modify storage wiki:text_component output.result_buffer append value {"text": "]"}
