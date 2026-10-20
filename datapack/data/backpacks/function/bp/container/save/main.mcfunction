# @s is the menu!
# tellraw @a "###############"
# tellraw @a "save main"
# Get Player:
tag @s add backpacks.backpack_menu_save_this
execute as @a if score @s backpacks.id = @n[tag=backpacks.backpack_menu_save_this] backpacks.id run tag @s add backpacks.backpack_menu_save_this_player

# Get item Id:
execute store result storage backpacks:temp item.id int 1 run scoreboard players get @s backpacks.id
execute store result storage backpacks:temp item.page int 1 run scoreboard players get @s backpacks.pages

# Search:
execute as @p[tag=backpacks.backpack_menu_save_this_player] if function backpacks:bp/check/cursor as @n[tag=backpacks.backpack_menu_save_this] if score @s backpacks.type matches 0 run function backpacks:bp/container/save/save_to_cursor with storage backpacks:temp item
execute as @p[tag=backpacks.backpack_menu_save_this_player] if function backpacks:bp/check/cursor as @n[tag=backpacks.backpack_menu_save_this] if score @s backpacks.type matches 1.. run function backpacks:bp/container/enderchest/save

execute as @p[tag=backpacks.backpack_menu_save_this_player] if function backpacks:bp/check/inv as @n[tag=backpacks.backpack_menu_save_this] if score @s backpacks.type matches 0 run function backpacks:bp/container/save/search_inv with storage backpacks:temp item
execute as @p[tag=backpacks.backpack_menu_save_this_player] if function backpacks:bp/check/inv as @n[tag=backpacks.backpack_menu_save_this] if score @s backpacks.type matches 1.. run function backpacks:bp/container/enderchest/save
execute as @p[tag=backpacks.backpack_menu_save_this_player] unless function backpacks:bp/check/inv as @n[tag=backpacks.backpack_menu_save_this] if score @s backpacks.type matches 0 run function backpacks:bp/container/save/search_entity with storage backpacks:temp item
execute as @p[tag=backpacks.backpack_menu_save_this_player] unless function backpacks:bp/check/inv as @n[tag=backpacks.backpack_menu_save_this] if score @s backpacks.type matches 1.. run function backpacks:bp/container/enderchest/save

# Reset:
tag @s remove backpacks.backpack_menu_save_this
tag @a remove backpacks.backpack_menu_save_this_player
