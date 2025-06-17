# > backpacks:bp/container/interaction/locked_slots/main & backpacks:bp/container/interaction/locked_slots/macro_check
# @s is the chest minecart!
# An menu item has been clicked
# Check if the current slot is correctly locked
# Macros:
# > $(Slot): Current slot we are checking (int)

# Check if we need to check the current slot:
$execute if items entity @s container.$(Slot) *[minecraft:custom_data~{menu_backpack:{}}] unless items entity @s container.$(Slot) *[minecraft:custom_data~{menu_backpack:{Slot:$(Slot)}}] run return run function backpacks:bp/container/interaction/locked_slots/restore_slot with storage backpacks:temp ShouldLockedSlot

# Check for the next one:
execute store result score $temp_slot_locked backpacks.temp run data get storage backpacks:temp ShouldLockedSlot.Slot
execute store result storage backpacks:temp ShouldLockedSlot.Slot int 1 run scoreboard players add $temp_slot_locked backpacks.temp 1

execute if score $temp_slot_locked backpacks.temp matches ..26 run function backpacks:bp/container/interaction/locked_slots/macro_check with storage backpacks:temp ShouldLockedSlot
