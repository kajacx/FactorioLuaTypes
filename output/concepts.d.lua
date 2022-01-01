---@alias LocalisedString any Localised strings are a way to support translation of in-game text. It is an array where the first element is the key and the remaining elements are parameters that will be substituted for placeholders in the template designated by the key. The key identifies the string template. For example, `"gui-alert-tooltip.attack"` (for the template `"__1__ objects are being damaged"`; see the file `data/core/locale/en.cfg`). The template can contain placeholders such as `__1__` or `__2__`. These will be replaced by the respective parameter in the LocalisedString. The parameters themselves can be other localised strings, which will be processed recursively in the same fashion. Localised strings can not be recursed deeper than 20 levels and can not have more than 20 parameters. As a special case, when the key is just the empty string, all the parameters will be concatenated (after processing, if any are localised strings). If there is only one parameter, it will be used as is. Furthermore, when an API function expects a localised string, it will also accept a regular string (i.e. not a table) which will not be translated, as well as a number or boolean, which will be converted to their textual representation.



---@alias RealOrientation any The smooth orientation. It is a [float](float) in the range `[0, 1)` that covers a full circle, starting at the top and going clockwise. This means a value of `0` indicates "north", a value of `0.5` indicates "south". For example then, a value of `0.625` would indicate "south-west", and a value of `0.875` would indicate "north-west".











---@alias Tags any A dictionary of string to the four basic Lua types: `string`, `boolean`, `number`, `table`.


---@alias Vector any A vector is a two-element array containing the `x` and `y` components. In some specific cases, the vector is a table with `x` and `y` keys instead, which the documentation will point out.










































---@alias MapGenSize any A floating point number specifying an amount. For backwards compatibility, MapGenSizes can also be specified as one of the following strings, which will be converted to a number (when queried, a number will always be returned): - `"none"` - equivalent to `0` - `"very-low"`, `"very-small"`, `"very-poor"` - equivalent to `1/2` - `"low"`, `"small"`, `"poor"` - equivalent to `1/sqrt(2)` - `"normal"`, `"medium"`, `"regular"` - equivalent to `1` - `"high"`, `"big"`, `"good"` - equivalent to `sqrt(2)` - `"very-high"`, `"very-big"`, `"very-good"` - equivalent to `2`


















---`=` "equal to"
---
---`>` "greater than"
---
---`<` "lesser than"
---
---`≥` "greater than or equal to"
---
---`>=` "greater than or equal to"
---
---`≤` "lesser than or equal to"
---
---`<=` "lesser than or equal to"
---
---`≠` "not equal to"
---
---`!=` "not equal to"
---@alias ComparatorString string A [string](string) that specifies how the inputs should be compared.






























