# > backpacks:bp/container/interaction/locked_slots/macro_check
# @s is the chest minecart!
# An menu item has been clicked
# Current slot isn't correctly locked so give it back to the player
# Macros:
# > $(Slot): Current slot we are checking (int)

# Get what item we need to give back to the player:
$data modify storage backpacks:lib Lib.Player.Give.Items append from entity @s Items[{Slot:$(Slot)b}]

# Remove item from the backpack:
$item replace entity @s container.$(Slot) with minecraft:air

# Give it back:
execute as @p[advancements={backpacks:holding_bp=true}] run function backpacks:lib/player/give/items/main

# Don't run this more to make sure this works if more items are present:
return fail
