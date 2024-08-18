scoreboard players set @s senti.id 0
execute if entity @s[advancements={senti:interact={b0_1=true}}] run scoreboard players add @s senti.id 1
execute if entity @s[advancements={senti:interact={b1_1=true}}] run scoreboard players add @s senti.id 2
execute if entity @s[advancements={senti:interact={b2_1=true}}] run scoreboard players add @s senti.id 4
execute if entity @s[advancements={senti:interact={b3_1=true}}] run scoreboard players add @s senti.id 8
execute if entity @s[advancements={senti:interact={b4_1=true}}] run scoreboard players add @s senti.id 16
execute if entity @s[advancements={senti:interact={b5_1=true}}] run scoreboard players add @s senti.id 32
execute if entity @s[advancements={senti:interact={b6_1=true}}] run scoreboard players add @s senti.id 64
execute if entity @s[advancements={senti:interact={b7_1=true}}] run scoreboard players add @s senti.id 128
execute if entity @s[advancements={senti:interact={b8_1=true}}] run scoreboard players add @s senti.id 256
execute if entity @s[advancements={senti:interact={b9_1=true}}] run scoreboard players add @s senti.id 512
execute if entity @s[advancements={senti:interact={b10_1=true}}] run scoreboard players add @s senti.id 1024
execute if entity @s[advancements={senti:interact={b11_1=true}}] run scoreboard players add @s senti.id 2048
execute if entity @s[advancements={senti:interact={b12_1=true}}] run scoreboard players add @s senti.id 4096
execute if entity @s[advancements={senti:interact={b13_1=true}}] run scoreboard players add @s senti.id 8192
execute if entity @s[advancements={senti:interact={b14_1=true}}] run scoreboard players add @s senti.id 16384
execute if entity @s[advancements={senti:interact={b15_1=true}}] run scoreboard players add @s senti.id 32768
execute store result storage senti:id root.target int 1 run scoreboard players operation @s senti.id = @s senti.id
advancement revoke @s only senti:interact

execute unless score @s senti.viewers matches 0.. run function senti:zprivate/viewer/namechange/init with entity @s


scoreboard players set @s senti.leave 0
advancement revoke @s only senti:tick


function senti:zprivate/viewer/open/uuid with storage senti:id root
function senti:zprivate/viewer/open/container with storage senti:id root
execute store result storage senti:id root.viewer int 1 run scoreboard players get @s senti.viewers
function senti:zprivate/viewer/open/append with storage senti:id root
scoreboard players add .viewers senti.viewers 1



function #senti:viewer/open
schedule function senti:zprivate/container/tick/init 1t replace