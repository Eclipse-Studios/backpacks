# @p[advancements={backpacks:not_holding_bp=true}] is the player at player! | @s & @n[tag=backpacks.backpack_kill_this] are the menu!

# Reset:
tag @s remove backpacks.backpack_kill_this
advancement revoke @p[advancements={backpacks:not_holding_bp=true}] only backpacks:not_holding_bp
