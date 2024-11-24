tag @a remove 42.tag.portal.temp
tag @a[scores={42.obj.portal.id=0..}] add 42.tag.portal.temp
tag @a[scores={42.obj.portal.id=..-1}] add 42.tag.portal.temp
scoreboard players set @a[tag=!42.tag.portal.temp] 42.obj.portal.id 0
tag @a remove 42.tag.portal.temp