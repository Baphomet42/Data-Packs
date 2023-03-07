scoreboard players set @s 42.titan_time -20
scoreboard players set @s[tag=42.titanChomp] 42.titan_time 0
#
playsound entity.ravager.attack master @a ~ ~ ~ .5 1.5
execute if entity @s[tag=42.titanChomp] run playsound entity.evoker_fangs.attack master @a ~ ~ ~ .5 1.5
#
execute if entity @s[type=!player,tag=42.titanChomp] run particle poof ~ ~1 ~ .1 .2 .1 0 10
execute if entity @s[type=villager,tag=42.titanChomp] run playsound entity.villager.death neutral @a
execute if entity @s[type=iron_golem,tag=42.titanChomp] run playsound entity.iron_golem.death neutral @a
damage @s[type=#42:titan_targets,tag=!42.titanChomp] 12 mob_attack by @e[tag=42.titan_sel,limit=1,sort=nearest]
damage @s[type=#42:titan_targets,tag=42.titanChomp] 200 mob_attack by @e[tag=42.titan_sel,limit=1,sort=nearest]
tp @s[type=!player,tag=42.titanChomp] ~ -512 ~
kill @s[type=!player,tag=42.titanChomp]