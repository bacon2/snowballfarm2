execute as @e[type=minecraft:snowball] at @s if block ~ ~ ~ minecraft:cobweb run summon item ~ ~ ~ {Item:{"id":"minecraft:snowball", "Count":1s}}
execute as @e[type=minecraft:snowball] at @s if block ~ ~ ~ minecraft:cobweb run kill @s
execute as @e[type=minecraft:potion] at @s if block ~ ~ ~ minecraft:cobweb run summon item ~ ~ ~ {Item:{"id":"minecraft:splash_potion", "Count":1s}, Tags:["stuck_potion"]}
execute as @e[tag=stuck_potion] run data modify entity @s Item set from entity @e[type=minecraft:potion, limit=1, sort=nearest] Item
tag @e remove stuck_potion
execute as @e[type=minecraft:potion] at @s if block ~ ~ ~ minecraft:cobweb run kill @s