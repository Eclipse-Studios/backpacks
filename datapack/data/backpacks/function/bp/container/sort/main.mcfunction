# @s is the player!

# Get player's chest minecart:
function backpacks:api/backpack/owner/player

# Copy contents into a temp storage:
data modify storage backpacks:temp items set from entity @n[tag=backpacks.this_linked_chest_minecart] Item

# Remove items that shouldn't be sorted (locked items):
data remove storage backpacks:temp items[{components:{"minecraft:custom_data":{menu_backpack:{}}}}]

# Sort:
function backpacks:bp/container/sort/main

# Restore items into the chest minecart:
execute unless items entity @n[tag=backpacks.this_linked_chest_minecart] container.0 *[custom_data~{menu_backpack:{}}] run data modify entity @n[tag=backpacks.this_linked_chest_minecart] Item insert 0 from storage backpacks:temp items[{Slot:0b}]
execute unless items entity @n[tag=backpacks.this_linked_chest_minecart] container.1 *[custom_data~{menu_backpack:{}}] run data modify entity @n[tag=backpacks.this_linked_chest_minecart] Item insert 1 from storage backpacks:temp items[{Slot:1b}]
execute unless items entity @n[tag=backpacks.this_linked_chest_minecart] container.2 *[custom_data~{menu_backpack:{}}] run data modify entity @n[tag=backpacks.this_linked_chest_minecart] Item insert 2 from storage backpacks:temp items[{Slot:2b}]
execute unless items entity @n[tag=backpacks.this_linked_chest_minecart] container.3 *[custom_data~{menu_backpack:{}}] run data modify entity @n[tag=backpacks.this_linked_chest_minecart] Item insert 3 from storage backpacks:temp items[{Slot:3b}]
execute unless items entity @n[tag=backpacks.this_linked_chest_minecart] container.4 *[custom_data~{menu_backpack:{}}] run data modify entity @n[tag=backpacks.this_linked_chest_minecart] Item insert 4 from storage backpacks:temp items[{Slot:4b}]
execute unless items entity @n[tag=backpacks.this_linked_chest_minecart] container.5 *[custom_data~{menu_backpack:{}}] run data modify entity @n[tag=backpacks.this_linked_chest_minecart] Item insert 5 from storage backpacks:temp items[{Slot:5b}]
execute unless items entity @n[tag=backpacks.this_linked_chest_minecart] container.6 *[custom_data~{menu_backpack:{}}] run data modify entity @n[tag=backpacks.this_linked_chest_minecart] Item insert 6 from storage backpacks:temp items[{Slot:6b}]
execute unless items entity @n[tag=backpacks.this_linked_chest_minecart] container.7 *[custom_data~{menu_backpack:{}}] run data modify entity @n[tag=backpacks.this_linked_chest_minecart] Item insert 7 from storage backpacks:temp items[{Slot:7b}]
execute unless items entity @n[tag=backpacks.this_linked_chest_minecart] container.8 *[custom_data~{menu_backpack:{}}] run data modify entity @n[tag=backpacks.this_linked_chest_minecart] Item insert 8 from storage backpacks:temp items[{Slot:8b}]
execute unless items entity @n[tag=backpacks.this_linked_chest_minecart] container.9 *[custom_data~{menu_backpack:{}}] run data modify entity @n[tag=backpacks.this_linked_chest_minecart] Item insert 9 from storage backpacks:temp items[{Slot:9b}]
execute unless items entity @n[tag=backpacks.this_linked_chest_minecart] container.10 *[custom_data~{menu_backpack:{}}] run data modify entity @n[tag=backpacks.this_linked_chest_minecart] Item insert 10 from storage backpacks:temp items[{Slot:10b}]
execute unless items entity @n[tag=backpacks.this_linked_chest_minecart] container.11 *[custom_data~{menu_backpack:{}}] run data modify entity @n[tag=backpacks.this_linked_chest_minecart] Item insert 11 from storage backpacks:temp items[{Slot:11b}]
execute unless items entity @n[tag=backpacks.this_linked_chest_minecart] container.12 *[custom_data~{menu_backpack:{}}] run data modify entity @n[tag=backpacks.this_linked_chest_minecart] Item insert 12 from storage backpacks:temp items[{Slot:12b}]
execute unless items entity @n[tag=backpacks.this_linked_chest_minecart] container.13 *[custom_data~{menu_backpack:{}}] run data modify entity @n[tag=backpacks.this_linked_chest_minecart] Item insert 13 from storage backpacks:temp items[{Slot:13b}]
execute unless items entity @n[tag=backpacks.this_linked_chest_minecart] container.14 *[custom_data~{menu_backpack:{}}] run data modify entity @n[tag=backpacks.this_linked_chest_minecart] Item insert 14 from storage backpacks:temp items[{Slot:14b}]
execute unless items entity @n[tag=backpacks.this_linked_chest_minecart] container.15 *[custom_data~{menu_backpack:{}}] run data modify entity @n[tag=backpacks.this_linked_chest_minecart] Item insert 15 from storage backpacks:temp items[{Slot:15b}]
execute unless items entity @n[tag=backpacks.this_linked_chest_minecart] container.16 *[custom_data~{menu_backpack:{}}] run data modify entity @n[tag=backpacks.this_linked_chest_minecart] Item insert 16 from storage backpacks:temp items[{Slot:16b}]
execute unless items entity @n[tag=backpacks.this_linked_chest_minecart] container.17 *[custom_data~{menu_backpack:{}}] run data modify entity @n[tag=backpacks.this_linked_chest_minecart] Item insert 17 from storage backpacks:temp items[{Slot:17b}]
execute unless items entity @n[tag=backpacks.this_linked_chest_minecart] container.18 *[custom_data~{menu_backpack:{}}] run data modify entity @n[tag=backpacks.this_linked_chest_minecart] Item insert 18 from storage backpacks:temp items[{Slot:18b}]
execute unless items entity @n[tag=backpacks.this_linked_chest_minecart] container.19 *[custom_data~{menu_backpack:{}}] run data modify entity @n[tag=backpacks.this_linked_chest_minecart] Item insert 19 from storage backpacks:temp items[{Slot:19b}]
execute unless items entity @n[tag=backpacks.this_linked_chest_minecart] container.20 *[custom_data~{menu_backpack:{}}] run data modify entity @n[tag=backpacks.this_linked_chest_minecart] Item insert 20 from storage backpacks:temp items[{Slot:20b}]
execute unless items entity @n[tag=backpacks.this_linked_chest_minecart] container.21 *[custom_data~{menu_backpack:{}}] run data modify entity @n[tag=backpacks.this_linked_chest_minecart] Item insert 21 from storage backpacks:temp items[{Slot:21b}]
execute unless items entity @n[tag=backpacks.this_linked_chest_minecart] container.22 *[custom_data~{menu_backpack:{}}] run data modify entity @n[tag=backpacks.this_linked_chest_minecart] Item insert 22 from storage backpacks:temp items[{Slot:22b}]
execute unless items entity @n[tag=backpacks.this_linked_chest_minecart] container.23 *[custom_data~{menu_backpack:{}}] run data modify entity @n[tag=backpacks.this_linked_chest_minecart] Item insert 23 from storage backpacks:temp items[{Slot:23b}]
execute unless items entity @n[tag=backpacks.this_linked_chest_minecart] container.24 *[custom_data~{menu_backpack:{}}] run data modify entity @n[tag=backpacks.this_linked_chest_minecart] Item insert 24 from storage backpacks:temp items[{Slot:24b}]
execute unless items entity @n[tag=backpacks.this_linked_chest_minecart] container.25 *[custom_data~{menu_backpack:{}}] run data modify entity @n[tag=backpacks.this_linked_chest_minecart] Item insert 25 from storage backpacks:temp items[{Slot:25b}]
execute unless items entity @n[tag=backpacks.this_linked_chest_minecart] container.26 *[custom_data~{menu_backpack:{}}] run data modify entity @n[tag=backpacks.this_linked_chest_minecart] Item insert 26 from storage backpacks:temp items[{Slot:26b}]

# Reset:
tag @n[tag=backpacks.this_linked_chest_minecart] remove backpacks.this_linked_chest_minecart
