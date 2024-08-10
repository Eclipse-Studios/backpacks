# Revert changes:
execute as @e[tag=backpacks.invisible_minecart,type=chest_minecart] run data modify entity @s DisplayState.Name set value "minecraft:chest"
execute as @e[tag=backpacks.invisible_minecart,type=chest_minecart] run data modify entity @s DisplayOffset set value 8

execute as @e[tag=backpacks.invisible_minecart,type=minecart] run data remove entity @s DisplayState.Name

execute as @e[tag=backpacks.invisible_minecart,type=hopper_minecart] run data modify entity @s DisplayState.Name set value "minecraft:hopper"
execute as @e[tag=backpacks.invisible_minecart,type=hopper_minecart] run data modify entity @s DisplayOffset set value 1

execute as @e[tag=backpacks.invisible_minecart,type=furnace_minecart] run data modify entity @s DisplayState.Name set value "minecraft:furnace"
execute as @e[tag=backpacks.invisible_minecart,type=furnace_minecart] run data modify entity @s DisplayOffset set value 5

execute as @e[tag=backpacks.invisible_minecart,type=tnt_minecart] run data modify entity @s DisplayState.Name set value "minecraft:tnt"
execute as @e[tag=backpacks.invisible_minecart,type=tnt_minecart] run data modify entity @s DisplayOffset set value 6

execute as @e[tag=backpacks.invisible_minecart,type=command_block_minecart] run data modify entity @s DisplayState.Name set value "minecraft:command_block"
execute as @e[tag=backpacks.invisible_minecart,type=command_block_minecart] run data modify entity @s DisplayOffset set value 6

execute as @e[tag=backpacks.invisible_minecart,type=spawner_minecart] run data modify entity @s DisplayState.Name set value "minecraft:spawner"
execute as @e[tag=backpacks.invisible_minecart,type=spawner_minecart] run data modify entity @s DisplayOffset set value 6

kill @e[tag=backpacks.custom_minecart]

tag @e[tag=backpacks.invisible_minecart] add backpacks.not_this_minecart
tag @e[tag=backpacks.invisible_custom_minecart] add backpacks.not_this_minecart

tag @e remove backpacks.invisible_minecart
tag @e remove backpacks.invisible_custom_minecart
