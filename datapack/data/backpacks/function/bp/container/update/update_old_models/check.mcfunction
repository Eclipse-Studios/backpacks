# > backpacks:bp/container/update/update_old_models/main
# Macros:
# > $(temp): Current slot we are checking (int)
# @s is the menu!
# Check if current slot has an item we need to update:

# Check if not:
$execute unless items entity @s container.$(temp) *[minecraft:custom_data~{menu_backpack:{}}] run function backpacks:bp/container/update/update_old_models/next
$execute if items entity @s container.$(temp) *[minecraft:custom_data~{menu_backpack:{}}] if data entity @s Items[{Slot:$(temp)b}].components."minecraft:item_model" run function backpacks:bp/container/update/update_old_models/next

# Check if we need to update:
$execute if score $temp_slot_update_old_item backpacks.slots matches 0..26 if items entity @s container.$(temp) *[minecraft:custom_data~{menu_backpack:{}}] unless data entity @s Items[{Slot:$(temp)b}].components."minecraft:item_model" run function backpacks:bp/container/update/update_old_models/update with storage backpacks:temp
