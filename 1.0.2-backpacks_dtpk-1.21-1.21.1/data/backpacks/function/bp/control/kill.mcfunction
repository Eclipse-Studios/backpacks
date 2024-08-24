# @s & @p[advancements={backpacks:not_holding_bp=true}] is the player at @s!
# say kill
# Get menu:
execute as @e[tag=backpacks.backpack_menu_ready] if score @s backpacks.id = @p[advancements={backpacks:not_holding_bp=true}] backpacks.id run tag @s add backpacks.backpack_kill_this

# Check if the backpack item is inside the backpack itself:
execute as @e[tag=backpacks.backpack_kill_this] unless function backpacks:bp/control/check_inside/main run return fail
# say kill continue

# Save container:
execute as @e[tag=backpacks.backpack_kill_this] run function backpacks:bp/container/save/main

# Kill:
execute as @e[tag=backpacks.backpack_kill_this] at @s run function backpacks:bp/control/kill_menu

# Reset:
tag @s remove backpacks.offhand
tag @s remove backpacks.mainhand
tag @s remove backpacks.backpack_menu_summoned
advancement revoke @s only backpacks:not_holding_bp
