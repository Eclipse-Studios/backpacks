# @s is the menu!

# Update menu:
tag @s add backpacks.this_update_backpack_menu
$execute as @a[tag=backpacks.offhand] if score @s backpacks.id = @n[tag=backpacks.this_update_backpack_menu] backpacks.id run data modify entity @n[tag=backpacks.this_update_backpack_menu] Items set from entity @s Inventory[{Slot:-106b}].components."minecraft:custom_data".backpacks.contents.pages[$(page)]
$execute as @a[tag=backpacks.mainhand] if score @s backpacks.id = @n[tag=backpacks.this_update_backpack_menu] backpacks.id run data modify entity @n[tag=backpacks.this_update_backpack_menu] Items set from entity @s SelectedItem.components."minecraft:custom_data".backpacks.contents.pages[$(page)]
tag @s remove backpacks.this_update_backpack_menu
