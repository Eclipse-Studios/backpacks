# @p[advancements={backpacks:summon_bp=true}] is the player at him! | @s is the menu! | The menu has the backpack item in container.0!

# Fill last menu page:
function backpacks:bp/container/init/fill {c_slot:26}

# Save items data:
data modify entity @s Items[0].components."minecraft:custom_data".backpacks.contents.pages append from entity @s Items
data remove entity @s Items[0].components."minecraft:custom_data".backpacks.contents.pages[0][0]
