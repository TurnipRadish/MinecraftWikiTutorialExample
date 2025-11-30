scoreboard objectives add sign_click trigger
scoreboard objectives add show_item trigger

forceload add -1 -1 1 1

execute positioned 0 0 0 unless entity @e[type=text_display,tag=global_processor,distance=..1] run summon text_display 0 0 0 {Tags:["global_processor"]}

execute positioned 0 0 0 unless entity @e[type=item_display,tag=global_processor,distance=..1] run summon item_display 0 0 0 {Tags:["global_processor"]}

execute positioned 0 0 0 unless entity @e[type=item,tag=global_processor,distance=..1] run summon item 0 0 0 {Tags:["global_processor"], Item:{id:"stone", components:{'item_model':air}}, Age:-32768, PickupDelay:32767, NoGravity:1b}
