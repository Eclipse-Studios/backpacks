# @s is the menu!

# If enderchest:
execute if score @s backpacks.type matches 1.. run function backpacks:bp/container/enderchest/copy
execute if score @s backpacks.type matches 1.. run return fail

# Get page:
execute store result storage backpacks:temp update.page int 1 run scoreboard players get @s backpacks.pages

# Update:
function backpacks:bp/container/update/update with storage backpacks:temp update

# Update old models to support new ones:
execute unless data entity @s Items[{components:{"minecraft:custom_data":{menu_backpack:{}}}}].components."minecraft:item_model" run function backpacks:bp/container/update/update_old_models/main
execute unless data entity @s Items[{components:{"minecraft:custom_data":{backpacks:{}}}}].components."minecraft:item_model" run function backpacks:bp/container/update/update_old_backpacks/main

# Check if there are items that cannot be in the backpack, if so, give them back to the player:
execute if score @s backpacks.type matches 1 run return fail 
execute if score $blacklisted_items backpacks.settings matches 1.. unless function backpacks:api/container/settings/get_if_blacklisted_item/main run return fail
execute if score $blacklisted_items backpacks.settings matches ..0 unless items entity @s container.* #bundles run return fail

tag @s add backpacks.remove_this_items_update
execute as @a if score @s backpacks.id = @n[tag=backpacks.remove_this_items_update] backpacks.id run tag @s add backpacks.remember_this_player
tag @s remove backpacks.remove_this_items_update
execute at @s run function backpacks:lib/settings/blacklisted_items/remove_items/main
