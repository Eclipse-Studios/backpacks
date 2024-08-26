# @p[advancements={backpacks:summon_bp=true}] is the player at him! | @s is the menu! | The menu has the backpack item in container.0!

# Get how many pages we need:
scoreboard players operation $pages backpacks.pages = @s backpacks.slots
function backpacks:bp/container/pages/count

# Add pages:
scoreboard players operation $first_pages backpacks.pages = @s backpacks.pages
function backpacks:bp/container/pages/add
