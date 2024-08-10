data remove storage senti:api old


$data modify storage senti:api old set from storage senti:items root.$(id)
$execute store success score #bool senti.id run data modify storage senti:items root.$(id) set from entity $(uuid) Items
$execute as @a[scores={senti.id=$(id)}] run tag @s add senti.viewer
$execute if score #bool senti.id matches 1 as $(uuid) run function #senti:container/changed
$execute as $(uuid) run function #senti:container/tick
$data modify storage senti:items root.$(id) set from entity $(uuid) Items
$data modify entity $(uuid) LootTable set value "a"
tag @a remove senti.viewer

data remove storage senti:id root.temp[-1]
execute if data storage senti:id root.temp[] run function senti:zprivate/container/tick/check with storage senti:id root.temp[-1]