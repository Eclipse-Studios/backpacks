# Unistall datapack:
function backpacks:cmd/uninstall_invminecarts

scoreboard objectives remove backpacks.id
scoreboard objectives remove backpacks.slots
scoreboard objectives remove backpacks.pages
scoreboard objectives remove backpacks.type
scoreboard objectives remove backpacks.join

team remove backpacks.no_collision

tag @a remove backpacks.backpack_menu_summoned
tag @a remove backpacks.mainhand
tag @a remove backpacks.offhand

execute as @e[tag=backpacks.backpack_menu_ready] at @s run tp ~ -10000 ~
execute as @e[tag=backpacks.backpack_menu_ready] run kill @s
execute as @e[tag=backpacks.interaction_ready] run kill @s

clear @a *[custom_data~{backpacks:{}}]
clear @a *[custom_data~{menu_backpack:{}}]

tellraw @s ["",{"text":"[BP] ","color":"yellow"},{"translate":"uninstall.backpacks.3","color":"green"}]
playsound minecraft:entity.player.levelup
