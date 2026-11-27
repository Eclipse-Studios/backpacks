# @p[tag=backpacks.backpack_menu_save_this_player] is the player at player | @s is the menu!

# Summon placeholder:
summon armor_stand ~ ~ ~ {CustomNameVisible:0b,NoGravity:1b,Silent:1b,Invulnerable:1b,HasVisualFire:0b,Glowing:0b,ShowArms:0b,Small:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,Tags:["backpacks.contents_placeholder"],DisabledSlots:4144959}

# Save contents:
item replace entity @n[tag=backpacks.contents_placeholder] armor.head from entity @p[tag=backpacks.backpack_menu_save_this_player] player.cursor
$data modify entity @n[tag=backpacks.contents_placeholder] equipment.head.components."minecraft:custom_data".backpacks.contents.pages[$(page)] set from entity @s Items

# Give back the backpack:
item replace entity @p[tag=backpacks.backpack_menu_save_this_player] player.cursor from entity @n[tag=backpacks.contents_placeholder] armor.head

# Kill placeholder:
kill @n[tag=backpacks.contents_placeholder]
