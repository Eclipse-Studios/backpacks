execute unless score @s senti.id matches 0.. run return 0
execute unless score @s senti.viewers matches 0.. run function senti:zprivate/viewer/namechange/init with entity @s
execute if score @s senti.leave matches 1 run function #senti:viewer/relog
execute if score @s senti.leave matches 1 run return 0
execute store result storage senti:id root.target int 1 run scoreboard players get @s senti.id
function senti:zprivate/viewer/open/uuid with storage senti:id root
function senti:zprivate/viewer/check/loottable with storage senti:id root

execute if score #bool senti.id matches 1 store result storage senti:id root.viewer int 1 run scoreboard players get @s senti.viewers
execute if score #bool senti.id matches 1 run return run function senti:zprivate/viewer/check/closed with storage senti:id root
function senti:zprivate/viewer/check/restore with storage senti:id root
item modify entity @s weapon []
advancement revoke @s only senti:tick