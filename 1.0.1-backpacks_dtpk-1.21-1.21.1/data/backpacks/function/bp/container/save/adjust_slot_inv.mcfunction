# @p[tag=backpacks.backpack_menu_save_this_player] is the player at player | @s is the menu!

# Adjust Slot:
$execute unless data storage backpacks:temp {item:{slot:"weapon.offhand"}} run data modify storage backpacks:temp item.slot set value "container.$(slot)"
function backpacks:bp/container/save/save_to_inv with storage backpacks:temp item
