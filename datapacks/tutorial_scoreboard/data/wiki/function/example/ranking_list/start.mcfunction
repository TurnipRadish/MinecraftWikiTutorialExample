# 当前排名必须从1开始，即从第一名开始排
scoreboard players set #cur rank 1
# 开始时必须设置#max为整数最小值，这是为了之后正确获取最大值
scoreboard players set #max test -2147483648

execute as @e[type=minecraft:armor_stand,distance=..6] run function wiki:example/ranking_list/sort_descending/0

# 移除被排序的实体的标签，以便下次排序
tag @e[type=minecraft:armor_stand,distance=..6] remove ranked
