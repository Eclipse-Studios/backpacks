# @s & @p[advancements={backpacks:holding_bp=true}] is the player at @s! | Its menu is @n[tag=backpacks.this_backpack_menu]!

# Tp:
execute positioned ~ ~1 ~ run tp @n[tag=backpacks.this_backpack_tp] ^ ^ ^0.2
execute at @n[tag=backpacks.this_backpack_menu] as @e[tag=backpacks.interaction_ready] if score @s backpacks.id = @p[advancements={backpacks:holding_bp=true}] backpacks.id run tp ~ ~-0.01 ~
