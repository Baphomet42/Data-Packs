------------------------------------------------------------------------------------

Separate but compatible datapacks for Minecraft 1.20.4

Multiplayer friendly and designed to work with other packs

**42essentials**

+ `/trigger hat`
    + Puts the held item on your head
+ `/trigger kittycannon`
    + Ka-BOOM!

**Portal** (optional resource pack - see below)

+ *Portal Guns*
    + Every player can have their own set of unlimited pairs of portals at the same time
        + Standard issue blue/orange Portal Guns are the default option
        + Every Portal Gun has a built-in link number and color, and the portals they create are always separate for each player
    + Portals physics carry over momentum
        + Any player or physics object can move through any portal
    + Portals must be placed on a 3x3 surface of a few select blocks
        + Portals can be placed on a mix of quartz, smooth stone, white wool, and a few other light blocks
    + There are 16 different colored Portal Guns for 16 different colored Portals
        + Colors run on a separate system than linking, meaning any set of colors can be paired together
        + Each color gun has a custom texture (this is the only use of resource packs in the entire datapack)
+ *Weighted Cubes*
    + Storage and Companion cubes essential for button-based testing
    + Discouragement Redirection cube to move lasers
    + Click to grab, click again to drop
    + Can be stacked and climbed
+ *Sentry Turret*
    + Shoots players in survival (and villagers)
    + Deactivates when grabbed and dropped on its back, or when hit by a cube
    + Use `Change Skin Tool` to cycle between 10+ custom skins
    + Set turret mode with the `Select Tool`
+ *Aerial Faith Plate*
    + Send anything flying through the air
    + Change launch velocity with the `Select Tool`
+ *Buttons*
    + Heavy Duty Super Buttons detect players and cubes
    + Using the `Cycle Type` tool on a Super Button will change it to only detect cubes
    + Pedestal buttons can be clicked but turn off after a short time
        + The time duration can be configured separately for each button with the `Select Tool`
        + Buttons with -1 duration will stay powered forever after being pressed once
+ *Door*
    + Doors can be powered from any type of button or a Pellet Catcher
    + Link to buttons using the `Link Equipment` tool
    + Manually open with the `Select Tool`
+ *Vital Apparatus Vent*
    + Manually trigger or power with the `Select Tool`
    + Using the `Cycle Type` tool can change the type of cube dropped
    + Link to buttons using the `Link Equipment` tool
    + Droppers drop a single cube when powered from a Pedestal Button
    + Droppers will drop a new cube when the old one is destroyed, but only if powered from a Super Button or Pellet Catcher
+ *Material Emancipation Grill*
    + Clears the portals of any player who passes through it
    + Fizzles cubes, turrets, and other physics objects that pass through it
    + Currently the size is limited to 3x3 (same as doors)
+ *Elevator*
    + Use `Select Tool` to setup elevator movement
    + Elevators can move up or down between a start point and end point
        + Elevators only start moving when a player enters the start point
        + Standing in the end point will not move the elevator back
    + Pair two elevators at different locations to create a seamless teleport effect
        + Select the entrance elevator, go to the exit elevator, and click on the Pair option
        + The entrance elevator will now teleport players to the exit elevator after it's done moving
        + The exit elevator should either be cycled to Exit Only mode or have a movement end point set up
        + When done correctly, a single elevator ride will seamlessly move the player to a new location anywhere in the world
    + Elevators will unload and reset the previous level of whoever uses it
+ *High Energy Pellet*
    + Pellets spawn from High Energy Pellet Launchers
    + Bounce off walls and cubes, can go through portals
    + Have a limited time before exploding (time resets through portals)
    + Used to activate High Energy Pellet Catchers
    + Cycling a High Energy Pellet Launcher will spawn Super Pellets that do not explode over time
    + Cycling a High Energy Pellet Catcher will disable the laser effect
    + Pellets will kill Sentry Turrets and players upon impact
