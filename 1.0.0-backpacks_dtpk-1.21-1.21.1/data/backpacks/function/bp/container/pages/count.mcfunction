# @p[advancements={backpacks:summon_bp=true}] is the player at him! | @s is the menu! | @s backpacks.pages is the number of pages & $pages backpacks.pages is the remaining slots!

# Add one page:
scoreboard players add @s backpacks.pages 1

# Remove slots:
scoreboard players remove $pages backpacks.pages 26

# Next page:
execute unless score @s backpacks.pages matches 1 if score $pages backpacks.pages matches 1.. run scoreboard players add $pages backpacks.pages 1
execute if score $pages backpacks.pages matches 1.. run function backpacks:bp/container/pages/count
execute unless score $pages backpacks.pages matches 1.. run scoreboard players add $pages backpacks.pages 26
