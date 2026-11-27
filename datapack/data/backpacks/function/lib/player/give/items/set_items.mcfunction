# > backpacks:lib/player/give/items/main
# Give the player a list of items
# Info:
# Must be executed at the player
# backpacks:lib Lib.Player.Give.Items --> Items to give to the player (array)
# Expected:
# Give the items back to the player
# Summon container, set it's contents to "backpacks:lib Lib.Player.Give.Items" and kill it:

# Set items:
data modify entity @s Items set from storage backpacks:lib Lib.Player.Give.Items

# Give items:
kill @s
