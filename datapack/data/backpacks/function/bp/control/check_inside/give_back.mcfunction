# @p[advancements={backpacks:not_holding_bp=true}] is the player at player! | @s & @n[tag=backpacks.backpack_kill_this] are the menu!
# say give back
# $say Slot: $(Slot)
# Save holding item:
summon chest_minecart ~ ~1 ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,CustomDisplayTile:1b,Tags:["backpacks.save_holding_give_back","backpacks.invisible_minecart"]}

item replace entity @n[tag=backpacks.save_holding_give_back] container.0 from entity @p[advancements={backpacks:not_holding_bp=true},tag=backpacks.offhand] weapon.offhand
item replace entity @n[tag=backpacks.save_holding_give_back] container.0 from entity @p[advancements={backpacks:not_holding_bp=true},tag=backpacks.mainhand] weapon.mainhand

# Get backpack item:
summon chest_minecart ~ ~1 ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,CustomDisplayTile:1b,Tags:["backpacks.give_back_backpack_item","backpacks.invisible_minecart"]}
$item replace entity @n[tag=backpacks.give_back_backpack_item] container.0 from entity @n[tag=backpacks.backpack_kill_this] container.$(Slot)

# Set back item:
# execute if entity @p[advancements={backpacks:not_holding_bp=true},tag=backpacks.offhand,tag=!backpacks.offhand,tag=!backpacks.mainhand] run say NONE
item replace entity @p[advancements={backpacks:not_holding_bp=true},tag=backpacks.offhand] weapon.offhand from entity @n[tag=backpacks.give_back_backpack_item] container.0
item replace entity @p[advancements={backpacks:not_holding_bp=true},tag=backpacks.mainhand] weapon.mainhand from entity @n[tag=backpacks.give_back_backpack_item] container.0

# Restore item:
$item replace entity @s container.$(Slot) from entity @n[tag=backpacks.save_holding_give_back] container.0
# tellraw @a {"nbt":"SelectedItem","entity":"@p[advancements={backpacks:not_holding_bp=true}]","color":"aqua"}

# Make sure the backpack has been given back:
# execute unless items entity @p[advancements={backpacks:not_holding_bp=true},tag=backpacks.offhand] weapon.offhand *[custom_data~{backpacks:{}}] run say FAIL OFFHAND
# execute unless items entity @p[advancements={backpacks:not_holding_bp=true},tag=backpacks.mainhand] weapon.mainhand *[minecraft:custom_data~{backpacks:{}}] run say FAIL MAINHAND

# Kill temp container:
tp @n[tag=backpacks.save_holding_give_back] ~ -10000 ~
kill @n[tag=backpacks.save_holding_give_back]
tp @n[tag=backpacks.give_back_backpack_item] ~ -10000 ~
kill @n[tag=backpacks.give_back_backpack_item]

# Cancel kill:
function backpacks:bp/control/check_inside/cancel
