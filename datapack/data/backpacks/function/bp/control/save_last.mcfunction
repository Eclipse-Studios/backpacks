# @s & @p[advancements={backpacks:holding_bp=true}] is the player at @s! | Its menu is @n[tag=backpacks.this_backpack_menu]!

# Save last slot which held the backpack for prevention:
tag @s remove backpacks.last_mainhand
tag @s remove backpacks.last_offhand
execute if entity @s[tag=backpacks.mainhand] run tag @s add backpacks.last_mainhand
execute if entity @s[tag=backpacks.offhand] run tag @s add backpacks.last_offhand
