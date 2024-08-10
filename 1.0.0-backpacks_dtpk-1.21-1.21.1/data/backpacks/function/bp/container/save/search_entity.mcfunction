# @p[tag=backpacks.backpack_menu_save_this_player] is the player at player | @s is the menu!
# say save me!
# $say $(id)
# $say $(page)
# Search entity:
$execute as @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{backpacks:{init:{id:$(id)}}}}}}] run tag @s add backpacks.backpack_menu_this_item

# Save data:
$data modify entity @n[tag=backpacks.backpack_menu_this_item] Item.components."minecraft:custom_data".backpacks.contents.pages[$(page)] set from entity @s Items

# Reset:
tag @n[tag=backpacks.backpack_menu_this_item] remove backpacks.backpack_menu_this_item
