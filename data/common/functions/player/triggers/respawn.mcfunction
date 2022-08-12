execute if score @s counter matches 5.. if score @s deathMessage matches 1 run tellraw @s ["",{"text":"C:/Administrator/","bold":true},{"text":"levels_simulation","obfuscated":true,"bold":true},{"text":" >> "},{"selector":"@s"},{"text":" has been connected to the "},{"text": "simulation","obfuscated": true}]
scoreboard players remove @s respawnChance 1
scoreboard players set @s counter 0
scoreboard players set @s deathMessage 0
effect give @s saturation 1000000 255 true
effect give @s darkness 1000000 255 true
effect give @s slowness 1000000 1 true
tp @s 58 -33 -54
scoreboard players reset @s player.respawn
scoreboard players reset @s player.spectate
scoreboard players reset @s player.back_to_lobby
tag @s remove deadPlayer
clear @s
give @s torch 1
give @s spyglass 1
give @s compass{LodestoneDimension:"minecraft:overworld",LodestoneTracked:1b,LodestonePos:{X:-178,Y:-35,Z:41},display:{Name:'{"text": "noclip position","obfuscated": true,"italic": false,"bold": true}'}} 1
gamemode adventure @s
#tellraw @a ["",{"text":"C:/Administrator/","bold":true},{"text":"levels_simulation","obfuscated":true,"bold":true},{"text":" >> "},{"selector":"@s"},{"text":" has been disconnected from the levels"}]