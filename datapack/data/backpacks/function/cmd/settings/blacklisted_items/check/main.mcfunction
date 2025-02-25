# > #senti:container/changed
# @s is the chest minecart | @p[tag=senti.viewer] is the player!
# Content of the previous tick of the chest minecart is on storage "senti:api old"
# A new item has been added to the backpack
# Check if the new item is in the "blacklisted items" list

# Cancel if backpack is a ender backpack:
execute if score @s backpacks.type matches 1 run return fail

# Cancel if the setting isn't on (and if there isn't a bundle):
execute unless items entity @s container.* #bundles if score $blacklisted_items backpacks.settings matches 0 run return fail

# Cancel if the item is the backpack itself:
execute store result score $blacklisted_items_bp_id backpacks.settings run data get storage backpacks:container Output[0].components."minecraft:custom_data".backpacks.init.id
execute if score $blacklisted_items_bp_id backpacks.settings = @s backpacks.id run return fail

# Cancel if not founded any items from the list:
execute unless function backpacks:api/container/settings/get_if_blacklisted_item/main run return fail

# Remove items and give them back:
tag @p[tag=senti.viewer] add backpacks.remember_this_player
execute at @s run function backpacks:lib/settings/blacklisted_items/remove_items/main
