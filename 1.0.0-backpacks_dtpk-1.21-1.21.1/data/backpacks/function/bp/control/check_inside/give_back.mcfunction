# @p[advancements={backpacks:not_holding_bp=true}] is the player at player! | @s & @n[tag=backpacks.backpack_kill_this] are the menu!
# say give back
# $say $(Slot)
# Save holding item:
summon chest_minecart ~ ~1 ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,CustomDisplayTile:1b,Tags:["backpacks.save_holding_give_back","backpacks.invisible_minecart"]}

item replace entity @n[tag=backpacks.save_holding_give_back] container.0 from entity @p[advancements={backpacks:not_holding_bp=true},tag=backpacks.offhand] weapon.offhand
item replace entity @n[tag=backpacks.save_holding_give_back] container.0 from entity @p[advancements={backpacks:not_holding_bp=true},tag=backpacks.mainhand] weapon.mainhand

# Set back item:
$item replace entity @p[advancements={backpacks:not_holding_bp=true},tag=backpacks.offhand] weapon.offhand from entity @n[tag=backpacks.backpack_kill_this] container.$(Slot)
$item replace entity @p[advancements={backpacks:not_holding_bp=true},tag=backpacks.mainhand] weapon.mainhand from entity @n[tag=backpacks.backpack_kill_this] container.$(Slot)

# Restore item:
$item replace entity @s container.$(Slot) from entity @n[tag=backpacks.save_holding_give_back] container.0
tellraw @a {"nbt":"SelectedItem","entity":"@s","color":"aqua"}
# Kill temp container:
tp @n[tag=backpacks.save_holding_give_back] ~ -10000 ~
kill @n[tag=backpacks.save_holding_give_back]

# Cancel kill:
function backpacks:bp/control/check_inside/cancel

# Return:
# say fail
return fail
