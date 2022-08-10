tag @s add deadPlayer
scoreboard players set @s hasDied 0
scoreboard players set @s counter 0
scoreboard players set @s deathMessage 0
title @s times 0 50 0
tellraw @a ["",{"text":"C:/Administrator/","bold":true},{"text":"levels_simulation","obfuscated":true,"bold":true},{"text":" >> "},{"selector":"@s"},{"text":" has been disconnected from "},{"text": "simulation","obfuscated": true}]