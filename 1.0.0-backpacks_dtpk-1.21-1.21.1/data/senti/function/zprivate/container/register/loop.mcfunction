execute store result storage senti:id root.bit int 1 run scoreboard players operation #temp1 senti.id %= #2 senti.id
function senti:zprivate/container/register/tag with storage senti:id root
execute store result score #temp1 senti.id run scoreboard players operation #temp senti.id /= #2 senti.id
execute store result storage senti:id root.loop int 1 run scoreboard players add #loop senti.id 1
execute if score #loop senti.id matches ..15 run function senti:zprivate/container/register/loop