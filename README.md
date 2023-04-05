------------------------------------------------------------------------------------

Separate but compatible datapacks for Minecraft
Multiplayer friendly and designed to work with other packs

**42essentials**

+ `/trigger hat`
    + Puts the held item on your head
+ `/trigger kittycannon`
    + Ka-BOOM!

**Portal** (requires resource pack - see below)

+ *Portal Guns*
    + Each player can set 2 linked portals
    + Portals physics carry over momentum
    + Portals must be placed on 3x3 quartz blocks (not smooth quartz) and work in all 6 main directions
+ *Weighted Cubes*
    + Storage and Companion cubes essential for button-based testing
+ *Aerial Faith Plate*
    + Send anything flying through the air
    + Rotate with rotate tool
    + Set velocity from 42menu
        + The prompt will insert a command ending with 42.portal_z and the number 1000.
        + Parameters are `42.portal_x`, `42.portal_y`, and `42.portal_z` for the objective and any integer for the score
        + Each x, y, and z can have their own score, indicating the velocity for that direction
        + x moves east/west, y moves up/down, z moves south/north for score (positive/negative)
        + Typical scores are in range +/- 1000 to 3000, but any number will work
+ *Buttons*
    + Heavy Duty Super Buttons detect players and cubes
    + Using the `Cycle Type` tool on a Super Button will change it to only detect cubes
    + Pedestal buttons can be clicked but turn off after a short time
+ *Door*
    + Doors can be powered from any type of button
    + Link to buttons using the `Link Equipment` tool
+ *Vital Apparatus Vent*
    + Using the `Cycle Type` tool can change the type of cube dropped
    + Link to buttons using the `Link Equipment` tool
    + Droppers drop a single cube when powered from a Pedestal Button
    + Droppers will drop a new cube when the old one is destroyed, but only if powered from a Super Button
+ *Fizzle Tool*
    + Destroy cubes and other equipment within a small range
+ *Rotate Tool*
    + Used to rotate certain equipment
+ *Cycle Tool*
    + Click near equipment to cycle between modes
    + Works with Super Buttons and Vital Apparatus Vents
+ *Link Tool*
    + Used to connect Super Buttons and Pedestal Buttons to Doors and Vital Apparatus Vents
    + To use: place any amount of equipment that should be linked together, then place the link tool anywhere
        + The link tool has unlimited range (as long as the area is loaded) and won't link any equipment that has already been linked
        + When using the link tool a second time, it will now link the new unlinked equipment
        + Any number of equipment can be linked together in one group, and once linked, they will stay linked until fizzled
+ `/trigger 42menu`
    + Opens window to give equipment and tools
    + Config options set a command that can be edited

**XLTT** (requires resource pack - see below)

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

+ *Custom Worldgen*
    + Just a fancy superflat world
    + Custom biome to make it look cooler
+ `/trigger 42menu`
    + Opens window to teleport between dimensions

------------------------------------------------------------------------------------

Resource packs for datapacks
Only needed for Portal and XLTT

Setup by doing only one of the following

+ Place `resources.zip` into the world save
    + Textures will load automatically when joining world
    + This pack combines all datapack textures
    + All players will automatically see the textures
+ Add pack from `resourcepacks` to `.minecraft/resourcepacks` and enable it ingame
    + Textures will load when enabled in Resource Pack Settings
    + Packs can be separately added but everything works together
    + Only players who add the resource packs will see the textures
    + The pack `42datapacks` is the combined pack with all textures

------------------------------------------------------------------------------------