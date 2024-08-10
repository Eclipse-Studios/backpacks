# @s & @p[advancements={backpacks:open=true}] is the player at @s! | Its menu is @n[tag=backpacks.backpack_menu_opened]!

# Slots:
function backpacks:bp/check/offhand
function backpacks:bp/check/mainhand

# Get menu:
execute as @e[tag=backpacks.backpack_menu_ready] if score @s backpacks.id = @p[advancements={backpacks:open=true}] backpacks.id run tag @s add backpacks.backpack_menu_opened

# If opener is not owner:
execute if function backpacks:bp/open/not_owner run return fail

# Save:
execute as @n[tag=backpacks.backpack_menu_opened] run function backpacks:bp/container/save/main

# Reset:
scoreboard players set @n[tag=backpacks.backpack_menu_opened] backpacks.pages 0
execute as @n[tag=backpacks.backpack_menu_opened] run function backpacks:bp/container/update/main

# QoL:
execute if score @n[tag=backpacks.backpack_menu_opened] backpacks.type matches 0 run playsound item.armor.equip_leather
execute if score @n[tag=backpacks.backpack_menu_opened] backpacks.type matches 1.. run playsound block.ender_chest.open

# Summon interaction for more protection:
execute at @n[tag=backpacks.backpack_menu_opened] run summon interaction ~ ~-0.01 ~ {NoGravity:1b,Silent:1b,HasVisualFire:0b,Glowing:0b,CustomNameVisible:0b,height:0.75f,Tags:["backpacks.interaction"]}
scoreboard players operation @n[tag=backpacks.interaction,tag=!backpacks.interaction_ready] backpacks.id = @s backpacks.id
tag @n[tag=backpacks.interaction,tag=!backpacks.interaction_ready] add backpacks.interaction_ready

# Reset:
tag @n[tag=backpacks.backpack_menu_opened] remove backpacks.backpack_menu_opened
advancement revoke @s only backpacks:open
