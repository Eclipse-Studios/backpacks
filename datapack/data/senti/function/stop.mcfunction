tag @s remove senti.b0_0
tag @s remove senti.b1_0
tag @s remove senti.b2_0
tag @s remove senti.b3_0
tag @s remove senti.b4_0
tag @s remove senti.b5_0
tag @s remove senti.b6_0
tag @s remove senti.b7_0
tag @s remove senti.b8_0
tag @s remove senti.b9_0
tag @s remove senti.b10_0
tag @s remove senti.b11_0
tag @s remove senti.b12_0
tag @s remove senti.b13_0
tag @s remove senti.b14_0
tag @s remove senti.b15_0
tag @s remove senti.b0_1
tag @s remove senti.b1_1
tag @s remove senti.b2_1
tag @s remove senti.b3_1
tag @s remove senti.b4_1
tag @s remove senti.b5_1
tag @s remove senti.b6_1
tag @s remove senti.b7_1
tag @s remove senti.b8_1
tag @s remove senti.b9_1
tag @s remove senti.b10_1
tag @s remove senti.b11_1
tag @s remove senti.b12_1
tag @s remove senti.b13_1
tag @s remove senti.b14_1
tag @s remove senti.b15_1
tag @s remove senti.watched
tag @s remove senti.open

execute store result storage senti:id root.target int 1 store result storage senti:id root.temp int 1 run scoreboard players get @s senti.id
data modify storage senti:id root.id append from storage senti:id root.temp
scoreboard players reset @s senti.id
function senti:zprivate/container/stop with storage senti:id root
