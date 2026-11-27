# @s & @p[advancements={backpacks:open=true}] is the player at @s! | Its menu is @n[tag=backpacks.backpack_menu_opened]!
# Player is not the owner!

# Get which menu are we looking:
execute as @e[tag=backpacks.backpack_menu_ready] run function backpacks:bp/open/looking/main

# Resummon menu:
execute as @a if score @s backpacks.id = @n[tag=backpacks.backpack_menu_looking_at_me] backpacks.id run advancement grant @s only backpacks:not_holding_bp
execute as @a if score @s backpacks.id = @n[tag=backpacks.backpack_menu_looking_at_me] backpacks.id run advancement revoke @s only backpacks:open
execute as @a if score @s backpacks.id = @n[tag=backpacks.backpack_menu_looking_at_me] backpacks.id run return 1

# Reset:
tag @n[tag=backpacks.backpack_menu_looking_at_me] remove backpacks.backpack_menu_looking_at_me
