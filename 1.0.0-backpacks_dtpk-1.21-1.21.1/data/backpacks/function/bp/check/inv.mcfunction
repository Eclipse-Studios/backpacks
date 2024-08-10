# @s is the player!

# Get player id:
execute store result storage backpacks:temp player.id int 1 run scoreboard players get @s backpacks.id

# Get item id:
function backpacks:bp/check/inv_ with storage backpacks:temp player

# Check:
execute if score @s backpacks.id = $check_item_id backpacks.id run return 1
execute unless score @s backpacks.id = $check_item_id backpacks.id run return fail
