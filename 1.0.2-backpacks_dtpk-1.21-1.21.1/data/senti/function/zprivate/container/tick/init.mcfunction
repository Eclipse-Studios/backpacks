data modify storage senti:id root.temp set from storage senti:open root

scoreboard players set #temp senti.viewers 0
execute as @a[scores={senti.id=0..}] run scoreboard players add #temp senti.viewers 1

execute unless score #temp senti.viewers = .viewers senti.viewers run function senti:zprivate/container/tick/logout/init

scoreboard players operation .viewers senti.viewers = #temp senti.viewers


data modify storage senti:id root.temp set from storage senti:open root
function senti:zprivate/container/tick/check with storage senti:id root.temp[-1]
execute if data storage senti:open root[] run schedule function senti:zprivate/container/tick/init 1t
