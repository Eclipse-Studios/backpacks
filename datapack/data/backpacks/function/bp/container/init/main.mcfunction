# @p[advancements={backpacks:summon_bp=true}] is the player at him! | @s is the menu! | The menu has the backpack item in container.0!
# Set up the menu from the data:

# If enderchest:
execute if entity @p[advancements={backpacks:summon_bp=true},predicate=backpacks:bp/enderchest/mainhand] run return 0

# Initialize pages:
data modify entity @s Items[0].components."minecraft:custom_data".backpacks.contents.pages set value []

# If needs more pages:
execute if score @s backpacks.slots matches 28.. run function backpacks:bp/container/pages/main

# Get slot:
execute unless score @s backpacks.slots matches 27.. run function backpacks:bp/container/init/one_page
