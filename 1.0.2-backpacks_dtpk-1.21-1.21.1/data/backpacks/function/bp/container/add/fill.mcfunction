# @p[advancements={backpacks:summon_bp=true}] is the player at player! | The menu is @s & @n[tag=backpacks.backpack_menu,tag=!backpacks.backpack_menu_ready]! | Item is in container.0!

# Summon temp container:
summon chest_minecart ~ ~1 ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,CustomDisplayTile:1b,Tags:["backpacks.fill_added_slots","backpacks.invisible_minecart"]}

# Set data:
data modify entity @n[tag=backpacks.fill_added_slots] Items set from entity @s Items[0].components."minecraft:custom_data".backpacks.contents.pages[-1]

# Fill page:
scoreboard players operation @n[tag=backpacks.fill_added_slots] backpacks.slots = $pages backpacks.pages
execute as @n[tag=backpacks.fill_added_slots] run function backpacks:bp/container/init/fill {c_slot:26}

# Store data:
data modify entity @s Items[0].components."minecraft:custom_data".backpacks.contents.pages[-1] set from entity @n[tag=backpacks.fill_added_slots] Items

# Kill temp container:
tp @n[tag=backpacks.fill_added_slots] ~ -10000 ~
kill @n[tag=backpacks.fill_added_slots]
