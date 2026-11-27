# @s & @p[advancements={backpacks:holding_bp=true}] is the player at @s! | Its menu is @n[tag=backpacks.this_backpack_menu]! | @n[tag=backpacks.backpack_menu_give_back] is the temp menu!

# Give cursor:
item replace entity @s[tag=backpacks.give_back_cursor] player.cursor from entity @n[tag=backpacks.backpack_menu_give_back] container.0

# Give inv:
execute if entity @s[tag=backpacks.give_back_inv] run kill @n[tag=backpacks.backpack_menu_give_back]

# Kill temp container:
tp @n[tag=backpacks.backpack_menu_give_back] ~ -10000 ~
kill @n[tag=backpacks.backpack_menu_give_back]

# Reset:
tag @s[tag=backpacks.give_back_cursor] remove backpacks.give_back_cursor
tag @s[tag=backpacks.give_back_inv] remove backpacks.give_back_inv
tag @s[tag=backpacks.give_back] remove backpacks.give_back
