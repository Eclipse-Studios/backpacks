# @s is the entity to check for
# Check if the current entity has an item from the blacklisted items list
# Expected:
# If it has --> return 1 | If it doesn't has --> return 0

# It doesn't has:
execute unless predicate backpacks:settings/blacklisted_items/list unless items entity @s container.* #shulker_boxes[!minecraft:container=[]] unless items entity @s container.* #bundles run return fail

# It has:
return 1
