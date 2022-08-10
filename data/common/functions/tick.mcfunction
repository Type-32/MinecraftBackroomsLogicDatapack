scoreboard players add @a hasDied 0
scoreboard players add @a counter 0
scoreboard players add @a respawnChance 0
scoreboard players add @a deathMessage 0

scoreboard players add @a player.respawn 0
scoreboard players add @a player.back_to_lobby 0
scoreboard players add @a player.spectate 0
scoreboard players add @a player.join_map 0

execute as @a[scores={hasDied=1..}] run function common:player/on_player_death
execute as @a[scores={player.respawn=1..}] at @s run function common:player/triggers/respawn
execute as @a[scores={player.back_to_lobby=1..}] at @s run function common:player/triggers/back_to_lobby
execute as @a[scores={player.join_map=1..}] at @s run function common:player/triggers/join_map

data merge entity @e[type=minecraft:falling_block,limit=1] {Time:1}
