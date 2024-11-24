------------------------------------------------------------------------------------

# 42dominion update guide

This file is to log important information related to maintaining the datapacks.

------------------------------------------------------------------------------------

# 42.obj.datapack ids

Each pack that needs an id will get one. The id can be 1 to 99.

Used for 42menu system, entity score, item watermark.

42menu values are 42NNXXX where NN is the id in 2 digits and XXX are the values 000 to 999.

All entities summoned by a pack should have the score 42.obj.datapack equal to the id of the pack. All datapack items should include `custom_data~{42components:{datapack:<id>}}` using the pack id, and all other `custom_data` should be within the `42components` compound (and most likely within a compound named after the pack code like `custom_data.42components.portal.`).

The name `gen` is sometimes used for generic features that are relevant to multiple packs, and can use the id `0` and/or `99`, depending on the use.

+ gen - 0/99
+ xltt - 1
+ newworld - none
+ portal - 3
+ essentials - 4
+ dbd - 5
+ hvac - none
+ labs - none

Minecraft namespace should be rarely used (and almost always non-replacing).
In most cases, use the namepace 42 and follow it with the pack code. (Ex: 42:portal).

------------------------------------------------------------------------------------

# Naming conventions

The following prefixes should be used in most cases:

+ `/tag` - `42.tag.`
+ objective - `42.obj.`
+ fake scoreboard player - `#42.var.portal.` or `42.var.`
+ team - `42.team.`

In many cases, it is also preferred to name them such that when searching a full name, it will never return matches for a partial name. (So `42.tag.foo` would not be compatible with `42.tag.foobar`). The current packs do not enforce this rule yet, so be careful.

Exceptions to scoreboard objectives names may be trigger commands, which can use a simpler name.

------------------------------------------------------------------------------------

# Advancements

All datapacks should be documented on the 42dominion advancement page. Every pack is responsible for adding the `advancement/dominion/root.json` file (which will all be identical and overwrite each other) and the `advancement/dominion/<pack code>/pack.json` file (which should have a unique name/description/icon and should be a child to the root advancement).

Packs that have unique commands or other noteworthy features should list them as child advancements to the `pack.json` advancement. Commands should use the `command_block` icon. Recipes should use the `crafting_table` icon.

Common features should be placed in `advancement/dominion/gen/<name>.json` (child advancement of `root.json`), and all packs that use these features are responsible for adding the advancements. The current list of gen advancements are as follows:
+ `menu.json` - For packs that use the `42menu` system
+ `op.json` - For packs that utilize the `42op` tag

Any advancements that are not used for the 42dominion advancement page should be placed in `advancement/<pack code>/`.

------------------------------------------------------------------------------------