+ *Thermal Discouragement Beam*
    + Creates a deadly laser
    + Can be redirected with Discouragement Redirection Cube
    + Used to activate Thermal Discouragement Receptacle
+ *Radio*
    + Plays the best song on repeat all day every day
+ *Spawners*
    + Spawners can be used to create portals, turrets, and other various equipment during a level
    + Spawners can be activated using the link system (buttons, etc.) or the Trigger Zone system (see below)
    + To create: use the `Select Tool` to convert available equipment into a spawner of that type
        + Portal spawners will create a portal that links to the closest player's portals
            + These are the only spawners that are visible (they appear in the early chambers in both Portal games)
        + Other spawners are invisible, but can be seen in the Select Menu
            + Use `42menu` to unhide all zones and invisible spawners within a short range of the player
        + Turret spawners will keep all attributes of the turret when it was first converted
            + This can be used to spawn turrets with a specific skin, a deactivated turret, and more
            + Changing attributes of a turret spawned by the spawner will not update the spawner
                + To update the spawner, select the new turret and click convert again
        + Super Pellets can be converted to spawners to create the special pellet that appears in the last level of the first portal game
            + After converting the pellet to a spawner, the pellet launcher can be fizzled
        + Radios can be converted to spawners so they reset to the correct position after resetting the level
        + All types of cubes can be converted to spawners, but Vital Apparatus Vents have the same functionality with Trigger Zones
    + Powering a spawner using a button or other power source will summon the correct object (and fizzle the old one)
        + Unpowering a Portal Spawner will remove the portal
        + Unpowering other types of spawners will not fizzle the object
    + Powering or unpowering through a Trigger Zone can be used to summon or fizzle any type of object (not just portals)
        + This will work for all spawners in the link
    + Trigger zones can also select a single spawner to spawn or fizzle its object
    + Combining spawners with zones can be used to create fully resettable levels
+ *Power Wire*
    + Optional feature that can connect buttons to doors (and other powerable equipment)
        + All linking is done with the `Link Tool` and is not affected in any way by power wire
        + The wire just makes it clear when something is being powered
    + Setup using the `Link Tool`
    + Use the `Change Skin Tool` to display an X or check mark, depending on its power
        + Typically, the last wire in the line has this skin, while the rest are default
    + Like all linkable objects, wire does not have to be physically connected to anything
        + For the best effect, place wire on every block between a power source and the thing it powers
+ *Fizzle Tool*
    + Destroy all equipment within a small range
+ *Cycle Tool*
    + Click near equipment to cycle between modes
    + Works with Super Buttons, Vital Apparatus Vents, Pellet Launchers, and Pellet Catchers
+ *Link Tool*
    + Used to connect Buttons and other power sources to Doors, Vital Apparatus Vents, etc.
    + To use: place any amount of equipment that should be linked together, then place the link tool anywhere
        + The link tool has unlimited range (as long as the area is loaded) and won't link any equipment that has already been linked
        + When using the link tool a second time, it will now link the new unlinked equipment
        + Any number of equipment can be linked together in one group, and once linked, they will stay linked until fizzled
    + Power Wire can be used to make the connections visible to players
        + This is optional and will not change any functionality
+ *Level Tool*
    + Sets the load level for all new equipment
    + Equipment with a load level will only work if the level is currently loaded by a player
    + Unloaded equipment will be removed from the world completely
        + The equipment will come back upon the level being loaded
    + By default, all equipment is set to always be loaded, until it's assigned a level using this tool
    + To use: place any amount of equipment that should be in the same load level, then place the level tool anywhere
        + The level tool has unlimited range (as long as the area is loaded) and won't set the level for any equipment that has already been assigned a level
        + This tool behaves similarly to the link tool (see above)
    + Levels are only considered loaded if a player has that level score, so levels can be placed close together without effecting each other or causing excessive lag
    + Automate levels using Zones (see below)
+ *Change Skin Tool*
    + Changes textures without changing functionality
    + Turrets have 10+ skins
    + Storage Cubes have an old Aperture skin
    + Various other equipment types have skin options too
