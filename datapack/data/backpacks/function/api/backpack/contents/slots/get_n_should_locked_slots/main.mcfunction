# Get the number of locked slots a backpack should have:
# Info:
# storage --> backpacks:api GetNOfSlotsThatShouldBeLocked.Backpack --> Backpack data ("minecraft:custom_data" of the backpack item)
# Expected:
# scoreboard --> $output backpacks.api.GetNOfSlotsThatShouldBeLocked --> Number of locked slots the backpack should have

# Get amount of slots:
execute store result score $slots backpacks.api.GetNOfSlotsThatShouldBeLocked run data get storage backpacks:api GetNOfSlotsThatShouldBeLocked.Backpack.backpacks.contents.slots

# Get number of pages:
execute store result score $n_pages backpacks.api.GetNOfSlotsThatShouldBeLocked run data get storage backpacks:api GetNOfSlotsThatShouldBeLocked.Backpack.backpacks.contents.pages

# Get number of total slots across all pages without the "go back" and "go next" buttons (except for the last page "go back" button as it counts as locked):
## There is always one page which has 27 slots:
scoreboard players set $total_slots backpacks.api.GetNOfSlotsThatShouldBeLocked 27
scoreboard players remove $n_pages backpacks.api.GetNOfSlotsThatShouldBeLocked 1

## If there is more than one page then there should be a last page with 26 slots (because of the "go back" button)
execute if score $n_pages backpacks.api.GetNOfSlotsThatShouldBeLocked matches 1.. run scoreboard players add $total_slots backpacks.api.GetNOfSlotsThatShouldBeLocked 26
execute if score $n_pages backpacks.api.GetNOfSlotsThatShouldBeLocked matches 1.. run scoreboard players remove $n_pages backpacks.api.GetNOfSlotsThatShouldBeLocked 1

## If there are more pages then they are pages with 25 slots (because they have the "go back" and "go next" buttons)
execute if score $n_pages backpacks.api.GetNOfSlotsThatShouldBeLocked matches 1.. run scoreboard players set $25_slots_pages backpacks.api.GetNOfSlotsThatShouldBeLocked 25
execute if score $n_pages backpacks.api.GetNOfSlotsThatShouldBeLocked matches 1.. run scoreboard players operation $25_slots_pages backpacks.api.GetNOfSlotsThatShouldBeLocked *= $n_pages backpacks.api.GetNOfSlotsThatShouldBeLocked
execute if score $n_pages backpacks.api.GetNOfSlotsThatShouldBeLocked matches 1.. run scoreboard players operation $total_slots backpacks.api.GetNOfSlotsThatShouldBeLocked += $25_slots_pages backpacks.api.GetNOfSlotsThatShouldBeLocked

# Calc the amount of slots that should be locked (total slots - amount of slots = locked slots there should be):
scoreboard players operation $output backpacks.api.GetNOfSlotsThatShouldBeLocked = $total_slots backpacks.api.GetNOfSlotsThatShouldBeLocked
scoreboard players operation $output backpacks.api.GetNOfSlotsThatShouldBeLocked -= $slots backpacks.api.GetNOfSlotsThatShouldBeLocked
