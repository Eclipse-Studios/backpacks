# @s & @p[advancements={backpacks:holding_bp=true}] is the player at @s!
# Check if id of item is the same as the player:

# Get item Id:
execute if predicate backpacks:bp/offhand store result score $item_id backpacks.id run data get entity @s equipment.offhand.components."minecraft:custom_data".backpacks.init.id
execute if predicate backpacks:bp/mainhand store result score $item_id backpacks.id run data get entity @s SelectedItem.components."minecraft:custom_data".backpacks.init.id

# Check unless Id:
execute unless score @s backpacks.id = $item_id backpacks.id run advancement grant @s only backpacks:not_holding_bp
