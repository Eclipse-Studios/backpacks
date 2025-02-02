# @p[advancements={backpacks:summon_bp=true}] is the player at player! | The menu is @s & @n[tag=backpacks.backpack_menu,tag=!backpacks.backpack_menu_ready]! | Item is in container.0!

# Save last item:
function backpacks:bp/container/pages/save_for_next

# Summon temp container:
summon chest_minecart ~ ~1 ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,CustomDisplayTile:1b,Tags:["backpacks.save_last","backpacks.invisible_minecart"]}

# Set data:
data modify entity @n[tag=backpacks.save_last] Items set from entity @s Items[0].components."minecraft:custom_data".backpacks.contents.pages[-1]

# Add arrow:
item replace entity @n[tag=backpacks.save_last] container.26 with arrow[custom_name='{"color":"green","italic":false,"translate":"menu.backpacks.interaction.next_page"}',item_model="backpacks:gui/next_page",custom_data={menu_backpack:{next_page:1b,Slot:26}}]

# Save data:
data modify entity @s Items[0].components."minecraft:custom_data".backpacks.contents.pages[-1] set from entity @n[tag=backpacks.save_last] Items

# Kill temp container:
tp @n[tag=backpacks.save_last] ~ -10000 ~
kill @n[tag=backpacks.save_last]
