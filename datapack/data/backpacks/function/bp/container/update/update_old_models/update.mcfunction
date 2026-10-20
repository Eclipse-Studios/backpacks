# > backpacks:bp/container/update/update_old_models/check
# Macros:
# > $(temp): Current slot we are checking (int)
# @s is the menu!
# Update current slot:

# Update:
$execute if data entity @s Items[{Slot:$(temp)b}].components."minecraft:custom_data".menu_backpack.next_page run item modify entity @s container.$(temp) backpacks:update_old_models/gui/next_page
$execute if data entity @s Items[{Slot:$(temp)b}].components."minecraft:custom_data".menu_backpack.go_back run item modify entity @s container.$(temp) backpacks:update_old_models/gui/go_back
$execute if data entity @s Items[{Slot:$(temp)b}].components."minecraft:custom_data".menu_backpack.empty run item modify entity @s container.$(temp) backpacks:update_old_models/gui/empty

# Update next (if needed):
execute if score $temp_slot_update_old_item backpacks.slots matches 0..26 run function backpacks:bp/container/update/update_old_models/next
