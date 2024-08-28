# Set up the model for non-invisible minecarts:
execute as @e[type=#backpacks:minecarts,tag=!backpacks.invisible_minecart,tag=!backpacks.not_this_minecart] run function backpacks:minecarts/invisible_minecarts
execute as @e[type=#backpacks:custom_minecarts,tag=!backpacks.invisible_minecart,tag=!backpacks.not_this_minecart] at @s run function backpacks:minecarts/invisible_custom_minecarts

# Set the rotation of the model:
execute as @e[tag=backpacks.invisible_custom_minecart,tag=!backpacks.not_this_minecart] at @s run function backpacks:minecarts/rotation

# Furnace minecarts texture change:
execute as @e[type=furnace_minecart,tag=backpacks.furnace,nbt=!{Fuel:0s},tag=!backpacks.not_this_minecart] run data merge entity @s {CustomDisplayTile:1b,DisplayState:{Name:"minecraft:command_block",Properties:{conditional:"true",facing:"east"}},DisplayOffset:4}
execute as @e[type=furnace_minecart,tag=backpacks.furnace,nbt={Fuel:0s},tag=!backpacks.not_this_minecart] run data merge entity @s {CustomDisplayTile:1b,DisplayState:{Name:"minecraft:command_block",Properties:{conditional:"true",facing:"north"}},DisplayOffset:4}

# Kill model if minecart is killed:
kill @e[tag=backpacks.custom_minecart_mounted,predicate=!backpacks:has_vehicle]

# Account for droppped items in menus:
execute as @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{menu_backpack:{}}}}}] at @s run function backpacks:bp/container/interaction/dropped/main with entity @s Item.components."minecraft:custom_data".menu_backpack

# Upgrade backpacks if thrown (using advancements to check for the recipe is too fast):
execute as @e[type=item,nbt={Item:{id:"minecraft:chain_command_block",components:{"minecraft:custom_data":{backpacks:{real_backpack:1b,tier:0}}}}}] run function backpacks:bp/upgrade/to_2/item
execute as @e[type=item,nbt={Item:{id:"minecraft:repeating_command_block",components:{"minecraft:custom_data":{backpacks:{real_backpack:1b,tier:1}}}}}] run function backpacks:bp/upgrade/to_3/item
execute as @e[type=item,nbt={Item:{id:"minecraft:structure_block",components:{"minecraft:custom_data":{backpacks:{real_backpack:1b,tier:2}}}}}] run function backpacks:bp/upgrade/to_4/item

# On join:
scoreboard players add @a[scores={backpacks.join=1..}] backpacks.join 1
execute as @a[scores={backpacks.join=5..}] at @s run function backpacks:bp/join/main

# Teams:
team join backpacks.no_collision @a

# Check if menu has it's owner online:
execute as @e[tag=backpacks.backpack_menu_ready] at @s run function backpacks:bp/control/check_if_online
