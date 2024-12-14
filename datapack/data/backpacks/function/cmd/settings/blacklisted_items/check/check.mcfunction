# > backpacks:cmd/settings/blacklisted_items/check/main
# Macros:
# $(conditions) --> The predicate
# @s is the chest minecart | @p[tag=senti.viewer] is the player!
# Content of the previous tick of the chest minecart is on storage "senti:api old"
# A new item has been added to the backpack
# Check if the new item is in the "blacklisted items" list
say check
$say $(conditions)
# Check (if it passes then it will let the rest of the function to run, if not it will not):
$execute unless predicate $(conditions) run say fail
$execute if predicate $(conditions) run say true
say end
