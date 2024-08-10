# @s is the menu item and on origin is the player!

# Get backpack:
execute on origin run tag @s add backpacks.this_origin_menu_item
execute as @e[tag=backpacks.backpack_menu_ready] if score @s backpacks.id = @p[tag=backpacks.this_origin_menu_item] backpacks.id run tag @s add backpacks.this_origin_menu
execute on origin run tag @s remove backpacks.this_origin_menu_item

# Summon temp container:
summon chest_minecart ~ ~1 ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,CustomDisplayTile:1b,Tags:["backpacks.this_origin_menu_placeholder","backpacks.invisible_minecart"]}
data modify entity @n[tag=backpacks.this_origin_menu_placeholder] Items append from entity @s Item

# Set back:
$item replace entity @n[tag=backpacks.this_origin_menu] container.$(Slot) from entity @n[tag=backpacks.this_origin_menu_placeholder] container.0

# Reset:
tp @n[tag=backpacks.this_origin_menu_placeholder] ~ -10000 ~
kill @n[tag=backpacks.this_origin_menu_placeholder]
tag @n[tag=backpacks.this_origin_menu] remove backpacks.this_origin_menu
kill @s
