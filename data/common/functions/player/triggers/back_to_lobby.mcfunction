execute if score @s counter matches 5.. if score @s deathMessage matches 1 run tellraw @s ["",{"text":"C:/Administrator/","bold":true},{"text":"levels_simulation","obfuscated":true,"bold":true},{"text":" >> "},{"text":"Severed connections between "},{"selector":"@s"},{"text": " and "},{"text": "simulation","obfuscated": true}]
scoreboard players set @s respawnChance 4
scoreboard players set @s counter 0
scoreboard players set @s deathMessage 0
effect clear @s
effect give @s saturation 1000000 255 true
tp @s -311 -60 191
scoreboard players set @s player.back_to_lobby 0
scoreboard players reset @s player.respawn
scoreboard players reset @s player.spectate
scoreboard players reset @s player.back_to_lobby
tag @s remove deadPlayer
#tellraw @a ["",{"text":"C:/Administrator/","bold":true},{"text":"levels_simulation","obfuscated":true,"bold":true},{"text":" >> "},{"selector":"@s"},{"text":" has been disconnected from the levels"}]