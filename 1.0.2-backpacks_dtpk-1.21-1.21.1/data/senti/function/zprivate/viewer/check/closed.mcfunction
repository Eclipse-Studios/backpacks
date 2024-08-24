scoreboard players reset @s senti.id
scoreboard players remove .viewers senti.viewers 1
execute if score .viewers senti.viewers matches ..-1 run scoreboard players set .viewers senti.viewers 0
function #senti:viewer/closed
$data remove storage senti:open root[{id:$(target)}].viewers[{id:$(viewer)}]
$execute if data storage senti:open root[{id:$(target)}].viewers[] run return 0
$data remove storage senti:open root[{id:$(target)}]
$item modify entity $(uuid) container.0 []
$data modify entity $(uuid) Items set from storage senti:items root.$(target)
$execute as $(uuid) run function #senti:container/closed

