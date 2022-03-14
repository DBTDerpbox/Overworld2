##Display message
tellraw @s ["",{"text":"Overworld switching is on cooldown!","bold":true,"color":"dark_red"},"\n",{"text":"You must wait ","color":"red"},{"score":{"name":"@s","objective":"dbx.ow2.cooldown"},"color":"gold"},{"text":" seconds before you can use this.","color":"red"}]

##Reset score
scoreboard players reset @s SwitchOverworld