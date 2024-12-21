scoreboard objectives add hat trigger
scoreboard objectives add kittycannon trigger

team add 42.team.gen.no_col
team modify 42.team.gen.no_col collisionRule never

function 42:gen/config/essentials/reload
function 42:essentials/tick5

# println load
#tellraw @a "42:essentials/load"