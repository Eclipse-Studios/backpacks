# @s is the player!

# Get item id:
execute store result score $check_item_id backpacks.id run data get entity @s SelectedItem.components."minecraft:custom_data".backpacks.init.id

# Check:
execute if score @s backpacks.id = $check_item_id backpacks.id run return 1
execute unless score @s backpacks.id = $check_item_id backpacks.id run return fail

# Get item id:
execute store result score $check_item_id backpacks.id run data get entity @s Inventory[{Slot:-106b}].components."minecraft:custom_data".backpacks.init.id

# Check:
execute if score @s backpacks.id = $check_item_id backpacks.id run return 1
execute unless score @s backpacks.id = $check_item_id backpacks.id run return fail
