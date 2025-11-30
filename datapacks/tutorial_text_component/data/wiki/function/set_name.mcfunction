# loot spawn ~ 1000 ~ loot wiki:set_name
data modify entity @e[x=0,y=0,z=0,distance=..1,limit=1,tag=text_processor] text set from storage wiki:text_component input.text

# data modify entity @s CustomName set from entity @e[y=1000,distance=..2,limit=1,type=item] Item.components.'minecraft:custom_name'
data modify entity @s CustomName set from entity @e[x=0,y=0,z=0,distance=..1,limit=1,tag=text_processor] text

# kill @e[y=1000,distance=..2,limit=1,type=item]