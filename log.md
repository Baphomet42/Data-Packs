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

All datapacks should be documented on the 42dominion advancement page. Every pack is responsible for adding the `advancement/dominion/root.json` file (which will all be identical and overwrite each other) and the `advancement/dominion/<pack>/pack.json` file (which should have a unique name/description/icon and should be a child to the root advancement).

Packs that have unique commands or other noteworthy features should list them as child advancements to the `pack.json` advancement. Commands should use the `command_block` icon. Recipes should use the `crafting_table` icon.

Common features should be placed in `advancement/dominion/gen/<name>.json` (child advancement of `root.json`), and all packs that use these features are responsible for adding the advancements. The current list of gen advancements are as follows:
+ `menu.json` - For packs that use the `42menu` system
+ `op.json` - For packs that utilize the `42op` tag

Any advancements that are not used for the 42dominion advancement page should be placed in `advancement/<pack>/`.

------------------------------------------------------------------------------------

# config system

All datapacks should use the config system to list the pack in `42:config packs.active` and `42:config packs.history` (ie. `{packs:{active:{<pack>:{}},history:{<pack>:{}}}}`). The following standards should be used:

+ The `packs.active` compound must contain the pack ID num, if applicable, like `id:3`
+ The `packs.active` compound must include a `name` (equal to the name used in the datapack folder)
+ Both the `active` and `history` pack must include a string `version`
    + The version should appear as it does in its stable release (ie. `v0.1.0 mc1.20.0`)
    + On the dev branch, the version does not need to be updated until the pack is zipped for the next stable release
+ The history pack does not require any data

All datapacks are responsible for the basic config pack active and history features:

+ `data/`
    + `42/function/`
        + `gen/config/`
            + `refresh_pack_list.mcfunction` (exact same in every pack)
            + `<pack>/`
                + `log.mcfunction` (add pack to active/history compounds)
                + `menu.mcfunction` (optional)
                + `reload.mcfunction` (at least `schedule function 42:gen/config/refresh_pack_list 5t replace`)
        + `<pack>`
            + `load.mcfunction` (to run `function 42:gen/config/<pack>/reload`)
    + `minecraft/tags/function/`
        + `<pack>/`
            + `load.json` (to reference `42:<pack>/load`)
        + `gen/`
            + `config_log.json` (to reference `42:gen/config/<pack>/log`)

Packs can also use the config to store settings in `42:config settings.<pack>.<setting name>`. Settings should always be stored, even if the setting is set to the default value. This should be handled in function `42:gen/config/<pack>/reload`.

------------------------------------------------------------------------------------