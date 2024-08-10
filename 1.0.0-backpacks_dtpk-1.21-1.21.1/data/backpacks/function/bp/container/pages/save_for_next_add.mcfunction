# @p[advancements={backpacks:summon_bp=true}] is the player at him! | @s is the menu! | The menu has the backpack item in container.0!

# Transfer item:
item replace entity @n[tag=backpacks.backpack_menu_page_placeholder] container.0 from entity @n[tag=backpacks.save_for_next] container.0

# Kill temp container:
tp @n[tag=backpacks.save_for_next] ~ -10000 ~
kill @n[tag=backpacks.save_for_next]
