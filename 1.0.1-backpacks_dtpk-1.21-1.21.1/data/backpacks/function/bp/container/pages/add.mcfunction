# @p[advancements={backpacks:summon_bp=true}] is the player at him! | @s is the menu! | The menu has the backpack item in container.0!

# Make placeholder menu:
summon chest_minecart ~ ~1 ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,CustomDisplayTile:1b,Tags:["backpacks.backpack_menu_page_placeholder","backpacks.invisible_minecart"]}

# Add items:
execute if entity @n[tag=backpacks.save_for_next] run function backpacks:bp/container/pages/save_for_next_add
execute unless score $first_pages backpacks.pages = @s backpacks.pages run item replace entity @n[tag=backpacks.backpack_menu_page_placeholder] container.18 with arrow[custom_name='{"translate":"menu.backpacks.interaction.go_back","color":"green","italic":false}',custom_data={menu_backpack:{go_back:1b,Slot:18}},custom_model_data=9951632]
execute unless score @s backpacks.pages matches 1 run item replace entity @n[tag=backpacks.backpack_menu_page_placeholder] container.26 with arrow[custom_name='{"color":"green","italic":false,"translate":"menu.backpacks.interaction.next_page"}',custom_model_data=9951631,custom_data={menu_backpack:{next_page:1b,Slot:26}}]

# Final page:
execute if score @s backpacks.pages matches 1 run scoreboard players operation @n[tag=backpacks.backpack_menu_page_placeholder] backpacks.slots = $pages backpacks.pages
execute if score @s backpacks.pages matches 1 as @n[tag=backpacks.backpack_menu_page_placeholder] run function backpacks:bp/container/init/fill {c_slot:26}

# Set data:
data modify entity @s Items[0].components."minecraft:custom_data".backpacks.contents.pages append from entity @n[tag=backpacks.backpack_menu_page_placeholder] Items

# Kill placeholder:
tp @n[tag=backpacks.backpack_menu_page_placeholder] ~ -10000 ~
kill @n[tag=backpacks.backpack_menu_page_placeholder]

# Again:
scoreboard players remove @s backpacks.pages 1
execute if score @s backpacks.pages matches 1.. run function backpacks:bp/container/pages/add
