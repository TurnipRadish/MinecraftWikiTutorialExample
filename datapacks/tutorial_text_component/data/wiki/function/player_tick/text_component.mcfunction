scoreboard players enable @s sign_click
scoreboard players enable @s show_item

execute if score @s sign_click matches 1 run function wiki:click_event/sign_1
execute if score @s show_item matches 1 run function wiki:example/show_item

execute if score @s sign_click matches 1.. run scoreboard players set @s sign_click 0
execute if score @s show_item matches 1.. run scoreboard players set @s show_item 0
