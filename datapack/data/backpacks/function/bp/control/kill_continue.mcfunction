# @s & @p[advancements={backpacks:not_holding_bp=true}] is the player at @s!
# say kill continue

# Save container:
execute as @n[tag=backpacks.backpack_kill_this] run function backpacks:bp/container/save/main

# Kill:
execute as @n[tag=backpacks.backpack_kill_this] at @s run function backpacks:bp/control/kill_menu

# Reset:
team leave @s
tag @s remove backpacks.offhand
tag @s remove backpacks.mainhand
tag @s remove backpacks.backpack_menu_summoned
advancement revoke @s only backpacks:not_holding_bp
