summon marker ~ ~ ~ {Tags:["42.tag.summon","42.tag.portal.laser.beam","42.tag.portal.tags.has_tick","42.tag.portal.laser.beam.end","42.tag.portal.laser.beam.new"],CustomNameVisible:false,CustomName:"42portal"}
scoreboard players operation @e[tag=42.tag.portal.laser.beam.new] 42.obj.portal.id = @s 42.obj.portal.id
scoreboard players set @e[tag=42.tag.portal.laser.beam.new] 42.obj.portal.time 0
scoreboard players set @e[tag=42.tag.portal.laser.beam.new] 42.obj.portal.lvl -1
rotate @e[tag=42.tag.portal.laser.beam.new,limit=1] ~ ~
tag @e remove 42.tag.portal.laser.beam.new