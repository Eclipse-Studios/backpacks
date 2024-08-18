# @p[advancements={backpacks:not_holding_bp=true}] is the player at player! | @s & @n[tag=backpacks.backpack_kill_this] are the menu!
# Check if backpack item is inside the backpack itself:
# say main check
# Get backpack id:
execute store result storage backpacks:temp inside.id int 1 run scoreboard players get @s backpacks.id

# Check if inside:
return run function backpacks:bp/control/check_inside/check with storage backpacks:temp inside
