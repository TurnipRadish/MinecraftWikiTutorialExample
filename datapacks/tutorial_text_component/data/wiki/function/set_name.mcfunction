loot spawn ~ 1000 ~ loot wiki:set_name

data modify entity @s CustomName set from entity @e[y=1000,distance=..2,limit=1,type=item] Item.components.'minecraft:custom_name'

kill @e[y=1000,distance=..2,limit=1,type=item]

# tp @e[y=1000,distance=..2,limit=1,type=item] ~ ~ ~
