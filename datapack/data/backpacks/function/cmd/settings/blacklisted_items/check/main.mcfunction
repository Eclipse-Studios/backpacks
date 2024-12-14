# > #senti:container/changed
# @s is the chest minecart | @p[tag=senti.viewer] is the player!
# Content of the previous tick of the chest minecart is on storage "senti:api old"
# A new item has been added to the backpack
# Check if the new item is in the "blacklisted items" list

# Cancel if the setting isn't on:
execute if score $blacklisted_items backpacks.settings matches 0 run return fail

# Cancel if backpack is a ender backpack:
execute if score @s backpacks.type matches 1 run return fail

# Check:
execute unless predicate backpacks:settings/blacklisted_items/list unless items entity @s container.* #shulker_boxes[!minecraft:container=[]] run return fail

# Get difference between the two containers (result is in backpacks:container Output):
data modify storage backpacks:container Container1 set from storage senti:api old
data modify storage backpacks:container Container2 set from entity @s Items
function backpacks:api/container/difference/main

# Cancel if the item is the backpack itself:
execute store result score $blacklisted_items_bp_id backpacks.settings run data get storage backpacks:container Output[0].components."minecraft:custom_data".backpacks.init.id
execute if score $blacklisted_items_bp_id backpacks.settings = @s backpacks.id run return fail

# Give difference:
execute at @p[tag=senti.viewer] run summon chest_minecart ~ ~1 ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,CustomDisplayTile:1b,Tags:["backpacks.setting_give_difference","backpacks.invisible_minecart"]}
data modify entity @n[tag=backpacks.setting_give_difference] Items set from storage backpacks:container Output
kill @n[tag=backpacks.setting_give_difference]

# Restore items:
data modify entity @s Items set from storage senti:api old
