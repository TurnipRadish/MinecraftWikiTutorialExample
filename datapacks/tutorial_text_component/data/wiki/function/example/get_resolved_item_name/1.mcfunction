data modify entity @s Item set from storage wiki:text_component input.item

item modify entity @s contents {\
  "function": "set_name",\
  "name": {selector: "@s"}, \
  "entity": "this", \
  "target": "custom_name"\
}

data modify storage wiki:text_component output.result set from entity @s Item.components."minecraft:custom_name"
