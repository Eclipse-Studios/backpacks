# > backpacks:bp/container/update/main
# @s is the menu!
# Update only backpacks items to support the new "item_model"s

# Update each slot:
data modify storage backpacks:temp temp set value 0
scoreboard players set $temp_slot_update_old_item backpacks.slots 0
function backpacks:bp/container/update/update_old_backpacks/check with storage backpacks:temp
