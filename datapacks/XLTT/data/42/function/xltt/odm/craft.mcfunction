execute if score #42.var.xltt.config.resourcepack 42.obj.xltt.vars matches 1 run return run give @s poisonous_potato[\
    !food,\
    max_stack_size=1,\
    consumable={consume_seconds:2000000000,has_consume_particles:false,sound:"intentionally_empty",animation:"bow"},\
    use_effects={can_sprint:true,speed_multiplier:1f},\
    item_model="42:xltt/odm_sword",\
    item_name="O.D.M. Sword",\
    lore=[\
        {color:"white",extra:[{color:"white",italic:false,text:" to shoot hook"}],keybind:"key.use"},\
        {color:"white",extra:[{color:"white",italic:false,text:" to grapple"}],keybind:"key.sneak"}],\
    attribute_modifiers=[\
        {amount:7.0d,id:"minecraft:base_attack_damage",operation:"add_value",slot:"mainhand",type:"minecraft:attack_damage"},\
        {amount:-2.4d,id:"minecraft:base_attack_speed",operation:"add_value",slot:"mainhand",type:"minecraft:attack_speed"}],\
    rarity="uncommon",\
    custom_data={42data:{datapack:{},xltt:{odm:{}}}},\
    enchantments={"42:xltt/odm":1},\
    enchantment_glint_override=false,\
    tooltip_display={hidden_components:["minecraft:enchantments"]},\
    tool={can_destroy_blocks_in_creative:0b,damage_per_block:2,rules:[{blocks:"minecraft:cobweb",correct_for_drops:1b,speed:15.0f},{blocks:"#minecraft:sword_instantly_mines",speed:3.40282346E38f},{blocks:"#minecraft:sword_efficient",speed:1.5f}]},\
    weapon={},\
    max_damage=250,\
    damage=0]

give @s poisonous_potato[\
    !food,\
    max_stack_size=1,\
    consumable={consume_seconds:2000000000,has_consume_particles:false,sound:"intentionally_empty",animation:"bow"},\
    use_effects={can_sprint:true,speed_multiplier:1f},\
    item_model="minecraft:stone_sword",\
    item_name="O.D.M. Sword",\
    lore=[\
        {color:"white",extra:[{color:"white",italic:false,text:" to shoot hook"}],keybind:"key.use"},\
        {color:"white",extra:[{color:"white",italic:false,text:" to grapple"}],keybind:"key.sneak"}],\
    attribute_modifiers=[\
        {amount:7.0d,id:"minecraft:base_attack_damage",operation:"add_value",slot:"mainhand",type:"minecraft:attack_damage"},\
        {amount:-2.4d,id:"minecraft:base_attack_speed",operation:"add_value",slot:"mainhand",type:"minecraft:attack_speed"}],\
    rarity="uncommon",\
    custom_data={42data:{datapack:{},xltt:{odm:{}}}},\
    enchantments={"42:xltt/odm":1},\
    enchantment_glint_override=false,\
    tooltip_display={hidden_components:["minecraft:enchantments"]},\
    tool={can_destroy_blocks_in_creative:0b,damage_per_block:2,rules:[{blocks:"minecraft:cobweb",correct_for_drops:1b,speed:15.0f},{blocks:"#minecraft:sword_instantly_mines",speed:3.40282346E38f},{blocks:"#minecraft:sword_efficient",speed:1.5f}]},\
    weapon={},\
    max_damage=250,\
    damage=0]