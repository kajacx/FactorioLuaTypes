---@alias LocalisedString concept Localised strings are a way to support translation of in-game text. It is an array where the first element is the key and the remaining elements are parameters that will be substituted for placeholders in the template designated by the key. The key identifies the string template. For example, `"gui-alert-tooltip.attack"` (for the template `"__1__ objects are being damaged"`; see the file `data/core/locale/en.cfg`). The template can contain placeholders such as `__1__` or `__2__`. These will be replaced by the respective parameter in the LocalisedString. The parameters themselves can be other localised strings, which will be processed recursively in the same fashion. Localised strings can not be recursed deeper than 20 levels and can not have more than 20 parameters. As a special case, when the key is just the empty string, all the parameters will be concatenated (after processing, if any are localised strings). If there is only one parameter, it will be used as is. Furthermore, when an API function expects a localised string, it will also accept a regular string (i.e. not a table) which will not be translated, as well as a number or boolean, which will be converted to their textual representation.

---@alias DisplayResolution table

---@alias LogisticParameters table

---@alias RealOrientation concept The smooth orientation. It is a [float](float) in the range `[0, 1)` that covers a full circle, starting at the top and going clockwise. This means a value of `0` indicates "north", a value of `0.5` indicates "south". For example then, a value of `0.625` would indicate "south-west", and a value of `0.875` would indicate "north-west".

---@alias Position table_or_array Coordinates of a tile in a map. Positions may be specified either as a dictionary with `x`, `y` as keys, or simply as an array with two elements.

---@alias MapPosition table Coordinates of an entity on a map. This uses the same format as [Position](Position), meaning it can be specified either with or without explicit keys.

---@alias ChunkPosition table_or_array Coordinates of a chunk in a [LuaSurface](LuaSurface) where each integer `x`/`y` represents a different chunk. This uses the same format as [Position](Position), meaning it can be specified either with or without explicit keys. A [Position](Position) can be translated to a ChunkPosition by dividing the `x`/`y` values by 32.

---@alias TilePosition table_or_array Coordinates of a tile in a chunk on a [LuaSurface](LuaSurface) where each integer `x`/`y` represents a different tile. This uses the same format as [Position](Position) except it rounds any `x`/`y` down to whole numbers. It can be specified either with or without explicit keys.

---@alias GuiLocation table_or_array Screen coordinates of a GUI element in a [LuaGui](LuaGui). This uses the same format as [Position](Position) except it rounds any `x`/`y` down to whole numbers. It can be specified either with or without explicit keys.

---@alias ChunkPositionAndArea table A [ChunkPosition](ChunkPosition) with an added bounding box for the area of the chunk.

---@alias EquipmentPoint table A table used to define a manual shape for a piece of equipment.

---@alias GuiAnchor table

---@alias TabAndContent table

---@alias OldTileAndPosition table

---@alias Tags concept A dictionary of string to the four basic Lua types: `string`, `boolean`, `number`, `table`.

---@alias SmokeSource table

---@alias Vector concept A vector is a two-element array containing the `x` and `y` components. In some specific cases, the vector is a table with `x` and `y` keys instead, which the documentation will point out.

---@alias BoundingBox table_or_array Two positions, specifying the top-left and bottom-right corner of the box respectively. Like with [Position](Position), the names of the members may be omitted. When read from the game, the third member `orientation` is present if it is non-zero, however it is ignored when provided to the game.

---@alias ScriptArea table An area defined using the map editor.

---@alias ScriptPosition table A position defined using the map editor.

---@alias Color table_or_array Red, green, blue and alpha values, all in range [0, 1] or all in range [0, 255] if any value is > 1. All values here are optional. Color channels default to `0`, the alpha channel defaults to `1`. Similar to [Position](Position), Color allows the short-hand notation of passing an array of exactly 3 or 4 numbers. The game usually expects colors to be in pre-multiplied form (color channels are pre-multiplied by alpha).

