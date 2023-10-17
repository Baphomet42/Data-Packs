------------------------------------------------------------------------------------

Separate but compatible datapacks for Minecraft
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
    + Rotate with rotate tool
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
+ *Fizzle Tool*
    + Destroy all equipment within a small range
+ *Rotate Tool*
    + Used to rotate certain equipment
+ *Cycle Tool*
    + Click near equipment to cycle between modes
    + Works with Super Buttons, Vital Apparatus Vents, Pellet Launchers, and Pellet Catchers
+ *Link Tool*
    + Used to connect Buttons and other power sources to Doors, Vital Apparatus Vents, etc.
    + To use: place any amount of equipment that should be linked together, then place the link tool anywhere
        + The link tool has unlimited range (as long as the area is loaded) and won't link any equipment that has already been linked
        + When using the link tool a second time, it will now link the new unlinked equipment
        + Any number of equipment can be linked together in one group, and once linked, they will stay linked until fizzled
+ *Level Tool*
    + Sets the load level for all new equipment
    + Equipment with a load level will only work if the level is currently loaded by a player
    + Unloaded equipment will cause nearly no lag or server resources
    + By default, all equipment is set to always be loaded, until it's assigned a level using this tool
    + To use: place any amount of equipment that should be in the same load level, then place the level tool anywhere
        + The level tool has unlimited range (as long as the area is loaded) and won't set the level for any equipment that has already been assigned a level
        + This tool behaves similarly to the link tool (see above)
    + Levels are only considered loaded if a player has that level score, so levels can be placed close together without effecting each other or causing excessive lag
    + Load levels are highly recommended when there are lots of Turrets
+ *Change Skin Tool*
    + Changes textures without changing functionality
    + Turrets have 10+ skins
    + Storage Cubes have an old Aperture skin
    + Vital Apparatus Vent toggles black effect when looking into the vent
        + Hiding the effect allows custom builds extending the vent
+ *Select Tool*
    + Select a piece of equipment to modify it and access additional settings
        + This tool can access the features of most other tools, and more
    + Each player can only have one piece of equipment selected at once
    + Can be used to unlink equipment without having to fizzle everything and start over
+ `/trigger 42menu`
    + Opens window to give equipment and tools
    + Debug options supply commands to delete large numbers of equipment
+ *Radio*
    + Plays the best song on repeat all day every day

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
    + Throw at a villager to infect it... Scream to turn the villager into a tian
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

Resource packs for datapacks (Optional but recommended)
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

**Portal**

+ Resource pack optional
    + Most features use display entities, no resource pack needed
+ Custom item texture for Portal Gun
    + Without resource pack it's a fungus on a stick

**XLTT**

+ Resource pack optional
    + Most features use display entities, no resource pack needed
+ Custom item texture for O.D.M. Sword
    + Without resource pack it's a carrot on a stick

------------------------------------------------------------------------------------