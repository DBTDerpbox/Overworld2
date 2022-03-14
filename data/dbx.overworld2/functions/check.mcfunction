##Teleport on request
#If cooldown is empty
execute as @a[scores={SwitchOverworld=1..}] at @s unless score @s dbx.ow2.cooldown matches 1.. run function dbx.overworld2:switch/check
#Deny if cooldown is active
execute as @a[scores={SwitchOverworld=1..}] if score @s dbx.ow2.cooldown matches 1.. run function dbx.overworld2:deny

##Lower cooldown score
scoreboard players remove @a[scores={dbx.ow2.cooldown=0..}] dbx.ow2.cooldown 1

##Enable trigger
scoreboard players enable @a SwitchOverworld

##Loop
schedule function dbx.overworld2:check 1s