---@alias ColorModifier table_or_array Same as [Color](Color), but red, green, blue and alpha values can be any floating point number, without any special handling of the range [1, 255].

---@alias CraftingQueueItem table

---@alias Alert table

---@alias ScriptRenderVertexTarget table One vertex of a ScriptRenderPolygon.

---@alias PathfinderWaypoint table

---@alias CutsceneWaypoint table

---@alias Decorative table

---@alias DecorativeResult table

---@alias ChartTagSpec table

---@alias GameViewSettings struct Parameters that affect the look and control of the game. Updating any of the member attributes here will immediately take effect in the game engine.

---@alias MapViewSettings table What is shown in the map view. If a field is not given, that setting will not be changed.

---@alias PollutionMapSettings table These values are for the time frame of one second (60 ticks).

---@alias EnemyEvolutionMapSettings table These values represent a percentual increase in evolution. This means a value of `0.1` would increase evolution by 10%.

---@alias EnemyExpansionMapSettings table Candidate chunks are given scores to determine which one of them should be expanded into. This score takes into account various settings noted below. The iteration is over a square region centered around the chunk for which the calculation is done, and includes the central chunk as well. Distances are calculated as [Manhattan distance](https://en.wikipedia.org/wiki/Taxicab_geometry). The pseudocode algorithm to determine a chunk's score is as follows: ``` player = 0 for neighbour in all chunks within enemy_building_influence_radius from chunk: player += number of player buildings on neighbour * building_coefficient * neighbouring_chunk_coefficient^distance(chunk, neighbour) base = 0 for neighbour in all chunk within friendly_base_influence_radius from chunk: base += num of enemy bases on neighbour * other_base_coefficient * neighbouring_base_chunk_coefficient^distance(chunk, neighbour) score(chunk) = 1 / (1 + player + base) ```

---@alias UnitGroupMapSettings table

---@alias SteeringMapSetting table

---@alias SteeringMapSettings table

---@alias PathFinderMapSettings table

---@alias MapSettings table Various game-related settings. Updating any of the attributes will immediately take effect in the game engine.

---@alias DifficultySettings table Technology and recipe difficulty settings. Updating any of the attributes will immediately take effect in the game engine.

---@alias MapAndDifficultySettings table All regular [MapSettings](MapSettings) plus an additional table that contains the [DifficultySettings](DifficultySettings).

---@alias MapExchangeStringData table The data that can be extracted from a map exchange string, as a plain table.

---@alias BlueprintItemIcon table

---@alias BlueprintSignalIcon table

---@alias BlueprintEntity table The representation of an entity inside of a blueprint. It has at least these fields, but can contain additional ones depending on the kind of entity.

---@alias Tile table

---@alias Fluid table

---@alias Ingredient table

---@alias Product table

---@alias Loot table

---@alias TechnologyModifier table The effect that is applied when a technology is researched. It is a table that contains at least the field `type`.

---@alias Offer table A single offer on a market entity.

---@alias AutoplaceSpecification table Specifies how probability and richness are calculated when placing something on the map. Can be specified either using `probability_expression` and `richness_expression` or by using all the other fields.

---@alias NoiseExpression table A fragment of a functional program used to generate coherent noise, probably for purposes related to terrain generation. These can only be meaningfully written/modified during the data load phase. More detailed information is found on the [wiki](https://wiki.factorio.com/Types/NoiseExpression).

---@alias AutoplaceSpecificationPeak table

---@alias AutoplaceSpecificationRestriction table

---@alias Resistance table

---@alias MapGenSize concept A floating point number specifying an amount. For backwards compatibility, MapGenSizes can also be specified as one of the following strings, which will be converted to a number (when queried, a number will always be returned): - `"none"` - equivalent to `0` - `"very-low"`, `"very-small"`, `"very-poor"` - equivalent to `1/2` - `"low"`, `"small"`, `"poor"` - equivalent to `1/sqrt(2)` - `"normal"`, `"medium"`, `"regular"` - equivalent to `1` - `"high"`, `"big"`, `"good"` - equivalent to `sqrt(2)` - `"very-high"`, `"very-big"`, `"very-good"` - equivalent to `2`

---@alias AutoplaceSetting table

---@alias AutoplaceSettings table

---@alias AutoplaceControl table

---@alias CliffPlacementSettings table

---@alias MapGenSettings table The 'map type' dropdown in the map generation GUI is actually a selector for elevation generator. The base game sets `property_expression_names.elevation` to `"0_16-elevation"` to reproduce terrain from 0.16 or to `"0_17-island"` for the island preset. If generators are available for other properties, the 'map type' dropdown in the GUI will be renamed to 'elevation' and shown along with selectors for the other selectable properties.

---@alias SignalID table

---@alias Signal table An actual signal transmitted by the network.

---@alias UpgradeFilter table

---@alias InfinityInventoryFilter table A single filter used by an infinity-filters instance.

---@alias InfinityPipeFilter table A single filter used by an infinity-pipe type entity.

---@alias FluidBoxFilter table

---@alias FluidBoxFilterSpec table

---@alias HeatSetting table The settings used by a heat-interface type entity.

---@alias HeatConnection table

---@alias FluidBoxConnection table A definition of a fluidbox connection point.

---@alias ArithmeticCombinatorParameters table

---@alias ConstantCombinatorParameters table

---@alias ComparatorString enum A [string](string) that specifies how the inputs should be compared.

---@alias DeciderCombinatorParameters table

---@alias InserterCircuitConditions table

---@alias CircuitCondition table

---@alias CircuitConditionDefinition table

---@alias CircuitConnectionDefinition table

---@alias WireConnectionDefinition table

---@alias InventoryFilter table

---@alias PlaceAsTileResult table

---@alias Command table Commands can be given to enemies and unit groups.

---@alias PathfinderFlags table

---@alias UnitSpawnDefinition table

---@alias SpawnPointDefinition table

---@alias ItemStackDefinition table

---@alias SimpleItemStack union

---@alias FluidIdentification union

---@alias ForceIdentification union

---@alias TechnologyIdentification union

---@alias SurfaceIdentification union

---@alias PlayerIdentification union

---@alias ItemStackIdentification union

---@alias EntityPrototypeIdentification union

---@alias ItemPrototypeIdentification union

---@alias WaitCondition table

---@alias TrainScheduleRecord table

---@alias TrainSchedule table

---@alias GuiArrowSpecification table Used for specifying where a GUI arrow should point to.

---@alias AmmoType table

---@alias BeamTarget table

---@alias RidingState table

---@alias SpritePath concept It is specified by [string](string). It can be either the name of a [sprite prototype](https://wiki.factorio.com/Prototype/Sprite) defined in the data stage or a path in form "type/name". The supported types are: - `"item"` - for example "item/iron-plate" is the icon sprite of iron plate - `"entity"` - for example "entity/small-biter" is the icon sprite of the small biter - `"technology"` - `"recipe"` - `"item-group"` - `"fluid"` - `"tile"` - `"virtual-signal"` - `"achievement"` - `"equipment"` - `"file"` - path to an image file located inside the current scenario. This file is not preloaded so it will be slower; for frequently used sprites, it is better to define sprite prototype and use it instead. - `"utility"` - sprite defined in the utility-sprites object, these are the pictures used by the game internally for the UI.

---@alias SoundPath concept A sound defined by a [string](string). It can be either the name of a [sound prototype](https://wiki.factorio.com/Prototype/Sound) defined in the data stage or a path in the form `"type/name"`. The latter option can be sorted into three categories. The utility and ambient types each contain general use sound prototypes defined by the game itself. - `"utility"` - Uses the [UtilitySounds](https://wiki.factorio.com/Prototype/UtilitySounds) prototype. Example: `"utility/wire_connect_pole"` - `"ambient"` - Uses [AmbientSound](https://wiki.factorio.com/Prototype/AmbientSound) prototypes. Example: `"ambient/resource-deficiency"` The following types can be combined with any tile name as long as its prototype defines the corresponding sound. - `"tile-walking"` - Uses [Tile::walking_sound](https://wiki.factorio.com/Prototype/Tile#walking_sound). Example: `"tile-walking/concrete"` - `"tile-mined"` - Uses [Tile::mined_sound](https://wiki.factorio.com/Prototype/Tile#mined_sound) - `"tile-build-small"` - Uses [Tile::build_sound](https://wiki.factorio.com/Prototype/Tile#build_sound). Example: `"tile-build-small/concrete"` - `"tile-build-medium"` - Uses [Tile::build_sound](https://wiki.factorio.com/Prototype/Tile#build_sound) - `"tile-build-large"` - Uses [Tile::build_sound](https://wiki.factorio.com/Prototype/Tile#build_sound) The following types can be combined with any entity name as long as its prototype defines the corresponding sound. - `"entity-build"` - Uses [Entity::build_sound](https://wiki.factorio.com/Prototype/Entity#build_sound). Example: `"entity-build/wooden-chest"` - `"entity-mined"` - Uses [Entity::mined_sound](https://wiki.factorio.com/Prototype/Entity#mined_sound) - `"entity-mining"` - Uses [Entity::mining_sound](https://wiki.factorio.com/Prototype/Entity#mining_sound) - `"entity-vehicle_impact"` - Uses [Entity::vehicle_impact_sound](https://wiki.factorio.com/Prototype/Entity#vehicle_impact_sound) - `"entity-rotated"` - Uses [Entity::rotated_sound](https://wiki.factorio.com/Prototype/Entity#rotated_sound) - `"entity-open"` - Uses [Entity::open_sound](https://wiki.factorio.com/Prototype/Entity#open_sound) - `"entity-close"` - Uses [Entity::close_sound](https://wiki.factorio.com/Prototype/Entity#close_sound)

---@alias ModuleEffectValue table

---@alias ModuleEffects table

---@alias EntityPrototypeFlags flag This is a set of flags given as a dictionary[[string](string) &rarr; [boolean](boolean)]. When a flag is set, it is present in the dictionary with the value `true`. Unset flags aren't present in the dictionary at all. So, the boolean value is meaningless and exists just for easy table lookup if a flag is set.

---@alias ItemPrototypeFlags flag This is a set of flags given as dictionary[[string](string) &rarr; [boolean](boolean)]. When a flag is set, it is present in the dictionary with the value `true`. Unset flags aren't present in the dictionary at all. So, the boolean value is meaningless and exists just for easy table lookup if a flag is set.

---@alias CollisionMaskLayer concept A [string](string) specifying a collision mask layer. Possible values for the string are: - `"ground-tile"` - `"water-tile"` - `"resource-layer"` - `"doodad-layer"` - `"floor-layer"` - `"item-layer"` - `"ghost-layer"` - `"object-layer"` - `"player-layer"` - `"train-layer"` - `"rail-layer"` - `"transport-belt-layer"` - `"not-setup"` Additionally the values `"layer-13"` through `"layer-55"`. These layers are currently unused by the game but may change. If a mod is going to use one of the unused layers it's recommended to start at the higher layers because the base game will take from the lower ones.

---@alias CollisionMask concept This is a set of masks given as a dictionary[[CollisionMaskLayer](CollisionMaskLayer) &rarr; [boolean](boolean)]. Only set masks are present in the dictionary and they have the value `true`. Unset flags aren't present at all.

---@alias CollisionMaskWithFlags concept A [CollisionMask](CollisionMask) but also includes any flags this mask has. Flags such as: - `"not-colliding-with-itself"` - `"consider-tile-transitions"` - `"colliding-with-tiles-only"`

---@alias TriggerTargetMask concept This is a set of trigger target masks given as a dictionary[[string](string) &rarr; [boolean](boolean)].

---@alias TriggerEffectItem table

---@alias TriggerDelivery table

---@alias TriggerItem table

---@alias CircularParticleCreationSpecification table

---@alias CircularProjectileCreationSpecification concept An array with the following members: - A [RealOrientation](RealOrientation) - A [Vector](Vector)

---@alias AttackParameterFluid table

---@alias AttackParameters table

---@alias CapsuleAction table

---@alias SelectionModeFlags flag This is a set of flags given as a dictionary[[string](string) &rarr; [boolean](boolean)]. Set flags are present in the dictionary with the value `true`; unset flags aren't present at all.

---@alias LogisticFilter table

---@alias ModSetting table

---@alias AnyBasic concept Any basic type (string, number, boolean) or table.

---@alias Any concept Any basic type (string, number, boolean), table, or LuaObject.

---@alias ProgrammableSpeakerParameters table

---@alias ProgrammableSpeakerAlertParameters table

---@alias ProgrammableSpeakerCircuitParameters table

---@alias ProgrammableSpeakerInstrument table

---@alias Alignment enum A [string](string) that specifies where a gui element should be.

---@alias EventData table Information about the event that has been raised. The table can also contain other fields depending on the type of event. See [the list of Factorio events](events.html) for more information on these.

---@alias NthTickEventData table

---@alias ModChangeData table

---@alias ConfigurationChangedData table

---@alias CustomCommandData table

---@alias SelectedPrototypeData table

---@alias ScriptRenderTarget table

---@alias MouseButtonFlags concept This is a set of flags given as a dictionary[[string](string) &rarr; [boolean](boolean)]. When a flag is set, it is present in the dictionary with the value `true`. Unset flags aren't present in the dictionary at all. To write to this, use an array[[string](string)] of the mouse buttons that should be possible to use with on button. When setting flags, the flag `"left-and-right"` can also be set which will set `"left"` and `"right"` true. Possible flags when reading are: - `"left"` - `"right"` - `"middle"` - `"button-4"` - `"button-5"` - `"button-6"` - `"button-7"` - `"button-8"` - `"button-9"`

---@alias CursorBoxRenderType enum It is specified by [string](string).

---@alias ForceCondition enum It is specified by [string](string).

---@alias RenderLayer concept A value between 0 and 255 inclusive represented by one of the following named [string](string) or string version of the value (for example `"27"` and `"decals"` are both valid). Higher values are rendered on top of lower values. - `"water-tile"`: 15 - `"ground-tile"`: 25 - `"tile-transition"`: 26 - `"decals"`: 27 - `"lower-radius-visualization"`: 29 - `"radius-visualization"`: 30 - `"transport-belt-integration"`: 65 - `"resource"`:66 - `"building-smoke"`:67 - `"decorative"`: 92 - `"ground-patch"`: 93 - `"ground-patch-higher"`: 94 - `"ground-patch-higher2"`: 95 - `"remnants"`: 112 - `"floor"`: 113 - `"transport-belt"`: 114 - `"transport-belt-endings"`: 115 - `"floor-mechanics-under-corpse"`: 120 - `"corpse"`: 121 - `"floor-mechanics"`: 122 - `"item"`: 123 - `"lower-object"`: 124 - `"transport-belt-circuit-connector"`: 126 - `"lower-object-above-shadow"`: 127 - `"object"`: 129 - `"higher-object-under"`: 131 - `"higher-object-above"`: 132 - `"item-in-inserter-hand"`: 134 - `"wires"`: 135 - `"wires-above"`: 136 - `"entity-info-icon"`: 138 - `"entity-info-icon-above"`: 139 - `"explosion"`: 142 - `"projectile"`: 143 - `"smoke"`: 144 - `"air-object"`: 145 - `"air-entity-info-icon"`: 147 - `"light-effect"`: 148 - `"selection-box"`: 187 - `"higher-selection-box"`: 188 - `"collision-selection-box"`: 189 - `"arrow"`: 190 - `"cursor"`: 210

---@alias CliffOrientation enum

---@alias ItemStackLocation table

---@alias VehicleAutomaticTargetingParameters table

---@alias SoundType enum Defines which slider in the game's sound settings affects the volume of this sound. Furthermore, some sound types are mixed differently than others, e.g. zoom level effects are applied.

---@alias ItemPrototypeFilter filter

---@alias ModSettingPrototypeFilter filter

---@alias TechnologyPrototypeFilter filter

---@alias DecorativePrototypeFilter filter

---@alias AchievementPrototypeFilter filter

---@alias FluidPrototypeFilter filter

---@alias EquipmentPrototypeFilter filter

---@alias TilePrototypeFilter filter

---@alias RecipePrototypeFilter filter

---@alias EntityPrototypeFilter filter

---@alias EventFilter concept Used to filter out irrelevant event callbacks in a performant way. Available filters: - [LuaEntityClonedEventFilter](LuaEntityClonedEventFilter) - [LuaEntityDamagedEventFilter](LuaEntityDamagedEventFilter) - [LuaPlayerMinedEntityEventFilter](LuaPlayerMinedEntityEventFilter) - [LuaPreRobotMinedEntityEventFilter](LuaPreRobotMinedEntityEventFilter) - [LuaRobotBuiltEntityEventFilter](LuaRobotBuiltEntityEventFilter) - [LuaPostEntityDiedEventFilter](LuaPostEntityDiedEventFilter) - [LuaEntityDiedEventFilter](LuaEntityDiedEventFilter) - [LuaScriptRaisedReviveEventFilter](LuaScriptRaisedReviveEventFilter) - [LuaPrePlayerMinedEntityEventFilter](LuaPrePlayerMinedEntityEventFilter) - [LuaEntityMarkedForDeconstructionEventFilter](LuaEntityMarkedForDeconstructionEventFilter) - [LuaPreGhostDeconstructedEventFilter](LuaPreGhostDeconstructedEventFilter) - [LuaEntityDeconstructionCancelledEventFilter](LuaEntityDeconstructionCancelledEventFilter) - [LuaEntityMarkedForUpgradeEventFilter](LuaEntityMarkedForUpgradeEventFilter) - [LuaSectorScannedEventFilter](LuaSectorScannedEventFilter) - [LuaRobotMinedEntityEventFilter](LuaRobotMinedEntityEventFilter) - [LuaScriptRaisedDestroyEventFilter](LuaScriptRaisedDestroyEventFilter) - [LuaUpgradeCancelledEventFilter](LuaUpgradeCancelledEventFilter) - [LuaScriptRaisedBuiltEventFilter](LuaScriptRaisedBuiltEventFilter) - [LuaPlayerBuiltEntityEventFilter](LuaPlayerBuiltEntityEventFilter) - [LuaPlayerRepairedEntityEventFilter](LuaPlayerRepairedEntityEventFilter)

---@alias LuaScriptRaisedReviveEventFilter filter

---@alias LuaEntityDiedEventFilter filter

---@alias LuaEntityMarkedForDeconstructionEventFilter filter

---@alias LuaPreGhostDeconstructedEventFilter filter

---@alias LuaScriptRaisedDestroyEventFilter filter

---@alias LuaUpgradeCancelledEventFilter filter

---@alias LuaPlayerRepairedEntityEventFilter filter

---@alias LuaEntityMarkedForUpgradeEventFilter filter

---@alias LuaPostEntityDiedEventFilter filter

---@alias LuaPreRobotMinedEntityEventFilter filter

---@alias LuaEntityClonedEventFilter filter

---@alias LuaScriptRaisedBuiltEventFilter filter

---@alias LuaRobotMinedEntityEventFilter filter

---@alias LuaPrePlayerMinedEntityEventFilter filter

---@alias LuaRobotBuiltEntityEventFilter filter

---@alias LuaEntityDeconstructionCancelledEventFilter filter

---@alias LuaPlayerBuiltEntityEventFilter filter

---@alias LuaPlayerMinedEntityEventFilter filter

---@alias LuaEntityDamagedEventFilter filter

---@alias LuaSectorScannedEventFilter filter

