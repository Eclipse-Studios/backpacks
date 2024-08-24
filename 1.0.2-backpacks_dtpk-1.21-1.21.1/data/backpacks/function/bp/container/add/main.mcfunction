# @p[advancements={backpacks:summon_bp=true}] is the player at player! | The menu is @s & @n[tag=backpacks.backpack_menu,tag=!backpacks.backpack_menu_ready]! | Item is in container.0!

# Count pages:
execute store result score $pages_old backpacks.pages run data get entity @s Items[0].components."minecraft:custom_data".backpacks.contents.pages

scoreboard players operation $pages backpacks.pages = $temp_current backpacks.slots
scoreboard players set @s backpacks.pages 0
function backpacks:bp/container/pages/count

# Remove "empties" from the last page:
data remove entity @s Items[0].components."minecraft:custom_data".backpacks.contents.pages[-1][{components:{"minecraft:custom_data":{menu_backpack:{empty:1b}}}}]

# If we don't need to add pages just fill the last one to add the missing slots:
execute if score @s backpacks.pages = $pages_old backpacks.pages run function backpacks:bp/container/add/fill

# Add pages:
execute if score @s backpacks.pages > $pages_old backpacks.pages run function backpacks:bp/container/add/pages

# Update slots:
data modify entity @s Items[0].components."minecraft:custom_data".backpacks.init.slots set from entity @s Items[0].components."minecraft:custom_data".backpacks.contents.slots
