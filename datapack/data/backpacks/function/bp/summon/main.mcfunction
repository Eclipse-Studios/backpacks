# @s & @p[advancements={backpacks:summon_bp=true}] is the player at @s!

# Check if player is online:
execute unless entity @s run advancement revoke @s only backpacks:summon_bp
execute unless entity @s run return fail

# Summon:
function backpacks:bp/summon/summon

# Tags:
tag @s add backpacks.backpack_menu_summoned

# Reset advancement:
advancement revoke @s only backpacks:summon_bp
