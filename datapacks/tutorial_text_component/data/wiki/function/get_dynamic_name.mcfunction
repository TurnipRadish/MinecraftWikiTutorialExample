$item modify entity @s contents [\
  {\
    "function": "set_name",\
    "name": $(name),\
    "target": "custom_name",\
    "entity": "this"\
  }\
]\

data modify storage wiki:text_component output.buffer append value ''
data modify storage wiki:text_component output.buffer[-1] set from entity @s Item.components.'minecraft:custom_name'

# execute as @p run function wiki:tellraw_abstract_text_component

kill @s
