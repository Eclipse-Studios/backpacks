# Unistall datapack:
function backpacks:cmd/uninstall_invminecarts

scoreboard objectives remove backpacks.id
scoreboard objectives remove backpacks.slots
scoreboard objectives remove backpacks.pages
scoreboard objectives remove backpacks.type
scoreboard objectives remove backpacks.join
scoreboard objectives remove backpacks.crouch_timer
scoreboard objectives remove backpacks.settings
scoreboard objectives remove backpacks.main
scoreboard objectives remove backpacks.api.container
scoreboard objectives remove backpacks.api.GetNOfSlotsThatShouldBeLocked

team remove backpacks.no_collision

tag @a remove backpacks.backpack_menu_summoned
tag @a remove backpacks.mainhand
tag @a remove backpacks.offhand
tag @a remove backpacks.last_mainhand
tag @a remove backpacks.last_offhand

execute as @e[tag=backpacks.backpack_menu_ready] at @s run tp ~ -10000 ~
execute as @e[tag=backpacks.backpack_menu_ready] run kill @s
execute as @e[tag=backpacks.interaction_ready] run kill @s

clear @a *[custom_data~{backpacks:{}}]
clear @a *[custom_data~{menu_backpack:{}}]

advancement revoke @a only backpacks:holding_bp
advancement revoke @a only backpacks:not_holding_bp
advancement revoke @a only backpacks:open
advancement revoke @a only backpacks:summon_bp
advancement revoke @a only backpacks:tree/adventurer
advancement revoke @a only backpacks:tree/color
advancement revoke @a only backpacks:tree/ender
advancement revoke @a only backpacks:tree/max
advancement revoke @a only backpacks:tree/nes
advancement revoke @a only backpacks:tree/root
advancement revoke @a only backpacks:tree/style
advancement revoke @a only backpacks:upgrade/to_2
advancement revoke @a only backpacks:upgrade/to_3
advancement revoke @a only backpacks:upgrade/to_4

tellraw @s ["",{"text":"[BP] ","color":"yellow"},{"translate":"uninstall.backpacks.3","color":"green"}]
playsound minecraft:entity.player.levelup
