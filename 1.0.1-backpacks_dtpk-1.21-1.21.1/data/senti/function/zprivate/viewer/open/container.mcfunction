$execute if data storage senti:open root[{id:$(target)}] run return 0
$data modify storage senti:open root append from storage senti:id root.containers[{id:$(target)}]
$data remove storage senti:items root.$(target)
$data modify storage senti:items root.$(target) set from entity $(uuid) Items


