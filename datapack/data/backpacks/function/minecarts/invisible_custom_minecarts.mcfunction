summon item_display ~ ~ ~ {Tags:["backpacks.custom_minecart"],item_display:"head",transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.75f,0.75f,0.75f]},item:{id:"minecraft:stick",count:1,components:{"minecraft:item_model":"invminecarts:minecart"}}}
ride @n[tag=backpacks.custom_minecart,tag=!backpacks.custom_minecart_mounted] mount @s
tag @n[tag=backpacks.custom_minecart,tag=!backpacks.custom_minecart_mounted] add backpacks.custom_minecart_mounted
tag @s add backpacks.invisible_custom_minecart
tag @s add backpacks.invisible_minecart
