# @s is the player!

# Timer (0.5s):
scoreboard players add @s backpacks.crouch_timer 1

# Time's out:
execute if score @s backpacks.crouch_timer matches 10.. run tag @s remove backpacks.give_back_timer
execute if score @s backpacks.crouch_timer matches 10.. run scoreboard players set @s backpacks.crouch_timer 0
