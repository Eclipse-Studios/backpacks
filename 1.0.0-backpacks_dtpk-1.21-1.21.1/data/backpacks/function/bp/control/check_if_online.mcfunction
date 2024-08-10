# @s is the menu!

# Get player:
tag @s add backpacks.check_if_owner_online
execute as @a if score @s backpacks.id = @n[tag=backpacks.check_if_owner_online] backpacks.id run tag @s add backpacks.owner_online
tag @s remove backpacks.check_if_owner_online

# If not:
execute unless entity @a[tag=backpacks.owner_online] at @s run function backpacks:bp/control/kill_menu

# Reset:
tag @a remove backpacks.owner_online
