# Remove the items from the black listed items list from the current menu
# Info:
# @p[tag=backpacks.remember_this_player] --> Player
# @s & backpacks:settings BlacklistedItems.RemoveItems.Input --> Entity container
# Expected:
# @s contents --> Not have any items from the blacklisted items list

# Get items:
data modify storage backpacks:settings BlacklistedItems.RemoveItems.Input set from entity @s Items

# Summon temp container:
summon chest_minecart ~ ~1 ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,Tags:["backpacks.temp_container_blacklisted_items_remove","backpacks.invisible_minecart"]}

# Loop:
function backpacks:lib/settings/blacklisted_items/remove_items/loop

# Give items found:
execute as @p[tag=backpacks.remember_this_player] run function backpacks:lib/player/give/items/main

# Reset:
tp @n[tag=backpacks.temp_container_blacklisted_items_remove] ~ -1000 ~
kill @n[tag=backpacks.temp_container_blacklisted_items_remove]
tag @p[tag=backpacks.remember_this_player] remove backpacks.remember_this_player
