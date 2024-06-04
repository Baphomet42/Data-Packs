tag @a remove 42.portal_temp
tag @a[scores={42.portal_id=0..}] add 42.portal_temp
tag @a[scores={42.portal_id=..-1}] add 42.portal_temp
scoreboard players set @a[tag=!42.portal_temp] 42.portal_id 0
tag @a remove 42.portal_temp