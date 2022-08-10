tellraw @s[scores={respawnChance=1..}] ["",{"text": "> YES","bold": true,"extra": [{"text": "("},{"score": {"name": "@s","objective": "respawnChance"}},{"text": " Chances Left)"}],"clickEvent": {"action": "run_command","value": "/trigger player.respawn"}}]
tellraw @s[scores={respawnChance=..0}] ["",{"text": "> YES","bold": true,"color": "gray","extra": [{"text": "("},{"score": {"name": "@s","objective": "respawnChance"}},{"text": " Chances Left)"}]}]
tellraw @s ["",{"text": "> BACK TO LOBBY","bold": true,"clickEvent": {"action": "run_command","value": "/trigger player.back_to_lobby"}}]
tellraw @s ["",{"text": "> SPECTATE","bold": true,"clickEvent": {"action": "run_command","value": "/trigger player.spectate"}}]
scoreboard players enable @s[scores={respawnChance=1..}] player.respawn
scoreboard players enable @s player.back_to_lobby
scoreboard players enable @s[scores={respawnChance=..0}] player.spectate
