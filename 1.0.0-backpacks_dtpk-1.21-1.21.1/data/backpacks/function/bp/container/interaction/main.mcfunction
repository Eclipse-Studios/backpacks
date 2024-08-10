# @s & @p[advancements={backpacks:holding_bp=true}] is the player at @s! | Its menu is @n[tag=backpacks.this_backpack_menu]!

# Place back:
execute if predicate backpacks:interaction/holding_cursor run function backpacks:bp/container/interaction/cursor/temp
execute if predicate backpacks:interaction/holding_inv run function backpacks:bp/container/interaction/inv/main

# Save menu:
execute as @n[tag=backpacks.this_backpack_menu] at @s run function backpacks:bp/container/save/main

# Get interaction:
execute if predicate backpacks:interaction/type/back run scoreboard players remove @n[tag=backpacks.this_backpack_menu] backpacks.pages 1
execute if predicate backpacks:interaction/type/next run scoreboard players add @n[tag=backpacks.this_backpack_menu] backpacks.pages 1

# Update menu:
execute if predicate backpacks:interaction/type/any as @n[tag=backpacks.this_backpack_menu] at @s run function backpacks:bp/container/update/main
execute if predicate backpacks:interaction/type/any run playsound minecraft:item.armor.equip_leather

# Clear:
clear @s *[custom_data~{menu_backpack:{}}]
