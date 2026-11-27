# @s & @p[advancements={backpacks:holding_bp=true}] is the player at @s! | Its menu is @n[tag=backpacks.this_backpack_menu]!

# Store cursor item to temp container:
summon chest_minecart ~ ~1 ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,Tags:["backpacks.backpack_menu_temp_cursor","backpacks.invisible_minecart"]}
item replace entity @n[tag=backpacks.backpack_menu_temp_cursor] container.0 from entity @s player.cursor

# Get slot data:
data modify storage backpacks:temp set_back.player_Slot set value 0
data modify storage backpacks:temp set_back.Slot set from entity @n[tag=backpacks.backpack_menu_temp_cursor] Items[0].components."minecraft:custom_data".menu_backpack.Slot

# Set back the item:
function backpacks:bp/container/interaction/set_back with storage backpacks:temp set_back

# Kill temp container:
tp @n[tag=backpacks.backpack_menu_temp_cursor] ~ -10000 ~
kill @n[tag=backpacks.backpack_menu_temp_cursor]
