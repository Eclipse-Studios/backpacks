# @s is the player!
# Get which is the chest minecart linked to the player
# Expected:
# @n[tag=backpacks.this_linked_chest_minecart] --> The chest minecart used for the backpack's menu

# Check with id:
tag @s add backpacks.temp
execute as @e[tag=backpacks.backpack_menu_ready] if score @s backpacks.id = @p[tag=backpacks.temp] backpacks.id run tag @s add backpacks.this_linked_chest_minecart
tag @s remove backpacks.temp
