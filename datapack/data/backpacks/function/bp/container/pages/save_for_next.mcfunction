# @p[advancements={backpacks:summon_bp=true}] is the player at him! | @s is the menu! | The menu has the backpack item in container.0!

# Summon temp container:
summon chest_minecart ~ ~1 ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,Tags:["backpacks.save_for_next","backpacks.invisible_minecart"]}

# Summon 2nd temp container:
summon chest_minecart ~ ~1 ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,Tags:["backpacks.save_for_next_2","backpacks.invisible_minecart"]}

# Transfer item:
data modify entity @n[tag=backpacks.save_for_next_2] Items set from entity @s Items[0].components."minecraft:custom_data".backpacks.contents.pages[-1]
item replace entity @n[tag=backpacks.save_for_next] container.0 from entity @n[tag=backpacks.save_for_next_2] container.26

# Kill temp container if menu item:
execute as @n[tag=backpacks.save_for_next] if items entity @s container.0 *[custom_data~{menu_backpack:{}}] run tp ~ -10000 ~
execute as @n[tag=backpacks.save_for_next] if items entity @s container.0 *[custom_data~{menu_backpack:{}}] run kill @s

# Kill 2nd temp container:
tp @n[tag=backpacks.save_for_next_2] ~ -10000 ~
kill @n[tag=backpacks.save_for_next_2]
