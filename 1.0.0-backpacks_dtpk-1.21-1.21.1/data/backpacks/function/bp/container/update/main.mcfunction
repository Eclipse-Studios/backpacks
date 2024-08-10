# @s is the menu!

# If enderchest:
execute if score @s backpacks.type matches 1.. run function backpacks:bp/container/enderchest/copy
execute if score @s backpacks.type matches 1.. run return fail

# Get page:
execute store result storage backpacks:temp update.page int 1 run scoreboard players get @s backpacks.pages

# Update:
function backpacks:bp/container/update/update with storage backpacks:temp update
