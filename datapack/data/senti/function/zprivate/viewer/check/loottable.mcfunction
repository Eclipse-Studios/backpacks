scoreboard players set #bool senti.id 1
$execute unless data storage senti:open root[{id:$(target)}] run return 0
$execute store success score #bool senti.id if data entity $(uuid) LootTable
