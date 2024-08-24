# @s & @p[advancements={backpacks:holding_bp=true}] is the player at @s! | Its menu is @n[tag=backpacks.this_backpack_menu]!

# Get menu:
execute as @e[tag=backpacks.backpack_menu_ready] if score @s backpacks.id = @p[advancements={backpacks:holding_bp=true}] backpacks.id run tag @s add backpacks.this_backpack_menu

# Control:
function backpacks:bp/check/offhand
function backpacks:bp/check/mainhand
execute if predicate backpacks:bp/only_one run function backpacks:bp/control/check_id
function backpacks:bp/control/tp
execute if predicate backpacks:interaction/holding_menu run function backpacks:bp/container/interaction/main

# Reset advancement:
tag @n[tag=backpacks.this_backpack_menu] remove backpacks.this_backpack_menu
advancement revoke @s only backpacks:holding_bp
