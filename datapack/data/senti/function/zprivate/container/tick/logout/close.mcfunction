$data remove storage senti:open root[{uuid:"$(uuid)"}].viewers[$(player)]
$execute store result score #bool senti.id if data storage senti:open root[{uuid:$(uuid)}].viewers[] 
$execute if score #bool senti.id matches 0 run data remove storage senti:open root[{uuid:"$(uuid)"}]
$execute if score #bool senti.id matches 0 as $(uuid) run function #senti:container/closed