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

scoreboard objectives add 42.obj.labs.vars dummy

function 42:gen/config/labs/reload

# println load
#tellraw @a "42:labs/load"