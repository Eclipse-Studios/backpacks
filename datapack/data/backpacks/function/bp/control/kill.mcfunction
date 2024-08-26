# @s & @p[advancements={backpacks:not_holding_bp=true}] is the player at @s!
# say kill
# Get menu:
execute as @e[tag=backpacks.backpack_menu_ready] if score @s backpacks.id = @p[advancements={backpacks:not_holding_bp=true}] backpacks.id run tag @s add backpacks.backpack_kill_this

# Check if the backpack item is inside the backpack itself:
execute as @n[tag=backpacks.backpack_kill_this] run function backpacks:bp/control/check_inside/main
