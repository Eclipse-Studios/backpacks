loot replace entity 2e27f63b-4035-4527-91c0-96a4daa8b8c6 contents loot senti:head
$data modify storage senti:id root.name set from storage senti:viewers root[{uuid:$(UUID)}].name
function senti:zprivate/viewer/namechange/score with storage senti:id root
$data modify storage senti:viewers root[{uuid:$(UUID)}].name set from entity 2e27f63b-4035-4527-91c0-96a4daa8b8c6 item.components."minecraft:profile".name
