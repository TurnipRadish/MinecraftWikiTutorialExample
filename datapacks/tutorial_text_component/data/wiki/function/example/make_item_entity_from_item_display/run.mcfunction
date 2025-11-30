summon item ~ ~ ~ {Item:{id:"stone"},Tags:['temp']}

data modify entity @e[limit=1,distance=..1,tag=temp] Item set from entity @e[limit=1,distance=..1,tag=item_processor] item
