schedule function common:player/player_death_screen 1s
execute if score _deathScreenToggle common.universal matches 2.. run scoreboard players set _deathScreenToggle common.universal 0
execute if score _deathScreenToggle common.universal matches 1 run title @a[tag=deadPlayer,scores={deathMessage=0}] title {"text": "You are dead"}
execute if score _deathScreenToggle common.universal matches 0 run title @a[tag=deadPlayer,scores={deathMessage=0}] title {"text": "You are dead_"}
execute if score _deathScreenToggle common.universal matches 1 run title @a[tag=deadPlayer,scores={deathMessage=1}] title {"text": "Do you wish to continue?"}
execute if score _deathScreenToggle common.universal matches 0 run title @a[tag=deadPlayer,scores={deathMessage=1}] title {"text": "Do you wish to continue?_"}
scoreboard players add _deathScreenToggle common.universal 1
scoreboard players add @a[tag=deadPlayer,scores={counter=..6,deathMessage=0}] counter 1
execute as @a[tag=deadPlayer,scores={counter=7..,deathMessage=0}] run function common:player/inst/dm_to_2
scoreboard players add @a[tag=deadPlayer,scores={counter=..4,deathMessage=1}] counter 1
execute as @a[tag=deadPlayer,scores={counter=4,deathMessage=1}] run function common:player/player_death_menu