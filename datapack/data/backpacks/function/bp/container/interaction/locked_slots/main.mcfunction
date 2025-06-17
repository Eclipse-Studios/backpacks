# > backpacks:bp/container/interaction/main
# @s is the chest minecart!
# An menu item has been clicked
# Check if the slots of the backpack are correctly locked

# Get number of slots that should be locked on the current page:
data modify storage backpacks:temp ShouldLockedSlot.Slot set value 0
function backpacks:bp/container/interaction/locked_slots/macro_check with storage backpacks:temp ShouldLockedSlot
