# 设置悬停事件
function wiki:hover_event/show_item
data modify storage wiki:text_component output.result[0].hover_event set from storage wiki:text_component output.buffer[-1].hover_event

# 根据其他数据组件情况设置颜色
execute if items entity @s weapon.mainhand *[rarity="common"] run data modify storage wiki:text_component output.result[0].color set value "white"
execute if items entity @s weapon.mainhand *[rarity="uncommon"] run data modify storage wiki:text_component output.result[0].color set value "yellow"
execute if items entity @s weapon.mainhand *[rarity="rare"] run data modify storage wiki:text_component output.result[0].color set value "aqua"
execute if items entity @s weapon.mainhand *[enchantments~[{}]] run data modify storage wiki:text_component output.result[0].color set value "aqua"
execute if items entity @s weapon.mainhand *[rarity="epic"] run data modify storage wiki:text_component output.result[0].color set value "light_purple"