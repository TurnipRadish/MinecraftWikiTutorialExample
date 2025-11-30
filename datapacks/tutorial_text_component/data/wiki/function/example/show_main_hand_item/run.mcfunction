data modify storage wiki:text_component input set value {}
data modify storage wiki:text_component output set value {}
data modify storage wiki:text_component input.item set from entity @s SelectedItem

function wiki:example/get_resolved_item_name/run

data modify storage wiki:text_component output.buffer set value []
data modify storage wiki:text_component output.buffer append value {text:'['}
data modify storage wiki:text_component output.buffer append value []
data modify storage wiki:text_component output.buffer[1] append value {text:'', hover_event:{action:"show_item"}}
data modify storage wiki:text_component output.buffer[1][0].hover_event merge from storage wiki:text_component input.item
data modify storage wiki:text_component output.buffer[1] append value {translate:''}
data modify storage wiki:text_component output.buffer[1][1].translate set from storage wiki:text_component output.result.translate
data modify storage wiki:text_component output.buffer append value {text:']'}

data modify storage wiki:text_component output.result set from storage wiki:text_component output.buffer

# 根据数据组件设置颜色
execute if items entity @s weapon.mainhand *[rarity="common"] run data modify storage wiki:text_component output.result[0].color set value "white"
execute if items entity @s weapon.mainhand *[rarity="uncommon"] run data modify storage wiki:text_component output.result[0].color set value "yellow"
execute if items entity @s weapon.mainhand *[rarity="rare"] run data modify storage wiki:text_component output.result[0].color set value "aqua"
execute if items entity @s weapon.mainhand *[enchantments~[{}]] run data modify storage wiki:text_component output.result[0].color set value "aqua"
execute if items entity @s weapon.mainhand *[rarity="epic"] run data modify storage wiki:text_component output.result[0].color set value "light_purple"

# 尝试使用item_name和custom_name覆盖
data modify storage wiki:text_component output.result[1][1] set from storage wiki:text_component input.item.components."minecraft:item_name"

data modify storage wiki:text_component output.result[1][1] set from storage wiki:text_component input.item.components."minecraft:custom_name"


