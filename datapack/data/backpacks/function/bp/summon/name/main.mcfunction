# > backpacks:bp/summon/summon
# @s & @p[advancements={backpacks:summon_bp=true}] is the player at @s!

# Get the name of the backpack item:
execute if entity @s[tag=backpacks.offhand] run data modify storage backpacks:temp BackpackName.temp set from entity @s Inventory[{Slot:-106b}].components."minecraft:item_name"
execute if entity @s[tag=backpacks.mainhand] run data modify storage backpacks:temp BackpackName.temp set from entity @s SelectedItem.components."minecraft:item_name"

execute if entity @s[tag=backpacks.offhand] run data modify storage backpacks:temp BackpackName.temp set from entity @s Inventory[{Slot:-106b}].components."minecraft:custom_name"
execute if entity @s[tag=backpacks.mainhand] run data modify storage backpacks:temp BackpackName.temp set from entity @s SelectedItem.components."minecraft:custom_name"

# Slice the string to remove the "{}"
data modify storage backpacks:temp BackpackName.temp_ set string storage backpacks:temp BackpackName.temp 1 -1

# Create string:
function backpacks:bp/summon/name/make_name with storage backpacks:temp BackpackName

# Set name:
data modify entity @n[tag=backpacks.backpack_menu,tag=!backpacks.backpack_menu_ready] CustomName set from storage backpacks:temp BackpackName.Name
