# Info:
# backpacks:container Container1 --> Items in the first container
# backpacks:container Container2 --> Items in second container
# Expected:
# backpacks:container Output --> Difference of both containers

# Reset:
data modify storage backpacks:container Output set value []

# Check:
function backpacks:api/container/difference/loop_check {Slot:0}
