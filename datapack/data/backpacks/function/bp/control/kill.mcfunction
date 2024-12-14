# @s & @p[advancements={backpacks:not_holding_bp=true}] is the player at @s!
# say ###################
# say kill

# If for whatever reason the player doesn't have the tags we give the one they had:
tag @s[tag=!backpacks.mainhand,tag=!backpacks.offhand,tag=backpacks.last_mainhand] add backpacks.mainhand
tag @s[tag=!backpacks.mainhand,tag=!backpacks.offhand,tag=backpacks.last_offhand] add backpacks.offhand

# execute if entity @s[tag=backpacks.mainhand] run say Mainhand
# execute if entity @s[tag=backpacks.offhand] run say Offhand


# Why?
# execute if predicate {"condition": "minecraft:entity_properties","entity": "this","predicate": {"flags": {"is_sneaking": true}}} run say Reason: Crouch
# execute if predicate {"condition":"minecraft:inverted","term":{"condition":"minecraft:any_of","terms":[{"condition":"minecraft:entity_properties","entity":"this","predicate":{"equipment":{"mainhand":{"predicates":{"minecraft:custom_data":"{backpacks:{}}"}}}}},{"condition":"minecraft:entity_properties","entity":"this","predicate":{"equipment":{"offhand":{"predicates":{"minecraft:custom_data":"{backpacks:{}}"}}}}}]}} run say Reason: Not Holding

# Get menu:
execute as @e[tag=backpacks.backpack_menu_ready] if score @s backpacks.id = @p[advancements={backpacks:not_holding_bp=true}] backpacks.id run tag @s add backpacks.backpack_kill_this

# Check if the backpack item is inside the backpack itself:
execute as @n[tag=backpacks.backpack_kill_this] run function backpacks:bp/control/check_inside/main
