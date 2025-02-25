# Current item is a banned item and it will be removed
# Macros:
# $(Slot) --> Slot where the item is located

# If item is a bundle, then warn about the bugs with it:
execute if items entity @s container.* #bundles run tellraw @p[tag=backpacks.remember_this_player] {"translate":"other.backpacks.warning.bundles","with":[{"text":"#27","underlined":true,"clickEvent":{"action":"open_url","value":"https://discord.com/channels/1165767022496456734/1337221835116253256"}}],"color":"red"}
execute as @p[tag=backpacks.remember_this_player] run playsound entity.villager.no

# Give item:
data modify storage backpacks:lib Lib.Player.Give.Items append from storage backpacks:settings BlacklistedItems.RemoveItems.Input[0]

# Remove from original container:
$data remove entity @n[tag=backpacks.lib_blacklisted_items_preserve_original] Items[{Slot:$(Slot)b}]
