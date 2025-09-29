# @s is the player!

# Reset:
scoreboard players set $check_item_id backpacks.id -1

# Get item id (for offhand):
execute if entity @s[tag=backpacks.offhand] store result score $check_item_id backpacks.id run data get entity @s equipment.offhand.components."minecraft:custom_data".backpacks.init.id

# Get item id (for inventory/mainhand):
$execute unless entity @s[tag=backpacks.offhand] store result score $check_item_id backpacks.id run data get entity @s Inventory[{components:{"minecraft:custom_data":{backpacks:{init:{id:$(id)}}}}}].components."minecraft:custom_data".backpacks.init.id
