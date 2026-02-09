scoreboard objectives add sign_click trigger
scoreboard objectives add show_item trigger

forceload add -1 -1 1 1

execute unless block 0 0 0 #air run tellraw @a {text:"警告：(0, 0, 0)处的方块不是空气，可能影响全局实体的工作预期，\n请在清除此处的方块后清理世界实体并重新加载数据包","color":"red"}

execute positioned 0 0 0 unless entity @e[type=text_display,tag=global_processor,distance=..1024] run summon text_display 0 0 0 {Tags:["global_processor"]}

execute positioned 0 0 0 unless entity @e[type=item_display,tag=global_processor,distance=..1024] run summon item_display 0 0 0 {Tags:["global_processor"]}

execute positioned 0 0 0 unless entity @e[type=item,tag=global_processor,distance=..1024] run summon item 0 0 0 {Tags:["global_processor"], Item:{id:"stone", components:{'item_model':air}}, Age:-32768, PickupDelay:32767, NoGravity:1b}
