team add 42.team.labs.member "Member"
team modify 42.team.labs.member color dark_gray
team modify 42.team.labs.member seeFriendlyInvisibles false

team add 42.team.labs.platinum_vip "Platinum VIP"
team modify 42.team.labs.platinum_vip color white
team modify 42.team.labs.platinum_vip seeFriendlyInvisibles false
team modify 42.team.labs.platinum_vip prefix "Platinum VIP ~"

team add 42.team.labs.owner "Owner"
team modify 42.team.labs.owner color dark_red
team modify 42.team.labs.owner seeFriendlyInvisibles false
team modify 42.team.labs.owner prefix "Owner "

scoreboard objectives add 42.obj.labs.setup dummy
scoreboard players set #42.var.labs.option.autoteam 42.obj.labs.setup 0
execute unless data storage 42:config settings.labs.autoteam run data modify storage 42:config settings.labs.autoteam set value 1b
execute if data storage 42:config settings.labs{autoteam:1b} run scoreboard players set #42.var.labs.option.autoteam 42.obj.labs.setup 1

execute if score #42.var.labs.option.autoteam 42.obj.labs.setup matches 1 run schedule function 42:labs/rank/tick 1t replace