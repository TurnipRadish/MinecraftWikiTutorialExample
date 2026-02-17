scoreboard players operation @s rank = #cur rank
# 每循环一次，设置的排名+1
scoreboard players add #cur rank 1
# 将该玩家从剩余待排序玩家中剔除
tag @s add ranked
# 重新设置为最小值，以方便下一次获取剩余待排序实体的最大值
scoreboard players set #max test -2147483648
