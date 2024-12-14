# > backpacks:bp/summon/name/main
# Macros:
# $(temp_) --> Sliced string of the backpack's item name
# @s & @p[advancements={backpacks:summon_bp=true}] is the player at @s!

# Create the name string:
$data modify storage backpacks:temp BackpackName.Name set value '[{$(temp_),"color": "#7b7b00"},{"translate":"space.-4096"}]'