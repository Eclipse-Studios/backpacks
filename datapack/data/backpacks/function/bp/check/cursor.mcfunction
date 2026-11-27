# @s is the player!

# Transfer item to temp container:
summon chest_minecart ~ ~1 ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,Tags:["backpacks.check_cursor","backpacks.invisible_minecart"]}
item replace entity @n[tag=backpacks.check_cursor] container.0 from entity @s player.cursor

# Get item id:
execute store result score $check_item_id backpacks.id run data get entity @n[tag=backpacks.check_cursor] Items[0].components."minecraft:custom_data".backpacks.init.id

# Kill temp container:
tp @n[tag=backpacks.check_cursor] ~ -10000 ~
kill @n[tag=backpacks.check_cursor]

# Check:
execute if score @s backpacks.id = $check_item_id backpacks.id run return 1
execute unless score @s backpacks.id = $check_item_id backpacks.id run return fail
