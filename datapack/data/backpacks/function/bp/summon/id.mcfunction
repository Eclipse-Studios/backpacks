# @s & @p[advancements={backpacks:summon_bp=true}] is the player at @s!

# Set menu type:
scoreboard players set @n[tag=backpacks.backpack_menu,tag=!backpacks.backpack_menu_ready] backpacks.type 0
execute if predicate backpacks:bp/offhand if predicate backpacks:bp/enderchest/offhand run scoreboard players add @n[tag=backpacks.backpack_menu,tag=!backpacks.backpack_menu_ready] backpacks.type 1
execute if predicate backpacks:bp/mainhand if predicate backpacks:bp/enderchest/mainhand run scoreboard players add @n[tag=backpacks.backpack_menu,tag=!backpacks.backpack_menu_ready] backpacks.type 1

# Get Id:
execute if predicate backpacks:bp/offhand store result storage backpacks:temp id int 1 run data get entity @s Inventory[{Slot:-106b}].components."minecraft:custom_data".backpacks.init.id
execute if predicate backpacks:bp/mainhand store result storage backpacks:temp id int 1 run data get entity @s SelectedItem.components."minecraft:custom_data".backpacks.init.id

# Set Id:
execute store result score @s backpacks.id run data get storage backpacks:temp id
execute store result score @n[tag=backpacks.backpack_menu_tp,tag=!backpacks.backpack_tp_ready] backpacks.id run data get storage backpacks:temp id
execute store result score @n[tag=backpacks.backpack_menu,tag=!backpacks.backpack_menu_ready] backpacks.id run data get storage backpacks:temp id
