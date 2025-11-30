summon item ~ 1000 ~ {Item:{id:"stone"}}

execute at @s as @e[y=1000,distance=..2,type=item,limit=1] run function wiki:get_dynamic_name {name:{selector:"@p"}}

data modify storage wiki:text_component output.buffer[-1] set from storage wiki:text_component output.buffer[-1].text

kill @e[y=1000,distance=..2,type=item]
