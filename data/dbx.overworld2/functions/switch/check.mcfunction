##Find if in a eligible dimension
#If in overworld add tag
execute if predicate dbx.overworld2:isoverworld run tag @s add dbx.overworld2.switcheligible
execute if predicate dbx.overworld2:isoverworld2 run tag @s add dbx.overworld2.switcheligible

##Switch Dimension
execute if entity @s[tag=dbx.overworld2.switcheligible] run function dbx.overworld2:switch/run

##Display warning if can't switch
execute unless entity @s[tag=dbx.overworld2.switcheligible] run tellraw @s {"text":"Please enter the overworld first.","color":"red"}

##Remove tag
tag @s remove dbx.overworld2.switcheligible

##Reset score
scoreboard players reset @s SwitchOverworld