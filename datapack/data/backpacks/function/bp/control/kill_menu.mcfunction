# @s is the menu!
# say kill
# Kill:
execute as @e[tag=backpacks.backpack_tp_ready] if score @s backpacks.id = @n[tag=backpacks.backpack_kill_this] backpacks.id run kill @s
function senti:stop
tp @s ~ -1000 ~
kill @s
