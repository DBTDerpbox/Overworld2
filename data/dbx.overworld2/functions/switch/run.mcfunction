##Switch
#Overworld
execute unless entity @s[tag=dbx.overworld2.switched] if predicate dbx.overworld2:isoverworld in dbx.overworld2:overworld2 run tp ~ 256 ~
execute unless entity @s[tag=dbx.overworld2.switched] if predicate dbx.overworld2:isoverworld run tag @s add dbx.overworld2.switched
#Overworld2
execute unless entity @s[tag=dbx.overworld2.switched] if predicate dbx.overworld2:isoverworld2 in minecraft:overworld run tp ~ 256 ~
execute unless entity @s[tag=dbx.overworld2.switched] if predicate dbx.overworld2:isoverworld2 run tag @s add dbx.overworld2.switched

##TP to ground
#Give effects for a moment
effect give @s invisibility 2 0 true
effect give @s levitation 2 255 true
#Add tag
tag @s add dbx.overworld2.ground
#Run
schedule function dbx.overworld2:switch/ground 2s

##Set cooldown
scoreboard players set @s dbx.ow2.cooldown 300

##Remove tag
tag @s remove dbx.overworld2.switched