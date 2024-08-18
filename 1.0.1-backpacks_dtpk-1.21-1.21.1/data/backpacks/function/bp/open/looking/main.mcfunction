# @p[advancements={backpacks:open=true}] is the player at player! | @s is the possible menu!

# Check:
tag @s add backpacks.backpack_menu_looking
execute as @p[advancements={backpacks:open=true}] if predicate backpacks:looking_at_menu run tag @n[tag=backpacks.backpack_menu_looking] add backpacks.backpack_menu_looking_at_me
tag @s remove backpacks.backpack_menu_looking
