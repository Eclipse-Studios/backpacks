# @p[advancements={backpacks:open=true}] is the player at player! | Its menu is @s & @n[tag=backpacks.backpack_menu_opened]!
# say check
# Get amount of slots locked:
scoreboard players set $locked_slots backpacks.slots 27
execute store result score $temp backpacks.slots if items entity @s container.* *[custom_data~{menu_backpack:{empty:1b}}]
scoreboard players operation $locked_slots backpacks.slots -= $temp backpacks.slots

# Get amount of slots that should be locked:
execute store result score $locked_offhand backpacks.slots run data get entity @p[advancements={backpacks:open=true},tag=backpacks.offhand] Inventory[{Slot:-106b}].components."minecraft:custom_data".backpacks.init.slots
execute store result score $locked_mainhand backpacks.slots run data get entity @p[advancements={backpacks:open=true},tag=backpacks.mainhand] SelectedItem.components."minecraft:custom_data".backpacks.init.slots

scoreboard players set @s backpacks.slots 0
scoreboard players operation @s backpacks.slots += $locked_offhand backpacks.slots
scoreboard players operation @s backpacks.slots += $locked_mainhand backpacks.slots

# Compare:
execute unless score $locked_slots backpacks.slots = @s backpacks.slots run function backpacks:bp/open/slots/reset
