# @s & @p[advancements={backpacks:holding_bp=true}] is the player at @s! | Its menu is @n[tag=backpacks.this_backpack_menu]!

# Tags:
tag @s add backpacks.give_back
tag @s[predicate=backpacks:interaction/holding_cursor] add backpacks.give_back_cursor
tag @s[predicate=backpacks:interaction/holding_inv] add backpacks.give_back_inv

# Summon temp container:
summon chest_minecart ~ ~1 ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,CustomDisplayTile:1b,Tags:["backpacks.backpack_menu_give_back","backpacks.invisible_minecart"]}

# Save item:
$execute if predicate backpacks:interaction/holding_cursor run item replace entity @n[tag=backpacks.backpack_menu_give_back] container.0 from entity @n[tag=backpacks.this_backpack_menu] container.$(Slot)
$execute if predicate backpacks:interaction/holding_inv run item replace entity @n[tag=backpacks.backpack_menu_give_back] container.0 from entity @n[tag=backpacks.this_backpack_menu] container.$(Slot)
