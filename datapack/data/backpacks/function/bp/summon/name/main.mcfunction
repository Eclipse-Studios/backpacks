# > backpacks:bp/summon/summon
# @s & @p[advancements={backpacks:summon_bp=true}] is the player at @s!

# Get the name of the backpack item:
execute if entity @s[tag=backpacks.offhand] run data modify storage backpacks:temp BackpackName.temp set from entity @s Inventory[{Slot:-106b}].components."minecraft:item_name"
execute if entity @s[tag=backpacks.mainhand] run data modify storage backpacks:temp BackpackName.temp set from entity @s SelectedItem.components."minecraft:item_name"

execute if entity @s[tag=backpacks.offhand] run data modify storage backpacks:temp BackpackName.temp set from entity @s Inventory[{Slot:-106b}].components."minecraft:custom_name"
execute if entity @s[tag=backpacks.mainhand] run data modify storage backpacks:temp BackpackName.temp set from entity @s SelectedItem.components."minecraft:custom_name"

# Create name:
data modify storage backpacks:temp BackpackName.Name set value []

execute if data storage backpacks:temp BackpackName.temp[0] run data modify storage backpacks:temp BackpackName.Name set from storage backpacks:temp BackpackName.temp
execute unless data storage backpacks:temp BackpackName.temp[0] run data modify storage backpacks:temp BackpackName.Name append from storage backpacks:temp BackpackName.temp

data modify storage backpacks:temp BackpackName.Name[].color set value '#7b7b00'
data modify storage backpacks:temp BackpackName.Name append value {translate:'space.-4096'}

# Set name:
data modify entity @n[tag=backpacks.backpack_menu,tag=!backpacks.backpack_menu_ready] CustomName set from storage backpacks:temp BackpackName.Name