---@alias SpritePath any It is specified by [string](string). It can be either the name of a [sprite prototype](https://wiki.factorio.com/Prototype/Sprite) defined in the data stage or a path in form "type/name". The supported types are: - `"item"` - for example "item/iron-plate" is the icon sprite of iron plate - `"entity"` - for example "entity/small-biter" is the icon sprite of the small biter - `"technology"` - `"recipe"` - `"item-group"` - `"fluid"` - `"tile"` - `"virtual-signal"` - `"achievement"` - `"equipment"` - `"file"` - path to an image file located inside the current scenario. This file is not preloaded so it will be slower; for frequently used sprites, it is better to define sprite prototype and use it instead. - `"utility"` - sprite defined in the utility-sprites object, these are the pictures used by the game internally for the UI.

---@alias SoundPath any A sound defined by a [string](string). It can be either the name of a [sound prototype](https://wiki.factorio.com/Prototype/Sound) defined in the data stage or a path in the form `"type/name"`. The latter option can be sorted into three categories. The utility and ambient types each contain general use sound prototypes defined by the game itself. - `"utility"` - Uses the [UtilitySounds](https://wiki.factorio.com/Prototype/UtilitySounds) prototype. Example: `"utility/wire_connect_pole"` - `"ambient"` - Uses [AmbientSound](https://wiki.factorio.com/Prototype/AmbientSound) prototypes. Example: `"ambient/resource-deficiency"` The following types can be combined with any tile name as long as its prototype defines the corresponding sound. - `"tile-walking"` - Uses [Tile::walking_sound](https://wiki.factorio.com/Prototype/Tile#walking_sound). Example: `"tile-walking/concrete"` - `"tile-mined"` - Uses [Tile::mined_sound](https://wiki.factorio.com/Prototype/Tile#mined_sound) - `"tile-build-small"` - Uses [Tile::build_sound](https://wiki.factorio.com/Prototype/Tile#build_sound). Example: `"tile-build-small/concrete"` - `"tile-build-medium"` - Uses [Tile::build_sound](https://wiki.factorio.com/Prototype/Tile#build_sound) - `"tile-build-large"` - Uses [Tile::build_sound](https://wiki.factorio.com/Prototype/Tile#build_sound) The following types can be combined with any entity name as long as its prototype defines the corresponding sound. - `"entity-build"` - Uses [Entity::build_sound](https://wiki.factorio.com/Prototype/Entity#build_sound). Example: `"entity-build/wooden-chest"` - `"entity-mined"` - Uses [Entity::mined_sound](https://wiki.factorio.com/Prototype/Entity#mined_sound) - `"entity-mining"` - Uses [Entity::mining_sound](https://wiki.factorio.com/Prototype/Entity#mining_sound) - `"entity-vehicle_impact"` - Uses [Entity::vehicle_impact_sound](https://wiki.factorio.com/Prototype/Entity#vehicle_impact_sound) - `"entity-rotated"` - Uses [Entity::rotated_sound](https://wiki.factorio.com/Prototype/Entity#rotated_sound) - `"entity-open"` - Uses [Entity::open_sound](https://wiki.factorio.com/Prototype/Entity#open_sound) - `"entity-close"` - Uses [Entity::close_sound](https://wiki.factorio.com/Prototype/Entity#close_sound)





---@alias CollisionMaskLayer any A [string](string) specifying a collision mask layer. Possible values for the string are: - `"ground-tile"` - `"water-tile"` - `"resource-layer"` - `"doodad-layer"` - `"floor-layer"` - `"item-layer"` - `"ghost-layer"` - `"object-layer"` - `"player-layer"` - `"train-layer"` - `"rail-layer"` - `"transport-belt-layer"` - `"not-setup"` Additionally the values `"layer-13"` through `"layer-55"`. These layers are currently unused by the game but may change. If a mod is going to use one of the unused layers it's recommended to start at the higher layers because the base game will take from the lower ones.

---@alias CollisionMask any This is a set of masks given as a dictionary[[CollisionMaskLayer](CollisionMaskLayer) &rarr; [boolean](boolean)]. Only set masks are present in the dictionary and they have the value `true`. Unset flags aren't present at all.

---@alias CollisionMaskWithFlags any A [CollisionMask](CollisionMask) but also includes any flags this mask has. Flags such as: - `"not-colliding-with-itself"` - `"consider-tile-transitions"` - `"colliding-with-tiles-only"`

---@alias TriggerTargetMask any This is a set of trigger target masks given as a dictionary[[string](string) &rarr; [boolean](boolean)].





---@alias CircularProjectileCreationSpecification any An array with the following members: - A [RealOrientation](RealOrientation) - A [Vector](Vector)







---@alias AnyBasic any Any basic type (string, number, boolean) or table.

---@alias Any any Any basic type (string, number, boolean), table, or LuaObject.





---`top-left`
---
---`middle-left`
---
---`left` The same as `"middle-left"`
---
---`bottom-left`
---
---`top-center`
---
---`middle-center`
---
---`center` The same as `"middle-center"`
---
---`bottom-center`
---
---`top-right`
---
---`right` The same as `"middle-right"`
---
---`bottom-right`
---@alias Alignment string A [string](string) that specifies where a gui element should be.








---@alias MouseButtonFlags any This is a set of flags given as a dictionary[[string](string) &rarr; [boolean](boolean)]. When a flag is set, it is present in the dictionary with the value `true`. Unset flags aren't present in the dictionary at all. To write to this, use an array[[string](string)] of the mouse buttons that should be possible to use with on button. When setting flags, the flag `"left-and-right"` can also be set which will set `"left"` and `"right"` true. Possible flags when reading are: - `"left"` - `"right"` - `"middle"` - `"button-4"` - `"button-5"` - `"button-6"` - `"button-7"` - `"button-8"` - `"button-9"`

---`entity` Yellow box.
---
---`not-allowed` Red box.
---
---`electricity` Light blue box.
---
---`pair` Light blue box.
---
---`copy` Green box.
---
---`train-visualization` White box.
---
---`logistics` Light blue box.
---
---`blueprint-snap-rectangle` Green box.
---@alias CursorBoxRenderType string It is specified by [string](string).

---`all` All forces pass.
---
---`enemy` Forces which will attack pass.
---
---`ally` Forces which won't attack pass.
---
---`friend` Forces which are friends pass.
---
---`not-friend` Forces which are not friends pass.
---
---`same` The same force pass.
---
---`not-same` The non-same forces pass.
---@alias ForceCondition string It is specified by [string](string).

---@alias RenderLayer any A value between 0 and 255 inclusive represented by one of the following named [string](string) or string version of the value (for example `"27"` and `"decals"` are both valid). Higher values are rendered on top of lower values. - `"water-tile"`: 15 - `"ground-tile"`: 25 - `"tile-transition"`: 26 - `"decals"`: 27 - `"lower-radius-visualization"`: 29 - `"radius-visualization"`: 30 - `"transport-belt-integration"`: 65 - `"resource"`:66 - `"building-smoke"`:67 - `"decorative"`: 92 - `"ground-patch"`: 93 - `"ground-patch-higher"`: 94 - `"ground-patch-higher2"`: 95 - `"remnants"`: 112 - `"floor"`: 113 - `"transport-belt"`: 114 - `"transport-belt-endings"`: 115 - `"floor-mechanics-under-corpse"`: 120 - `"corpse"`: 121 - `"floor-mechanics"`: 122 - `"item"`: 123 - `"lower-object"`: 124 - `"transport-belt-circuit-connector"`: 126 - `"lower-object-above-shadow"`: 127 - `"object"`: 129 - `"higher-object-under"`: 131 - `"higher-object-above"`: 132 - `"item-in-inserter-hand"`: 134 - `"wires"`: 135 - `"wires-above"`: 136 - `"entity-info-icon"`: 138 - `"entity-info-icon-above"`: 139 - `"explosion"`: 142 - `"projectile"`: 143 - `"smoke"`: 144 - `"air-object"`: 145 - `"air-entity-info-icon"`: 147 - `"light-effect"`: 148 - `"selection-box"`: 187 - `"higher-selection-box"`: 188 - `"collision-selection-box"`: 189 - `"arrow"`: 190 - `"cursor"`: 210

---`west-to-east`
---
---`north-to-south`
---
---`east-to-west`
---
---`south-to-north`
---
---`west-to-north`
---
---`north-to-east`
---
---`east-to-south`
---
---`south-to-west`
---
---`west-to-south`
---
---`north-to-west`
---
---`east-to-north`
---
---`south-to-east`
---
---`west-to-none`
---
---`none-to-east`
---
---`east-to-none`
---
---`none-to-west`
---
---`north-to-none`
---
---`none-to-south`
---
---`south-to-none`
---
---`none-to-north`
---@alias CliffOrientation string



---`game-effect`
---
---`gui-effect`
---
---`ambient`
---
---`environment`
---
---`walking`
---
---`alert`
---
---`wind`
---@alias SoundType string Defines which slider in the game's sound settings affects the volume of this sound. Furthermore, some sound types are mixed differently than others, e.g. zoom level effects are applied.

---@alias ItemPrototypeFilter place-result | burnt-result | place-as-tile | placed-as-equipment-result | name | type | flag | subgroup | fuel-category | stack-size | default-request-amount | wire-count | fuel-value | fuel-acceleration-multiplier | fuel-top-speed-multiplier | fuel-emissions-multiplier

---@class place-result
---@field elem_filters EntityPrototypeFilter[] Filters for the place result.

---@class burnt-result
---@field elem_filters ItemPrototypeFilter[] Filters for the burnt result.

---@class place-as-tile
---@field elem_filters TilePrototypeFilter[] Filters for the placed tile.

---@class placed-as-equipment-result
---@field elem_filters EquipmentPrototypeFilter[] Filters for the placed equipment.

---@class name For use within nested filters such as the `has-product-item` filter of array[[RecipePrototypeFilter](RecipePrototypeFilter)]. To get a specific prototype by name, see [LuaGameScript::item_prototypes](LuaGameScript::item_prototypes).
---@field name string | string[] The prototype name, or list of acceptable names.

---@class type Usage example: ``` game.get_filtered_item_prototypes({{filter = "type", type = "armor"}}) ```
---@field type string The prototype type

---@class flag
---@field flag string One of the values in [ItemPrototypeFlags](ItemPrototypeFlags).

---@class subgroup
---@field subgroup string A [LuaGroup](LuaGroup) (subgroup) name

---@class fuel-category
---@field fuel-category string A [LuaFuelCategoryPrototype](LuaFuelCategoryPrototype) name

---@class stack-size Usage example: ``` game.get_filtered_item_prototypes({{filter = "stack-size", comparison = ">", value = 20}, {filter = "stack-size", comparison = "<", value = 100, mode = "and"}}) ```
---@field comparison ComparatorString
---@field value uint The value to compare against.

---@class default-request-amount
---@field comparison ComparatorString
---@field value uint The value to compare against.

---@class wire-count
---@field comparison ComparatorString
---@field value uint The value to compare against.

---@class fuel-value
---@field comparison ComparatorString
---@field value double The value to compare against.

---@class fuel-acceleration-multiplier
---@field comparison ComparatorString
---@field value double The value to compare against.

---@class fuel-top-speed-multiplier
---@field comparison ComparatorString
---@field value double The value to compare against.

---@class fuel-emissions-multiplier
---@field comparison ComparatorString
---@field value double The value to compare against.


---@alias ModSettingPrototypeFilter type | mod | setting-type

---@class type
---@field type string The prototype type

---@class mod
---@field mod string The mod name

---@class setting-type
---@field type string The setting scope type (startup, runtime-global, or runtime-per-user)


---@alias TechnologyPrototypeFilter research-unit-ingredient | level | max-level | time

---@class research-unit-ingredient
---@field ingredient string The research ingredient to check.

---@class level
---@field comparison ComparatorString
---@field value uint The value to compare against.

---@class max-level
---@field comparison ComparatorString
---@field value uint The value to compare against.

---@class time
---@field comparison ComparatorString
---@field value uint The value to compare against.


---@alias DecorativePrototypeFilter collision-mask

---@class collision-mask
---@field mask CollisionMask | CollisionMaskWithFlags
---@field mask_mode string How to filter: `"collides"` or `"layers-equals"`


---@alias AchievementPrototypeFilter type

---@class type
---@field type string The prototype type


---@alias FluidPrototypeFilter name | subgroup | default-temperature | max-temperature | heat-capacity | fuel-value | emissions-multiplier | gas-temperature

---@class name For use within nested filters such as the `has-product-fluid` filter of array[[RecipePrototypeFilter](RecipePrototypeFilter)]. To get a specific prototype by name, see [LuaGameScript::fluid_prototypes](LuaGameScript::fluid_prototypes).
---@field name string | string[] The prototype name, or list of acceptable names.

---@class subgroup
---@field subgroup string A [LuaGroup](LuaGroup) (subgroup) name

---@class default-temperature
---@field comparison ComparatorString
---@field value double The value to compare against.

---@class max-temperature
---@field comparison ComparatorString
---@field value double The value to compare against.

---@class heat-capacity
---@field comparison ComparatorString
---@field value double The value to compare against.

---@class fuel-value
---@field comparison ComparatorString
---@field value double The value to compare against.

---@class emissions-multiplier
---@field comparison ComparatorString
---@field value double The value to compare against.

---@class gas-temperature
---@field comparison ComparatorString
---@field value double The value to compare against.


---@alias EquipmentPrototypeFilter type

---@class type
---@field type string The prototype type


---@alias TilePrototypeFilter collision-mask | walking-speed-modifier | vehicle-friction-modifier | decorative-removal-probability | emissions

---@class collision-mask
---@field mask CollisionMask | CollisionMaskWithFlags
---@field mask_mode string How to filter: `"collides"` or `"layers-equals"`

---@class walking-speed-modifier
---@field comparison ComparatorString
---@field value double The value to compare against.

---@class vehicle-friction-modifier
---@field comparison ComparatorString
---@field value double The value to compare against.

---@class decorative-removal-probability
---@field comparison ComparatorString
---@field value float The value to compare against.

---@class emissions
---@field comparison ComparatorString
---@field value double The value to compare against.


---@alias RecipePrototypeFilter has-ingredient-item | has-ingredient-fluid | has-product-item | has-product-fluid | subgroup | category | energy | emissions-multiplier | request-paste-multiplier | overload-multiplier

---@class has-ingredient-item
---@field elem_filters ItemPrototypeFilter[] Matches if at least 1 ingredient is an item that matches these filters.

---@class has-ingredient-fluid Usage example: ``` -- selects recipes that consume sulfuric acid {{filter = "has-ingredient-fluid", elem_filters = {{filter = "name", name = "sulfuric-acid"}}}} ```
---@field elem_filters FluidPrototypeFilter[] Matches if at least 1 ingredient is a fluid that matches these filters.

---@class has-product-item Usage example: ``` -- selects recipes that produce an item {{filter = "has-product-item"}} -- selects recipes that produce iron plates {{filter = "has-product-item", elem_filters = {{filter = "name", name = "iron-plate"}}}} -- selects recipes that produce items that place furnaces {{filter = "has-product-item", elem_filters = {{filter = "place-result", elem_filters = {{filter = "type", type = "furnace"}}}}}} ```
---@field elem_filters ItemPrototypeFilter[] Matches if at least 1 product is an item that matches these filters.

---@class has-product-fluid
---@field elem_filters FluidPrototypeFilter[] Matches if at least 1 product is a fluid that matches these filters.

---@class subgroup
---@field subgroup string A [LuaGroup](LuaGroup) (subgroup) name

---@class category
---@field category string A [LuaRecipeCategoryPrototype](LuaRecipeCategoryPrototype) name

---@class energy
---@field comparison ComparatorString
---@field value double The value to compare against.

---@class emissions-multiplier
---@field comparison ComparatorString
---@field value double The value to compare against.

---@class request-paste-multiplier
---@field comparison ComparatorString
---@field value uint The value to compare against.

---@class overload-multiplier
---@field comparison ComparatorString
---@field value uint The value to compare against.


---@alias EntityPrototypeFilter name | type | collision-mask | flag | build-base-evolution-requirement | selection-priority | emissions | crafting-category

---@class name For use within nested filters such as the `place-result` filter of array[[ItemPrototypeFilter](ItemPrototypeFilter)]. To get a specific prototype by name, see [LuaGameScript::entity_prototypes](LuaGameScript::entity_prototypes).
---@field name string | string[] The prototype name, or list of acceptable names.

---@class type Usage example: ``` game.get_filtered_entity_prototypes({{filter = "type", type = "unit"}}) ```
---@field type string The prototype type

---@class collision-mask Usage example: ``` game.get_filtered_entity_prototypes({{filter = "collision-mask", mask = "player-layer", mask_mode = "collides"}}) ```
---@field mask CollisionMask | CollisionMaskWithFlags
---@field mask_mode string How to filter: `"collides"` or `"layers-equals"`

---@class flag Usage example: ``` game.get_filtered_entity_prototypes({{filter = "flag", flag = "placeable-player"}, {filter = "flag", flag = "placeable-enemy", mode = "and"}}) ```
---@field flag string One of the values in [EntityPrototypeFlags](EntityPrototypeFlags).

---@class build-base-evolution-requirement
---@field comparison ComparatorString
---@field value double The value to compare against.

---@class selection-priority
---@field comparison ComparatorString
---@field value uint8 The value to compare against.

---@class emissions
---@field comparison ComparatorString
---@field value double The value to compare against.

---@class crafting-category
---@field crafting_category string Matches if the prototype is for a crafting machine with this crafting category.


---@alias EventFilter any Used to filter out irrelevant event callbacks in a performant way. Available filters: - [LuaEntityClonedEventFilter](LuaEntityClonedEventFilter) - [LuaEntityDamagedEventFilter](LuaEntityDamagedEventFilter) - [LuaPlayerMinedEntityEventFilter](LuaPlayerMinedEntityEventFilter) - [LuaPreRobotMinedEntityEventFilter](LuaPreRobotMinedEntityEventFilter) - [LuaRobotBuiltEntityEventFilter](LuaRobotBuiltEntityEventFilter) - [LuaPostEntityDiedEventFilter](LuaPostEntityDiedEventFilter) - [LuaEntityDiedEventFilter](LuaEntityDiedEventFilter) - [LuaScriptRaisedReviveEventFilter](LuaScriptRaisedReviveEventFilter) - [LuaPrePlayerMinedEntityEventFilter](LuaPrePlayerMinedEntityEventFilter) - [LuaEntityMarkedForDeconstructionEventFilter](LuaEntityMarkedForDeconstructionEventFilter) - [LuaPreGhostDeconstructedEventFilter](LuaPreGhostDeconstructedEventFilter) - [LuaEntityDeconstructionCancelledEventFilter](LuaEntityDeconstructionCancelledEventFilter) - [LuaEntityMarkedForUpgradeEventFilter](LuaEntityMarkedForUpgradeEventFilter) - [LuaSectorScannedEventFilter](LuaSectorScannedEventFilter) - [LuaRobotMinedEntityEventFilter](LuaRobotMinedEntityEventFilter) - [LuaScriptRaisedDestroyEventFilter](LuaScriptRaisedDestroyEventFilter) - [LuaUpgradeCancelledEventFilter](LuaUpgradeCancelledEventFilter) - [LuaScriptRaisedBuiltEventFilter](LuaScriptRaisedBuiltEventFilter) - [LuaPlayerBuiltEntityEventFilter](LuaPlayerBuiltEntityEventFilter) - [LuaPlayerRepairedEntityEventFilter](LuaPlayerRepairedEntityEventFilter)

---@alias LuaScriptRaisedReviveEventFilter type | name | ghost_type | ghost_name

---@class type
---@field type string The prototype type

---@class name
---@field name string The prototype name

---@class ghost_type
---@field type string The ghost prototype type

---@class ghost_name
---@field name string The ghost prototype name


---@alias LuaEntityDiedEventFilter type | name | ghost_type | ghost_name

---@class type
---@field type string The prototype type

---@class name
---@field name string The prototype name

---@class ghost_type
---@field type string The ghost prototype type

---@class ghost_name
---@field name string The ghost prototype name


---@alias LuaEntityMarkedForDeconstructionEventFilter type | name | ghost_type | ghost_name

---@class type
---@field type string The prototype type

---@class name
---@field name string The prototype name

---@class ghost_type
---@field type string The ghost prototype type

---@class ghost_name
---@field name string The ghost prototype name


---@alias LuaPreGhostDeconstructedEventFilter type | name | ghost_type | ghost_name

---@class type
---@field type string The prototype type

---@class name
---@field name string The prototype name

---@class ghost_type
---@field type string The ghost prototype type

---@class ghost_name
---@field name string The ghost prototype name


---@alias LuaScriptRaisedDestroyEventFilter type | name | ghost_type | ghost_name

---@class type
---@field type string The prototype type

---@class name
---@field name string The prototype name

---@class ghost_type
---@field type string The ghost prototype type

---@class ghost_name
---@field name string The ghost prototype name


---@alias LuaUpgradeCancelledEventFilter type | name | ghost_type | ghost_name

---@class type
---@field type string The prototype type

---@class name
---@field name string The prototype name

---@class ghost_type
---@field type string The ghost prototype type

---@class ghost_name
---@field name string The ghost prototype name


---@alias LuaPlayerRepairedEntityEventFilter type | name | ghost_type | ghost_name

---@class type
---@field type string The prototype type

---@class name
---@field name string The prototype name

---@class ghost_type
---@field type string The ghost prototype type

---@class ghost_name
---@field name string The ghost prototype name


---@alias LuaEntityMarkedForUpgradeEventFilter type | name | ghost_type | ghost_name

---@class type
---@field type string The prototype type

---@class name
---@field name string The prototype name

---@class ghost_type
---@field type string The ghost prototype type

---@class ghost_name
---@field name string The ghost prototype name


---@alias LuaPostEntityDiedEventFilter type

---@class type
---@field type string The prototype type


---@alias LuaPreRobotMinedEntityEventFilter type | name | ghost_type | ghost_name

---@class type
---@field type string The prototype type

---@class name
---@field name string The prototype name

---@class ghost_type
---@field type string The ghost prototype type

---@class ghost_name
---@field name string The ghost prototype name


---@alias LuaEntityClonedEventFilter type | name | ghost_type | ghost_name

---@class type
---@field type string The prototype type

---@class name
---@field name string The prototype name

---@class ghost_type
---@field type string The ghost prototype type

---@class ghost_name
---@field name string The ghost prototype name


---@alias LuaScriptRaisedBuiltEventFilter type | name | ghost_type | ghost_name

---@class type
---@field type string The prototype type

---@class name
---@field name string The prototype name

---@class ghost_type
---@field type string The ghost prototype type

---@class ghost_name
---@field name string The ghost prototype name


---@alias LuaRobotMinedEntityEventFilter type | name | ghost_type | ghost_name

---@class type
---@field type string The prototype type

---@class name
---@field name string The prototype name

---@class ghost_type
---@field type string The ghost prototype type

---@class ghost_name
---@field name string The ghost prototype name


---@alias LuaPrePlayerMinedEntityEventFilter type | name | ghost_type | ghost_name

---@class type
---@field type string The prototype type

---@class name
---@field name string The prototype name

---@class ghost_type
---@field type string The ghost prototype type

---@class ghost_name
---@field name string The ghost prototype name


---@alias LuaRobotBuiltEntityEventFilter type | name | ghost_type | ghost_name | force

---@class type
---@field type string The prototype type

---@class name
---@field name string The prototype name

---@class ghost_type
---@field type string The ghost prototype type

---@class ghost_name
---@field name string The ghost prototype name

---@class force
---@field force string The entity force


---@alias LuaEntityDeconstructionCancelledEventFilter type | name | ghost_type | ghost_name

---@class type
---@field type string The prototype type

---@class name
---@field name string The prototype name

---@class ghost_type
---@field type string The ghost prototype type

---@class ghost_name
---@field name string The ghost prototype name


---@alias LuaPlayerBuiltEntityEventFilter type | name | ghost_type | ghost_name | force

---@class type
---@field type string The prototype type

---@class name
---@field name string The prototype name

---@class ghost_type
---@field type string The ghost prototype type

---@class ghost_name
---@field name string The ghost prototype name

---@class force
---@field force string The entity force


---@alias LuaPlayerMinedEntityEventFilter type | name | ghost_type | ghost_name

---@class type
---@field type string The prototype type

---@class name
---@field name string The prototype name

---@class ghost_type
---@field type string The ghost prototype type

---@class ghost_name
---@field name string The ghost prototype name


---@alias LuaEntityDamagedEventFilter type | name | ghost_type | ghost_name | original-damage-amount | final-damage-amount | damage-type | final-health

---@class type
---@field type string The prototype type

---@class name
---@field name string The prototype name

---@class ghost_type
---@field type string The ghost prototype type

---@class ghost_name
---@field name string The ghost prototype name

---@class original-damage-amount
---@field comparison ComparatorString
---@field value float The value to compare against.

---@class final-damage-amount
---@field comparison ComparatorString
---@field value float The value to compare against.

---@class damage-type
---@field type string A [LuaDamagePrototype](LuaDamagePrototype) name

---@class final-health
---@field comparison ComparatorString
---@field value float The value to compare against.


---@alias LuaSectorScannedEventFilter type | name | ghost_type | ghost_name

---@class type
---@field type string The prototype type

---@class name
---@field name string The prototype name

---@class ghost_type
---@field type string The ghost prototype type

---@class ghost_name
---@field name string The ghost prototype name

