# @p[advancements={backpacks:open=true}] is the player at player! | Its menu is @s & @n[tag=backpacks.backpack_menu_opened]!
# tellraw @a "check"
# Get amount of slots locked:
data remove storage backpacks:temp LockedSlots

data modify storage backpacks:temp LockedSlots set from entity @p[advancements={backpacks:open=true},tag=backpacks.mainhand] SelectedItem.components."minecraft:custom_data".backpacks.contents.pages[-1]
data modify storage backpacks:temp LockedSlots set from entity @p[advancements={backpacks:open=true},tag=backpacks.offhand] Inventory[{Slot:-106b}].components."minecraft:custom_data".backpacks.contents.pages[-1]

execute store result score $locked_slots backpacks.slots if data storage backpacks:temp LockedSlots[{components:{"minecraft:custom_data":{menu_backpack:{}}}}]

# Get amount of slots that should be locked:
data modify storage backpacks:api GetNOfSlotsThatShouldBeLocked.Backpack set from entity @p[advancements={backpacks:open=true},tag=backpacks.mainhand] SelectedItem.components."minecraft:custom_data"
data modify storage backpacks:api GetNOfSlotsThatShouldBeLocked.Backpack set from entity @p[advancements={backpacks:open=true},tag=backpacks.offhand] Inventory[{Slot:-106b}].components."minecraft:custom_data"
function backpacks:api/backpack/contents/slots/get_n_should_locked_slots/main
scoreboard players operation @s backpacks.slots = $output backpacks.api.GetNOfSlotsThatShouldBeLocked

# Compare (if they are not the same then save current page contents, set page to last and reset all locked slots):
execute unless score $locked_slots backpacks.slots = @s backpacks.slots run function backpacks:bp/container/save/main
execute unless score $locked_slots backpacks.slots = @s backpacks.slots run scoreboard players set @s backpacks.pages -1
execute unless score $locked_slots backpacks.slots = @s backpacks.slots run function backpacks:bp/container/update/main
execute unless score $locked_slots backpacks.slots = @s backpacks.slots run function backpacks:bp/open/slots/reset
