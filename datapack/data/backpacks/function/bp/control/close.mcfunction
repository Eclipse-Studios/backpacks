# @s is the player who closed the container!

# Kill interaction entity:
tag @s add backpacks.backpack_menu_this_player_interaction
execute as @e[tag=backpacks.interaction_ready] if score @s backpacks.id = @p[tag=backpacks.backpack_menu_this_player_interaction] backpacks.id run kill @s
tag @s remove backpacks.backpack_menu_this_player_interaction

# Save contents of the menu:
function backpacks:api/backpack/owner/player
execute as @n[tag=backpacks.this_linked_chest_minecart] run function backpacks:bp/container/save/main
tag @n[tag=backpacks.this_linked_chest_minecart] remove backpacks.this_linked_chest_minecart
