execute if score #temp senti.viewers matches 1 if score .viewers senti.viewers matches 0 run return 0
execute store result score #temp senti.viewers run data get storage senti:id root.temp[-1].viewers[-1].id
scoreboard players set #bool senti.viewers 0
execute as @a if score @s senti.viewers = #temp senti.viewers run scoreboard players set #bool senti.viewers 1

execute if score #bool senti.viewers matches 0 run data modify storage senti:api player set from storage senti:id root.temp[-1].viewers[-1]
execute if score #bool senti.viewers matches 0 run function #senti:log_out
execute if score #bool senti.viewers matches 0 run data remove storage senti:id root.temp[-1].viewers[-1]
execute if score #bool senti.viewers matches 0 run data modify storage senti:api uuid set from storage senti:id root.temp[-1].uuid
execute if score #bool senti.viewers matches 0 run function senti:zprivate/container/tick/logout/close with storage senti:api
execute if score #bool senti.viewers matches 0 run function senti:zprivate/container/tick/logout/reset with storage senti:api player


execute if score #bool senti.viewers matches 1 run data remove storage senti:id root.temp[-1].viewers[-1]
execute unless data storage senti:id root.temp[-1].viewers[] run data remove storage senti:id root.temp[-1]
execute if data storage senti:id root.temp[] run function senti:zprivate/container/tick/logout/init