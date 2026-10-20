# @s & @p[advancements={backpacks:holding_bp=true}] is the player at @s! | Its menu is @n[tag=backpacks.this_backpack_menu]!

# Get Slots:
data modify storage backpacks:temp set_back.Slot set from entity @s Inventory[{components:{"minecraft:custom_data":{menu_backpack:{}}}}].components."minecraft:custom_data".menu_backpack.Slot
data modify storage backpacks:temp set_back.player_Slot set from entity @s Inventory[{components:{"minecraft:custom_data":{menu_backpack:{}}}}].Slot

# Set back:
function backpacks:bp/container/interaction/set_back with storage backpacks:temp set_back
