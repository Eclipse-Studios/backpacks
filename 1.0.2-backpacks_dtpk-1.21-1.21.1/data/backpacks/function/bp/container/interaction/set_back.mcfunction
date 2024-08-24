# @s & @p[advancements={backpacks:holding_bp=true}] is the player at @s! | Its menu is @n[tag=backpacks.this_backpack_menu]!

# Give back the items:
$execute if data entity @n[tag=backpacks.this_backpack_menu] Items[{Slot:$(Slot)b}] run function backpacks:bp/container/interaction/give_back/main with storage backpacks:temp set_back

# Set back:
$execute if predicate backpacks:interaction/holding_cursor run item replace entity @n[tag=backpacks.this_backpack_menu] container.$(Slot) from entity @s player.cursor
$execute if predicate backpacks:interaction/holding_inv run item replace entity @n[tag=backpacks.this_backpack_menu] container.$(Slot) from entity @s container.$(player_Slot)

# Give back the items v2:
execute if entity @s[tag=backpacks.give_back] run function backpacks:bp/container/interaction/give_back/give
