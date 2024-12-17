scoreboard objectives add 42.obj.datapack dummy
scoreboard objectives add 42menu trigger

scoreboard objectives add 42.obj.portal.vars dummy
scoreboard objectives add 42.obj.portal.id dummy
scoreboard objectives add 42.obj.portal.time dummy
scoreboard objectives add 42.obj.portal.temp dummy
scoreboard objectives add 42.obj.portal.var.c dummy
scoreboard objectives add 42.obj.portal.var.u dummy
scoreboard objectives add 42.obj.portal.var.v dummy
scoreboard objectives add 42.obj.portal.var.w dummy
scoreboard objectives add 42.obj.portal.var.x dummy
scoreboard objectives add 42.obj.portal.var.y dummy
scoreboard objectives add 42.obj.portal.var.z dummy
scoreboard objectives add 42.obj.portal.link dummy
scoreboard objectives add 42.obj.portal.cool dummy
scoreboard objectives add 42.obj.portal.click_gun_1 minecraft.used:minecraft.warped_fungus_on_a_stick
scoreboard objectives add 42.obj.portal.click_gun_2 minecraft.used:minecraft.carrot_on_a_stick
scoreboard objectives add 42.obj.portal.xrot1 dummy
scoreboard objectives add 42.obj.portal.yrot1 dummy
scoreboard objectives add 42.obj.portal.xrot2 dummy
scoreboard objectives add 42.obj.portal.yrot2 dummy
scoreboard objectives add 42.obj.portal.damage dummy
scoreboard objectives add 42.obj.portal.skin dummy
scoreboard objectives add 42.obj.portal.lvl dummy
scoreboard objectives add 42.obj.portal.sel dummy
scoreboard objectives add 42.obj.portal.col dummy
scoreboard objectives add 42.obj.portal.death deathCount

scoreboard players set #42.var.gen.const.neg_1 42.obj.portal.vars -1
scoreboard players set #42.var.gen.const.2 42.obj.portal.vars 2
scoreboard players set #42.var.gen.const.8 42.obj.portal.vars 8
scoreboard players set #42.var.gen.const.32 42.obj.portal.vars 32
scoreboard players set #42.var.gen.const.64 42.obj.portal.vars 64
scoreboard players set #42.var.gen.const.128 42.obj.portal.vars 128
execute unless score #42.var.portal.music_time 42.obj.portal.vars matches 1.. run scoreboard players set #42.var.portal.music_time 42.obj.portal.vars -1

team add 42.team.gen.no_col
team modify 42.team.gen.no_col collisionRule never

function 42:gen/config/portal/reload
function 42:portal/tick
schedule function 42:42menu 1t replace

# println load
#tellraw @a "42:portal/load"