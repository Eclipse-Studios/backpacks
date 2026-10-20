execute if score @s senti.viewers = @s senti.viewers run return 0
loot replace entity 2e27f63b-4035-4527-91c0-96a4daa8b8c6 contents loot senti:head
data modify storage senti:viewers root append from entity 2e27f63b-4035-4527-91c0-96a4daa8b8c6 item.components."minecraft:profile"
data remove storage senti:viewers root[-1].properties
data modify storage senti:viewers root.[-1].uuid set from storage senti:viewers root.[-1].id
execute store result storage senti:viewers root[-1].id int 1 store result score @s senti.viewers run scoreboard players add #id senti.viewers 1