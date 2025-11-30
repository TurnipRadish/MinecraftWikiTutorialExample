data modify storage wiki:text_component input.args set value {id:"",nbt:{}}
data modify storage wiki:text_component input.args.id set value "item"
data modify storage wiki:text_component input.args.nbt.Item set from storage wiki:text_component input.item

execute positioned ~ 1000 ~ run function wiki:summon_abstract_entity with storage wiki:text_component input.args

execute as @e[y=1000,distance=..2,type=item] run function wiki:get_dynamic_name {name:{selector:"@s"}}

# 组装输出
data modify storage wiki:text_component output.buffer append value {}
data modify storage wiki:text_component output.buffer[-1].translate set from storage wiki:text_component output.buffer[-2].translate

data modify storage wiki:text_component output.buffer[-1] set from storage wiki:text_component input.item.components.'minecraft:item_name'

data modify storage wiki:text_component output.buffer[-1] set from storage wiki:text_component input.item.components.'minecraft:custom_name'

# execute as @p run function wiki:tellraw_abstract_text_component
