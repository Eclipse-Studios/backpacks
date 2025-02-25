# Give the player a list of items
# Info:
# Must be executed at the player
# backpacks:lib Lib.Player.Give.Items --> Items to give to the player (array)
# Expected:
# Give the items back to the player

# Summon container, set it's contents to "backpacks:lib Lib.Player.Give.Items" and kill it:
execute summon chest_minecart run function backpacks:lib/player/give/items/set_items

# Reset:
data remove storage backpacks:lib Lib.Player.Give.Items
