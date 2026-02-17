# 获取剩余待排序玩家中的最大分数
scoreboard players operation #max test > @e[type=minecraft:armor_stand,distance=..6,tag=!ranked] test

# 找到和当前待排序玩家中最小分数相等的所有玩家，设置其排名
execute as @e[type=minecraft:armor_stand,distance=..6,tag=!ranked] if score @s test = #max test run function wiki:example/ranking_list/sort_descending/1