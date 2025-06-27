
----------------------------------------------------------------

# 42dominion update guide

This file is to log important information related to maintaining the datapacks.

----------------------------------------------------------------

# 42datapack ids and watermarks

Each pack that needs an id will get one. The id can be 1 to 99.

Used for 42menu system.

42menu values are 42NNXXX where NN is the id in 2 digits and XXX are the values 000 to 999.

+ All entities summoned by a pack should have the tag `42.tag.summon`
+ All custom items should include `custom_data~{42data:{datapack_item:{}}}`
    + All other `custom_data` should be within the `42data` compound
    + Most `custom_data` should typically be within the `42data.<pack>` compound

The name `gen` is sometimes used for generic features that are relevant to multiple packs, and can use the id `0` and/or `99`, depending on the use.
The `gen` code is not a datapack and does not work on its own.

+ gen - 0/99
+ xltt - 1
+ newworld - none
+ portal - 3
+ essentials - none
+ dbd - 5
+ labs - none
+ src - 7
+ hvac - none

Minecraft namespace should be rarely used (and almost always non-replacing).
In most cases, use the namepace 42 and follow it with the pack code. (Ex: 42:portal).

----------------------------------------------------------------

# Naming conventions

The following prefixes should be used in most cases:

+ `/tag` - `42.tag.`
+ objective - `42.obj.`
+ fake scoreboard player - `#42.var.<pack>.` or `42.var.`
+ team - `42.team.`
+ attribute modifier - `42:<pack>/`
    + for modifiers on items:
        + `slot` must be a single slot (not a slot group)
        + prefix - `42:<pack>/item/`
        + suffix - `/<slot>`
        + exceptions are vanilla `id` values (`minecraft:base_attack_damage`, `minecraft:base_attack_speed`)

In many cases, it is also preferred to name them such that when searching a full name, it will never return matches for a partial name. (So `42.tag.foo` would not be compatible with `42.tag.foobar`). The current packs do not enforce this rule yet, so be careful.

Exceptions to scoreboard objectives names may be trigger commands, which can use a simpler name.

+ NBT conventions
    + SNBT should be specified in the same way it is returned by the game in almost all cases
        + Number types should include their suffix
        + Strings should be quoted
        + Booleans should be written as `true` or `false`
        + This is not a strict requirement, so never count on SNBT being in the proper format
    + The minecraft namespace should usually be specified (but not a requirement)
        + Useful regex to help find potential deviants
            + `id:[a-z0-9_\-./]*,`
            + `id:[a-z0-9_\-./]*\}`
            + `id:"[a-z0-9_\-./]*"`

----------------------------------------------------------------

# Advancements

All datapacks should be documented on the 42dominion advancement page. The following are required for all packs:
+ `data/`
    + `42/`
        + `advancement/`
            + `dominion/`
                + `packs.json` (exact same in every pack)
                + `root.json` (exact same in every pack)
                + `<pack>/`
                    + `pack.json` (with title, description, and icon for pack)

Packs that have unique commands or other noteworthy features should list them as child advancements to the `pack.json` advancement. Commands should use the `command_block` icon. Recipes should use the `crafting_table` icon.

Packs that use common features should document them as follows:
+ `data/`
    + `42/`
        + `advancement/`
            + `dominion/`
                + `gen/`
                    + `menu.json` (only if 42menu is used)
                    + `op.json` (only if 42op is used)
                    + `root.json` (required)

Any advancements that are not used for the 42dominion advancement page should be placed in `advancement/<pack>/`.

----------------------------------------------------------------

# Config system

All datapacks should use the config system to list the pack in `42:config packs.active` and `42:config packs.history` (ie. `{packs:{active:{<pack>:{}},history:{<pack>:{}}}}`). The following standards should be used:

+ The `packs.active` compound must contain the pack ID num, if applicable, like `id:3`
+ The `packs.active` compound must include a `name` (equal to the name used in the datapack folder)
+ Both the `active` and `history` pack must include a string `version`
    + The version should appear as it does in its stable release (ie. `v0.1.0 mc1.20.0`)
    + On the dev branch, the version does not need to be updated until the pack is zipped for the next stable release
+ The history pack does not require any data

All datapacks are responsible for the basic config pack active and history features:

+ `data/`
    + `42/`
        + `function/`
            + `gen/`
                + `config/`
                    + `refresh_pack_list.mcfunction` (exact same in every pack)
                    + `<pack>/`
                        + `log.mcfunction` (add pack to active/history compounds)
                        + `menu.mcfunction` (optional)
                        + `reload.mcfunction` (at least `schedule function 42:gen/config/refresh_pack_list 5t replace`)
            + `<pack>/`
                + `load.mcfunction` (to run `function 42:gen/config/<pack>/reload`)
        + `tags/`
            + `function/`
                + `gen/`
                    + `config_log.json` (to reference `42:gen/config/<pack>/log`)
    + `minecraft/`
        + `tags/`
            + `function/`
                + `load.json` (to reference `42:<pack>/load`)

