# > backpacks:lib/settings/blacklisted_items/remove_items/main
# Remove the items from the black listed items list from the current menu
# Info:
# @s & backpacks:settings BlacklistedItems.RemoveItems.Input --> Entity container
# Expected:
# @s contents --> Not have any items from the blacklisted items list

# Cancel if no more items to check:
execute unless data storage backpacks:settings BlacklistedItems.RemoveItems.Input[0] run return fail

# Set item:
data modify entity @n[tag=backpacks.temp_container_blacklisted_items_remove] Items append from storage backpacks:settings BlacklistedItems.RemoveItems.Input[0]

# If item is from the blacklisted list:
tag @s add backpacks.lib_blacklisted_items_preserve_original
execute as @n[tag=backpacks.temp_container_blacklisted_items_remove] if function backpacks:api/container/settings/get_if_blacklisted_item/main run function backpacks:lib/settings/blacklisted_items/remove_items/remove with storage backpacks:settings BlacklistedItems.RemoveItems.Input[0]
tag @s remove backpacks.lib_blacklisted_items_preserve_original

# Prepare next item:
data remove entity @n[tag=backpacks.temp_container_blacklisted_items_remove] Items
data remove storage backpacks:settings BlacklistedItems.RemoveItems.Input[0]

# Next item:
execute if data storage backpacks:settings BlacklistedItems.RemoveItems.Input[0] run function backpacks:lib/settings/blacklisted_items/remove_items/loop
