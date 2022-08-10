scoreboard objectives add hasDied deathCount
scoreboard objectives add counter dummy
scoreboard objectives add deathMessage dummy
scoreboard objectives add common.universal dummy
scoreboard objectives add respawnChance dummy

scoreboard objectives add player.respawn trigger
scoreboard objectives add player.back_to_lobby trigger
scoreboard objectives add player.spectate trigger
scoreboard objectives add player.join_map trigger

scoreboard players set _deathScreenToggle common.universal 0
function common:player/player_death_screen
gamerule keepInventory true
gamerule naturalRegeneration false
gamerule sendCommandFeedback false
