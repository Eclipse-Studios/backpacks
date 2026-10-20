# > backpacks:bp/container/update/update_old_backpacks/main
# Macros:
# > $(temp): Current slot we are checking (int)
# @s is the menu!
# Check if current slot has an item we need to update:

# Check if not:
$execute unless items entity @s container.$(temp) *[minecraft:custom_data~{backpacks:{}}] run function backpacks:bp/container/update/update_old_backpacks/next
$execute if items entity @s container.$(temp) *[minecraft:custom_data~{backpacks:{}}] if data entity @s Items[{Slot:$(temp)b}].components."minecraft:item_model" run function backpacks:bp/container/update/update_old_backpacks/next

# Check if we need to update:
$execute if score $temp_slot_update_old_item backpacks.slots matches 0..26 if items entity @s container.$(temp) *[minecraft:custom_data~{backpacks:{}}] unless data entity @s Items[{Slot:$(temp)b}].components."minecraft:item_model" run function backpacks:bp/container/update/update_old_backpacks/update with storage backpacks:temp
