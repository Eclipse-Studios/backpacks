# @s is the player!

# Get item id:
execute store result score $check_item_id backpacks.id run data get entity @s equipment.offhand.components."minecraft:custom_data".backpacks.init.id

# Check:
execute if score @s backpacks.id = $check_item_id backpacks.id run tag @s remove backpacks.mainhand
execute if score @s backpacks.id = $check_item_id backpacks.id run tag @s add backpacks.offhand
execute if score @s backpacks.id = $check_item_id backpacks.id run return 1
execute unless score @s backpacks.id = $check_item_id backpacks.id run tag @s remove backpacks.offhand
execute unless score @s backpacks.id = $check_item_id backpacks.id run return fail
