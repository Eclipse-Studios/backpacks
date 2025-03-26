# Sends through chat a list of every setting, what it does, it's state and whether it's on or off by default:

# Tellraws:
tellraw @s [{"translate":"settings.backpacks.settings.list.message_1","color":"gray"},"\n"]


execute if score $blacklisted_items backpacks.settings matches 0 run tellraw @s ["",{"text":"ⓘ","color":"dark_gray","hover_event":{"action":"show_text","value":[{"translate":"settings.backpacks.blacklisted_items.info"}]}}," ",{"translate":"settings.backpacks.change_state","with":[{"translate":"settings.backpacks.blacklisted_items.name","color":"yellow"},{"translate":"settings.backpacks.false","color":"yellow"},{"translate":"settings.backpacks.false","color":"yellow"}],"color":"gray"}," ",{"translate":"settings.backpacks.settings.list.change","color":"dark_gray","click_event":{"action":"suggest_command","command":"/function backpacks:cmd/settings/blacklisted_items/change"}}]
execute if score $blacklisted_items backpacks.settings matches 1 run tellraw @s ["",{"text":"ⓘ","color":"dark_gray","hover_event":{"action":"show_text","value":[{"translate":"settings.backpacks.blacklisted_items.info"}]}}," ",{"translate":"settings.backpacks.change_state","with":[{"translate":"settings.backpacks.blacklisted_items.name","color":"yellow"},{"translate":"settings.backpacks.true","color":"yellow"},{"translate":"settings.backpacks.true","color":"yellow"}],"color":"gray"}," ",{"translate":"settings.backpacks.settings.list.change","color":"dark_gray","click_event":{"action":"suggest_command","command":"/function backpacks:cmd/settings/blacklisted_items/change"}}]


tellraw @s ["","\n",{"translate":"settings.backpacks.settings.list.message_2","with":[{"translate":"settings.backpacks.settings.list.message_3","underlined":true,"color":"gray","click_event":{"action":"open_url","url":"https://discord.gg/X2NTE7hkq8"}}],"color":"gray"}]
