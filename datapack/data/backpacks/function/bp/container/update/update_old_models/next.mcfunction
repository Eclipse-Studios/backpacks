# @s is the menu!
# Check next slot:

# Get:
execute store result score $temp_slot_update_old_item backpacks.slots run data get storage backpacks:temp temp

# Add one:
scoreboard players add $temp_slot_update_old_item backpacks.slots 1

# Set back to storage:
execute store result storage backpacks:temp temp int 1 run scoreboard players get $temp_slot_update_old_item backpacks.slots

# Run again if slot is in range:
execute if score $temp_slot_update_old_item backpacks.slots matches 0..26 run function backpacks:bp/container/update/update_old_models/check with storage backpacks:temp
