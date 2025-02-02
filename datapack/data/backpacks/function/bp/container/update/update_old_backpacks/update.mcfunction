# > backpacks:bp/container/update/update_old_backpacks/check
# Macros:
# > $(temp): Current slot we are checking (int)
# @s is the menu!
# Update current slot:

# Get number of slots:
$execute store result score $temp_old_backpacks_slots backpacks.slots run data get entity @s Items[{Slot:$(temp)b}].components."minecraft:custom_data".backpacks.contents.slots

# Update:
$execute if score $temp_old_backpacks_slots backpacks.slots matches ..3 run item modify entity @s container.$(temp) backpacks:update_old_models/backpacks/small
$execute if score $temp_old_backpacks_slots backpacks.slots matches 4..9 run item modify entity @s container.$(temp) backpacks:update_old_models/backpacks/medium
$execute if score $temp_old_backpacks_slots backpacks.slots matches 10..18 run item modify entity @s container.$(temp) backpacks:update_old_models/backpacks/big
$execute if score $temp_old_backpacks_slots backpacks.slots matches 19.. run item modify entity @s container.$(temp) backpacks:update_old_models/backpacks/enormous

# Update next (if needed):
execute if score $temp_slot_update_old_item backpacks.slots matches 0..26 run function backpacks:bp/container/update/update_old_backpacks/next
