# > backpacks:api/container/difference/main
# Macros:
# $(Slot) --> Current slot we are checking
# Info:
# backpacks:container Container1 --> Items in the first container
# backpacks:container Container2 --> Items in second container
# Expected:
# backpacks:container Output --> Difference of both containers

# Check:
$data modify storage backpacks:container Check set from storage backpacks:container Container1[{Slot:$(Slot)b}]
$execute store success score $check_difference backpacks.api.container run data modify storage backpacks:container Check set from storage backpacks:container Container2[{Slot:$(Slot)b}]

# If difference:
execute if score $check_difference backpacks.api.container matches 1 run data modify storage backpacks:container Output append from storage backpacks:container Check
# $execute if score $check_difference backpacks.api.container matches 1 run data modify storage backpacks:container Output append from storage backpacks:container Container1[{Slot:$(Slot)b}]

# Loop:
$scoreboard players set $check_loop backpacks.api.container $(Slot)
execute store result storage backpacks:container Slot int 1 run scoreboard players add $check_loop backpacks.api.container 1
execute unless score $check_loop backpacks.api.container matches 27.. run function backpacks:api/container/difference/loop_check with storage backpacks:container