+ *Select Tool*
    + Select a piece of equipment to modify it and access additional settings
        + This tool can access the features of most other tools, and more
    + Each player can only have one piece of equipment selected at once
    + Can be used to unlink equipment without having to fizzle everything and start over
+ `/trigger 42menu`
    + Opens window to give equipment and tools
    + Debug options supply commands to delete large numbers of equipment
+ *Zones*
    + Automate a wide variety of features when a player enters the zone's hitbox
    + Zones have three modes: Load, Trigger, and Death
        + Load Zones update the player's level
            + The zone will reset both the previous and current level, unless the player level already matches the zone level
                + This makes sure the level won't reset just by walking back into the zone
            + Load Zones without a level number will unload the player's level (useful after each stage)
        + Trigger zones will trigger the first time a player enters its hitbox
            + All trigger zones must be set to a load level, as the only way to reset the zone is to reload the level with a Load Zone
            + Trigger Zones can be used to power or unpower equipment, spawn portals, fizzle cubes and pellets, and more
        + Death zones mark out of bounds areas and kill whoever enters it
            + Zones will not kill players in creative or spectator mode
            + The player must be part of the level to be killed by a death zone, so death zones must have a level set
    + Zones can have different sized hitboxes to fit most scenarios
    + After configuring the zone with the `Select Tool`, press Hide so it can't be seen by players
    + Levels should always start with a Load Zone to load the level
        + The level will unload automatically when switching levels
            + Load Zones can be used to unload levels manually
        + Make sure the hitbox is big enough so the player cannot avoid it
    + There can be unlimited Trigger Zones within each level, and they can be placed anywhere
        + These zones only activate if a player in the level walks through its hitbox, so spectators and outsiders cannot interfere
+ **Important Information Specific to Portal Datapack**
    + See generic information at the end of this file
    + To ensure portal guns aren't lost when players die, run `/gamerule keepInventory true`
    + If planning to play in survival mode, it is recommended to disable fall damage
        + Run `/gamerule fallDamage false` to disable all fall damage across the world
        + Custom motion through portals and faith plates automatically stops fall damage, but most portal levels have large drops that players are supposed to be able to survive by jumping
        + Zones can be customized to kill players who enter them, so long death falls can still be made manually
    + The custom chat menus in this pack use trigger commands, which send a message to the player after every click
        + This can be disabled with `/gamerule sendCommandFeedback false`
            + Note that doing this will also turn off command feedback for actual commands used by any player
        + Even without disabling command feedback with the gamerule, this datapack turns off command feedback for about 30 seconds after menus are used, so at least some of the trigger command feedback will be hidden without having to disable all command feedback server-wide
    + Each update to the datapack may change how equipment spawns, functions, and gets killed
        + Before updating the datapack, it is recommended to fizzle all equipment and place it again after updating
            + In almost every update this is not required, but to be safe it is a good practice
    + Worlds running this datapack should be set to Easy, Normal, or Hard Mode (not Peaceful)
        + Running this in Peaceful Mode could cause problems with vital entities unable to be summoned
        + Turning off spawning with `/gamerule doMobSpawning false` is ok
        + `/gamerule mobGriefing false` is recommended (but technically not required)
            + This prevents enderman from moving blocks and breaking equipment
    + Simulation distance should be high enough to prevent nearby equipment from being unloaded
        + Most types of equipment need to be loaded in order for other things like doors and buttons to register them
        + The simulation distance should always be high enough to fit the entire current level from anywhere within the level
        + Playing with a moderate distance like 8-15 chunks is probably good enough for most cases
    + When portals are placed on walls that are only 1 block thick, light will be able to shine through
        + Setting `/gamerule doDaylightCycle false` and `/time set midnight` will stop sunlight from coming into levels this way
        + Otherwise, making walls thicker or surrounding levels in solid boxes will solve this too
