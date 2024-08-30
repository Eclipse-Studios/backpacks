# @s is the player!
# say main
# Reset:
advancement grant @s only backpacks:not_holding_bp
function backpacks:bp/control/kill
advancement revoke @s only backpacks:not_holding_bp
tag @s remove backpacks.backpack_menu_summoned
scoreboard players reset @s backpacks.join
