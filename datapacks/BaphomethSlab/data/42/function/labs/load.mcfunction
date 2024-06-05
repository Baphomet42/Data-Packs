team add 42.labs_member "Member"
team modify 42.labs_member color dark_gray
team modify 42.labs_member seeFriendlyInvisibles false

team add 42.labs_platinum_vip "Platinum VIP"
team modify 42.labs_platinum_vip color white
team modify 42.labs_platinum_vip seeFriendlyInvisibles false
team modify 42.labs_platinum_vip prefix {"text":"Platinum VIP ~"}

team add 42.labs_owner "Owner"
team modify 42.labs_owner color dark_red
team modify 42.labs_owner seeFriendlyInvisibles false
team modify 42.labs_owner prefix {"text":"Owner "}

scoreboard objectives add 42.labs_setup dummy
scoreboard players set #42.labs_option_autoteam 42.labs_setup 0
execute unless data storage 42:config settings.labs.autoteam run data modify storage 42:config settings.labs.autoteam set value 1b
execute if data storage 42:config settings.labs{autoteam:1b} run scoreboard players set #42.labs_option_autoteam 42.labs_setup 1

execute if score #42.labs_option_autoteam 42.labs_setup matches 1 run schedule function 42:labs/rank/tick 1t replace