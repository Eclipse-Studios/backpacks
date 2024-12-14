# @p[advancements={backpacks:open=true}] is the player at player! | Its menu is @s & @n[tag=backpacks.backpack_menu_opened]!
# tellraw @a "reset"
# Reset locked slots:
data remove entity @s Items[{components:{"minecraft:custom_data":{menu_backpack:{empty:1b}}}}]

function backpacks:bp/container/init/fill {c_slot:26}
