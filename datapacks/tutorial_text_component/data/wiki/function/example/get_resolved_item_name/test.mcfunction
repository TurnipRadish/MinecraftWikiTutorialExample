data modify storage wiki:text_component input.item set from entity @s SelectedItem

function wiki:example/get_resolved_item_name/run

# tellraw @s {nbt:"output.result", storage:"wiki:text_component", interpret:false}
