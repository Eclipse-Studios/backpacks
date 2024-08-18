# @p[advancements={backpacks:summon_bp=true}] is the player at player! | The menu is @s & @n[tag=backpacks.backpack_menu,tag=!backpacks.backpack_menu_ready]! | Item is in container.0!

# Add "Next Page" arrow:
function backpacks:bp/container/add/add_arrow

# Add pages:
scoreboard players set $first_pages backpacks.pages -1
scoreboard players operation @s backpacks.pages -= $pages_old backpacks.pages
function backpacks:bp/container/pages/add
