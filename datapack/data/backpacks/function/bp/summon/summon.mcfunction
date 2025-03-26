# @s & @p[advancements={backpacks:summon_bp=true}] is the player at @s!

# Summon:
summon chest_minecart ~ ~1 ~ {DisplayState:{},DisplayOffset:-999999999,NoGravity:1b,Silent:1b,Invulnerable:1b,Tags:["backpacks.backpack_menu","backpacks.invisible_minecart"],CustomName:[{italic:false,text:'Backpack',color: '#7b7b00'},{translate:'space.-4096'}]}

# If init:
execute unless predicate backpacks:bp_init run function backpacks:bp/summon/init

# Id:
function backpacks:bp/summon/id

# Get which hand has it:
function backpacks:bp/check/offhand
function backpacks:bp/check/mainhand

# Check if slots count needs to be updated:
function backpacks:bp/summon/check

# Set contents:
execute if entity @s[tag=backpacks.offhand] if score @n[tag=backpacks.backpack_menu,tag=!backpacks.backpack_menu_ready] backpacks.type matches 0 run data modify entity @n[tag=backpacks.backpack_menu,tag=!backpacks.backpack_menu_ready] Items set from entity @s Inventory[{Slot:-106b}].components."minecraft:custom_data".backpacks.contents.pages[0]
execute if entity @s[tag=backpacks.mainhand] if score @n[tag=backpacks.backpack_menu,tag=!backpacks.backpack_menu_ready] backpacks.type matches 0 run data modify entity @n[tag=backpacks.backpack_menu,tag=!backpacks.backpack_menu_ready] Items set from entity @s SelectedItem.components."minecraft:custom_data".backpacks.contents.pages[0]

execute as @n[tag=backpacks.backpack_menu,tag=!backpacks.backpack_menu_ready] if score @s backpacks.type matches 1.. run function backpacks:bp/container/enderchest/copy

# Set name:
function backpacks:bp/summon/name/main

# Scores:
scoreboard players set @n[tag=backpacks.backpack_menu,tag=!backpacks.backpack_menu_ready] backpacks.pages 0

# Tags:
execute as @n[tag=backpacks.backpack_menu,tag=!backpacks.backpack_menu_ready] run function senti:start
execute as @n[tag=backpacks.backpack_menu,tag=!backpacks.backpack_menu_ready] run team join backpacks.no_collision
tag @n[tag=backpacks.backpack_menu,tag=!backpacks.backpack_menu_ready] add backpacks.backpack_menu_ready

# Team:
team join backpacks.no_collision
