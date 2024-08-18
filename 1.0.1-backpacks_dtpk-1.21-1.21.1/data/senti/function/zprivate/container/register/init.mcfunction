execute store success score #bool senti.id if data storage senti:id root.id[]
execute if score #bool senti.id matches 1 run function senti:zprivate/container/register/recycleid
execute if score #bool senti.id matches 0 run execute store result storage senti:id root.target int 1 store result score #temp senti.id store result score #temp1 senti.id store result score @s senti.id run scoreboard players add #id senti.id 1
tag @s add senti.watched




execute store result storage senti:id root.loop int 1 run scoreboard players set #loop senti.id 0
function senti:zprivate/container/register/loop
function senti:zprivate/container/register/storage with storage senti:id root
function senti:zprivate/container/register/generate

data modify storage senti:id root.containers append value {}
data modify storage senti:id root.containers[-1].uuid set from storage gu:main out
execute store result storage senti:id root.containers[-1].id int 1 run scoreboard players get @s senti.id