Packs can also use the config to store settings in `42:config settings.<pack>.<setting name>`.
Settings should always be stored, even if the setting is set to the default value. This should be setup in function `42:gen/config/<pack>/reload`.

Packs that use config settings should provide a tellraw menu for ease of use. This can be part of the `42menu` system or as a separate menu linked from `42menu`.
Config `click_event`'s can all run functions directly without needing to use a trigger system.

----------------------------------------------------------------

# 42menu

The 42menu system allows for pack-specific tellraw menus all accessible with a single `/trigger` command (`/trigger 42menu`).

The following files should be added (or modified to include the specified contents)

+ `data/`
    + `42/`
        + `function/`
            + `42menu.mcfunction` (exact same in every pack)
            + `error_perms.mcfunction` (exact same in every pack, must be paired with 42op advancement setup)
            + `<pack>/`
                + `load.mcfunction` (to run `schedule function 42:42menu 1t replace`)
                + `menu.mcfunction` (to include all menu related logic)
        + `tags/`
            + `function/`
                + `menu.json` (to reference `42:<pack>/menu`)
    + `minecraft/`
        + `tags/`
            + `function/`
                + `load.json` (to reference `42:<pack>/load`)

----------------------------------------------------------------

# Shared files

Some files can be shared in multiple packs and should be kept exactly equal between all packs at all times. Any such file should be documented below.

In most (but not all) cases, these files should be in locations `42:`, `42:dominion/`, or `42:gen/`, and not within `42:<pack>/`

+ `data/`
    + `42/`
        + `advancement/`
            + `dominion/`
                + `packs.json`
                + `root.json`
                + `gen/`
                    + `menu.json`
                    + `op.json`
                    + `root.json`
        + `function/`
            + `42menu.mcfunction`
            + `error_perms.mcfunction`
            + `gen/`
                + `config/`
                    + `refresh_pack_list.mcfunction`
        + `loot_table/`
            + `empty.json`
        + `predicate/`
            + `input_sneak.json`
            + `is_sneaking.json`
            + `is_sprinting.json`
            + `location_fluid.json`
        + `tags/`
            + `block/`
                + `projectile_pass.json`

----------------------------------------------------------------

# Resourcepacks

Datapacks can be designed to require no resourcepack, an optional resourcepack, or a required resourcepack.

+ If the resourcepack is required, no features are required to accommodate users without the resourcepack
+ If the resource pack is optional, features should always attempt to accommodate both cases
    + The config system should have a setting to enable/disable the resourcepack (where possible)

----------------------------------------------------------------

# Portal

## Adding new equipment

+ Generally, the following functions are needed:
    + In the new `42:portal/<equipment>/` folder
        + `craft`
            + Usually add to equipment list in 42menu and `#42:portal/craft_all`
            + Add required space and/or `Modify with:` info
        + `fizzle`
            + Setup in `42:portal/tools/fizzler`
        + `load`
            + Setup in `42:portal/level/loader/load_all`
            + Setup in `42:portal/level/loader/load/<equipment>`
        + `select`
            + Add options to `42:portal/select_menu`
            + Setup in `42:portal/tools/select`
            + Setup in `42:portal/tools/sel_new`
        + `spawn`
            + Sometimes also `spawn2`
        + `tick`
            + Setup in `42:portal/tick_entity`
            + Setup in `42:portal/level/do_tick`
        + `unload`
            + Setup in `42:portal/level/loader/unload_all`
+ Common traits
    + Powerable or power source: see below
    + Cycleable:
        + Update `42:portal/tools/craft_cycle` equipment list
        + Create `42:portal/<equipment>/cycle`
            + Sometimes also `cycle_silent`
        + Setup in `42:portal/tools/cycle`
    + Skins:
        + Update `42:portal/tools/craft_skin` equipment list
        + Create `42:portal/<equipment>/skin`
        + Setup in `42:portal/tools/skin`

## Powerables and power sources

+ General:
    + Update `42:portal/tools/sel/powerable` and `42:portal/tools/craft_link` equipment lists
+ Powerables:
    + Create `42:portal/<equipment>/power` and `42:portal/<equipment>/unpower`
    + Setup in `42:portal/power` and `42:portal/unpower`
+ Power sources:
    + When powered:
        + Set a flag/score to denote power
        + Call `42:portal/power`
    + When unpowered:
        + Remove flag/score that denotes power
        + Call `42:portal/unpower`
    + When fizzled:
        + Unpower
    + Setup in `42:portal/unpower`
        + Detect flag/score from above

----------------------------------------------------------------
