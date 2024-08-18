# @s & @p[advancements={backpacks:holding_bp=true}] is the player at @s! | Its menu is @n[tag=backpacks.this_backpack_menu]!

# Tp:
tp @n[tag=backpacks.this_backpack_menu] ~ ~1 ~
execute at @n[tag=backpacks.this_backpack_menu] as @e[tag=backpacks.interaction_ready] if score @s backpacks.id = @p[advancements={backpacks:holding_bp=true}] backpacks.id run tp ~ ~-0.01 ~