+ **Showcase**
    + Note the video upload date for the specific datapack version
        + Features may have changed since the video's release
    + Demo Video 1: https://www.youtube.com/watch?v=7DOdCyrxeMw
+ **Portal Games**
    + This datapack is based on the games Portal and Portal 2 by Valve
    + All rights to the Portal series belong to Valve
    + Purchase on Steam: https://store.steampowered.com/bundle/234/Portal_Bundle/

**XLTT** (optional resource pack - see below)

+ *O.D.M.*
    + Grappling hook + sword + rocket propulsion
    + When held, click to set hook... Then shift to reel in
    + Swapping to another item or clicking a second time will break the old hook
    + Dual weilding O.D.M. Swords allows for better mobility
    + Obtained from 42menu or crafting elytra + trident
+ *Titan*
    + Giant monster, doesn't like players or villagers
    + Spawns from Titan Spawn Egg from 42menu
    + Killed by slicing the back of its neck with an O.D.M. Sword
+ *Cursed Wine*
    + Throw at a villager to infect it... Scream to turn the villager into a titan
    + Obtained from 42menu
    + Villagers stay infected forever and can't come back after being turned
+ *Scream Ability*
    + Turns infected villagers into titans (within its range)
    + Can be used from 42menu
+ `/trigger 42menu`
    + Opens window to give items and use abilities

**Brave New World**

+ *New Dimension*
    + Just a superflat world for testing
    + Custom biome to make it look cooler
+ `/trigger 42menu`
    + Opens window to teleport between dimensions

------------------------------------------------------------------------------------

**Datapack Info**

**Setup**

+ Datapacks are placed into a specific Minecraft world and only function within that world
+ Place any number of datapacks into `.minecraft/saves/<World Name Here>/datapacks`
    + The final path should look something like `.minecraft/saves/New World/datapacks/Portal`
    + If the world is running while the folder is placed, use the `/reload` command
+ To enable custom textures, follow the Resource Pack setup below (optional)

**Important**

+ Like all custom command creations, it is possible that bugs could result in some disasters happening to your world
    + Always backup your world before using the datapack and frequently while using
    + Never run the datapack in a newer or older version of Minecraft than the current datapack version
    + Downloading the newest version of a datapack will upgrade features, but may break how the current features work in your world
        + To be safe, it is recommended to remove all features of the datapack from your world before loading a new version of the datapack or a different Minecraft version
    + Consider all datapacks to be early access proof of concepts
        + Features are prone to change
        + There will probably be bugs
        + They are updated very irregularly
+ All datapacks are by BaphomethLabs
    + Credit and link to this repo if used
        + (https://github.com/Baphomet42/Data-Packs)
    + Feel free to showcase or fork as long as credit is given and a link here is supplied

------------------------------------------------------------------------------------

**Resource Pack Info**

+ Optional but recommended
+ For datapacks: Portal, XLTT
+ Note: No vanilla textures are overridden

**Setup** (do only one of the following)

+ a- Place `resources.zip` into the world save
    + Textures will load automatically each time you join the world
    + Textures will not work outside the world
    + All players will automatically see the textures
+ b- Place `42datapacks` from `resourcepacks` into `.minecraft/resourcepacks` and enable it ingame
    + Textures will load when enabled in Resource Pack Settings
    + Textures will stay loaded outside the specific world
        + No vanilla textures are overridden, so the pack will have no effect without the datapack also loaded
    + Only players who add the resource pack will see the textures

**Portal Resources**

+ Resource pack optional
    + Most features use display entities, no resource pack needed
    + The only use of the resource pack is for the following:
+ Custom item texture for Portal Gun
    + Without resource pack it's a carrot/fungus on a stick

**XLTT Resources**

+ Resource pack optional
    + Most features use display entities, no resource pack needed
    + The only use of the resource pack is for the following:
+ Custom item texture for O.D.M. Sword
    + Without resource pack it's a carrot on a stick

------------------------------------------------------------------------------------

*© 2023 BaphomethLabs*

------------------------------------------------------------------------------------