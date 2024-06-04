execute store result score 42.portal_rule_cache 42.portal_x run gamerule sendCommandFeedback
execute if score 42.portal_rule_cache 42.portal_x matches 1 run gamerule sendCommandFeedback false
execute if score 42.portal_rule_cache 42.portal_x matches 1 run scoreboard players set 42.portal_rule_cache 42.portal_y 1
execute if score 42.portal_rule_cache 42.portal_y matches 1 run schedule function 42:portal/cmdfeed2 200t replace