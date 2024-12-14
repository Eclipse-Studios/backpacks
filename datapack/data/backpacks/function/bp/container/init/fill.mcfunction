# @p[advancements={backpacks:summon_bp=true}] is the player at him! | @s is the menu!
# Fill the menu starting from the end:
# $tellraw @a "$(c_slot)"
# Check if we need to stop:
$scoreboard players set $current backpacks.slots $(c_slot)

scoreboard players set $available_slots backpacks.slots 27
execute store result score $occupied_slots backpacks.slots if items entity @s container.* *[minecraft:custom_data~{menu_backpack:{}}]
scoreboard players operation $available_slots backpacks.slots -= $occupied_slots backpacks.slots
execute if score $available_slots backpacks.slots <= @s backpacks.slots run return fail

# Place:
$item replace entity @s[nbt=!{Items:[{Slot:$(c_slot)b}]}] container.$(c_slot) with black_stained_glass_pane[custom_model_data=9951631,custom_name='{"text":""}',custom_data={menu_backpack:{empty:1b}},hide_tooltip={}]
$data modify entity @s Items[{Slot:$(c_slot)b}].components."minecraft:custom_data".menu_backpack.Slot set value $(c_slot)

# Run again:
execute store result storage backpacks:temp slot.c_slot int 1 run scoreboard players remove $current backpacks.slots 1
function backpacks:bp/container/init/fill with storage backpacks:temp slot
