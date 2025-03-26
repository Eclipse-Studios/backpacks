# @p[tag=backpacks.backpack_menu_save_this_player] is the player at player | @s is the menu!

# Summon placeholder:
summon armor_stand ~ ~ ~ {CustomNameVisible:0b,NoGravity:1b,Silent:1b,Invulnerable:1b,HasVisualFire:0b,Glowing:0b,ShowArms:0b,Small:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,Tags:["backpacks.contents_placeholder"],DisabledSlots:4144959}

# Save contents:
$data modify entity @n[tag=backpacks.contents_placeholder] equipment.head set from entity @p[tag=backpacks.backpack_menu_save_this_player] Inventory[{components:{"minecraft:custom_data":{backpacks:{init:{id:$(id)}}}}}]
$execute if data entity @n[tag=backpacks.contents_placeholder] equipment.head.components."minecraft:custom_data".backpacks.contents.pages[0] run data modify entity @n[tag=backpacks.contents_placeholder] equipment.head.components."minecraft:custom_data".backpacks.contents.pages[$(page)] set from entity @s Items
execute unless data entity @n[tag=backpacks.contents_placeholder] equipment.head.components."minecraft:custom_data".backpacks.contents.pages[0] run data modify entity @n[tag=backpacks.contents_placeholder] equipment.head.components."minecraft:custom_data".backpacks.contents.pages append from entity @s Items

# Give back the backpack:
$execute store result storage backpacks:temp item.slot int 1 run data get entity @p[tag=backpacks.backpack_menu_save_this_player] Inventory[{components:{"minecraft:custom_data":{backpacks:{init:{id:$(id)}}}}}].Slot
$execute if items entity @p[tag=backpacks.backpack_menu_save_this_player] weapon.offhand *[minecraft:custom_data~{backpacks:{init:{id:$(id)}}}] run data modify storage backpacks:temp item.slot set value "weapon.offhand"
function backpacks:bp/container/save/adjust_slot_inv with storage backpacks:temp item

# Kill placeholder:
kill @n[tag=backpacks.contents_placeholder]
