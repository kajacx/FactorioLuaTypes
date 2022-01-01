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



---@class EntityPrototypeFlags This is a set of flags given as a dictionary[[string](string) &rarr; [boolean](boolean)]. When a flag is set, it is present in the dictionary with the value `true`. Unset flags aren't present in the dictionary at all. So, the boolean value is meaningless and exists just for easy table lookup if a flag is set.
---@field not-rotatable boolean
---@field placeable-neutral boolean
---@field placeable-player boolean
---@field placeable-enemy boolean
---@field placeable-off-grid boolean
---@field player-creation boolean
---@field building-direction-8-way boolean
---@field filter-directions boolean
---@field fast-replaceable-no-build-while-moving boolean
---@field breaths-air boolean
---@field not-repairable boolean
---@field not-on-map boolean
---@field not-deconstructable boolean
---@field not-blueprintable boolean
---@field hidden boolean
---@field hide-alt-info boolean
---@field fast-replaceable-no-cross-type-while-moving boolean
---@field no-gap-fill-while-building boolean
---@field not-flammable boolean
---@field no-automated-item-removal boolean
---@field no-automated-item-insertion boolean
---@field no-copy-paste boolean
---@field not-selectable-in-game boolean
---@field not-upgradable boolean
---@field not-in-kill-statistics boolean

---@class ItemPrototypeFlags This is a set of flags given as dictionary[[string](string) &rarr; [boolean](boolean)]. When a flag is set, it is present in the dictionary with the value `true`. Unset flags aren't present in the dictionary at all. So, the boolean value is meaningless and exists just for easy table lookup if a flag is set.
---@field draw-logistic-overlay boolean
---@field hidden boolean
---@field always-show boolean
---@field hide-from-bonus-gui boolean
---@field hide-from-fuel-tooltip boolean
---@field not-stackable boolean
---@field can-extend-inventory boolean
---@field primary-place-result boolean
---@field mod-openable boolean
---@field only-in-cursor boolean
---@field spawnable boolean

---@alias CollisionMaskLayer any A [string](string) specifying a collision mask layer. Possible values for the string are: - `"ground-tile"` - `"water-tile"` - `"resource-layer"` - `"doodad-layer"` - `"floor-layer"` - `"item-layer"` - `"ghost-layer"` - `"object-layer"` - `"player-layer"` - `"train-layer"` - `"rail-layer"` - `"transport-belt-layer"` - `"not-setup"` Additionally the values `"layer-13"` through `"layer-55"`. These layers are currently unused by the game but may change. If a mod is going to use one of the unused layers it's recommended to start at the higher layers because the base game will take from the lower ones.

---@alias CollisionMask any This is a set of masks given as a dictionary[[CollisionMaskLayer](CollisionMaskLayer) &rarr; [boolean](boolean)]. Only set masks are present in the dictionary and they have the value `true`. Unset flags aren't present at all.

---@alias CollisionMaskWithFlags any A [CollisionMask](CollisionMask) but also includes any flags this mask has. Flags such as: - `"not-colliding-with-itself"` - `"consider-tile-transitions"` - `"colliding-with-tiles-only"`

---@alias TriggerTargetMask any This is a set of trigger target masks given as a dictionary[[string](string) &rarr; [boolean](boolean)].





---@alias CircularProjectileCreationSpecification any An array with the following members: - A [RealOrientation](RealOrientation) - A [Vector](Vector)




---@class SelectionModeFlags This is a set of flags given as a dictionary[[string](string) &rarr; [boolean](boolean)]. Set flags are present in the dictionary with the value `true`; unset flags aren't present at all.
---@field blueprint boolean Entities that can be selected for blueprint.
---@field deconstruct boolean Entities that can be marked for deconstruction.
---@field cancel-deconstruct boolean Entities that can be marked for deconstruction cancelling.
---@field items boolean
---@field trees boolean
---@field buildable-type boolean Buildable entities.
---@field nothing boolean Only select an area.
---@field items-to-place boolean Entities that can be placed using an item.
---@field any-entity boolean
---@field any-tile boolean
---@field same-force boolean Entities with the same force as the selector.
---@field not-same-force boolean
---@field friend boolean
---@field enemy boolean
---@field upgrade boolean
---@field cancel-upgrade boolean
---@field entity-with-health boolean
---@field entity-with-force boolean
---@field entity-with-owner boolean



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

---@class ItemPrototypeFilterPlaceResult
---@field elem_filters EntityPrototypeFilter[] Filters for the place result.

---@class ItemPrototypeFilterBurntResult
---@field elem_filters ItemPrototypeFilter[] Filters for the burnt result.

---@class ItemPrototypeFilterPlaceAsTile
---@field elem_filters TilePrototypeFilter[] Filters for the placed tile.

---@class ItemPrototypeFilterPlacedAsEquipmentResult
---@field elem_filters EquipmentPrototypeFilter[] Filters for the placed equipment.

---@class ItemPrototypeFilterName For use within nested filters such as the `has-product-item` filter of array[[RecipePrototypeFilter](RecipePrototypeFilter)]. To get a specific prototype by name, see [LuaGameScript::item_prototypes](LuaGameScript::item_prototypes).
---@field name string | string[] The prototype name, or list of acceptable names.

---@class ItemPrototypeFilterType Usage example: ``` game.get_filtered_item_prototypes({{filter = "type", type = "armor"}}) ```
---@field type string The prototype type

---@class ItemPrototypeFilterFlag
---@field flag string One of the values in [ItemPrototypeFlags](ItemPrototypeFlags).

---@class ItemPrototypeFilterSubgroup
---@field subgroup string A [LuaGroup](LuaGroup) (subgroup) name

---@class ItemPrototypeFilterFuelCategory
---@field fuel-category string A [LuaFuelCategoryPrototype](LuaFuelCategoryPrototype) name

---@class ItemPrototypeFilterStackSize Usage example: ``` game.get_filtered_item_prototypes({{filter = "stack-size", comparison = ">", value = 20}, {filter = "stack-size", comparison = "<", value = 100, mode = "and"}}) ```
---@field comparison ComparatorString
---@field value uint The value to compare against.

---@class ItemPrototypeFilterDefaultRequestAmount
---@field comparison ComparatorString
---@field value uint The value to compare against.

---@class ItemPrototypeFilterWireCount
---@field comparison ComparatorString
---@field value uint The value to compare against.

---@class ItemPrototypeFilterFuelValue
---@field comparison ComparatorString
---@field value double The value to compare against.

---@class ItemPrototypeFilterFuelAccelerationMultiplier
---@field comparison ComparatorString
---@field value double The value to compare against.

---@class ItemPrototypeFilterFuelTopSpeedMultiplier
---@field comparison ComparatorString
---@field value double The value to compare against.

---@class ItemPrototypeFilterFuelEmissionsMultiplier
---@field comparison ComparatorString
---@field value double The value to compare against.

---@alias ItemPrototypeFilter ItemPrototypeFilterPlaceResult | ItemPrototypeFilterBurntResult | ItemPrototypeFilterPlaceAsTile | ItemPrototypeFilterPlacedAsEquipmentResult | ItemPrototypeFilterName | ItemPrototypeFilterType | ItemPrototypeFilterFlag | ItemPrototypeFilterSubgroup | ItemPrototypeFilterFuelCategory | ItemPrototypeFilterStackSize | ItemPrototypeFilterDefaultRequestAmount | ItemPrototypeFilterWireCount | ItemPrototypeFilterFuelValue | ItemPrototypeFilterFuelAccelerationMultiplier | ItemPrototypeFilterFuelTopSpeedMultiplier | ItemPrototypeFilterFuelEmissionsMultiplier

---@class ModSettingPrototypeFilterType
---@field type string The prototype type

---@class ModSettingPrototypeFilterMod
---@field mod string The mod name

---@class ModSettingPrototypeFilterSettingType
---@field type string The setting scope type (startup, runtime-global, or runtime-per-user)

---@alias ModSettingPrototypeFilter ModSettingPrototypeFilterType | ModSettingPrototypeFilterMod | ModSettingPrototypeFilterSettingType

---@class TechnologyPrototypeFilterResearchUnitIngredient
---@field ingredient string The research ingredient to check.

---@class TechnologyPrototypeFilterLevel
---@field comparison ComparatorString
---@field value uint The value to compare against.

---@class TechnologyPrototypeFilterMaxLevel
---@field comparison ComparatorString
---@field value uint The value to compare against.

---@class TechnologyPrototypeFilterTime
---@field comparison ComparatorString
---@field value uint The value to compare against.

---@alias TechnologyPrototypeFilter TechnologyPrototypeFilterResearchUnitIngredient | TechnologyPrototypeFilterLevel | TechnologyPrototypeFilterMaxLevel | TechnologyPrototypeFilterTime

---@class DecorativePrototypeFilterCollisionMask
---@field mask CollisionMask | CollisionMaskWithFlags
---@field mask_mode string How to filter: `"collides"` or `"layers-equals"`

---@alias DecorativePrototypeFilter DecorativePrototypeFilterCollisionMask

---@class AchievementPrototypeFilterType
---@field type string The prototype type

---@alias AchievementPrototypeFilter AchievementPrototypeFilterType

---@class FluidPrototypeFilterName For use within nested filters such as the `has-product-fluid` filter of array[[RecipePrototypeFilter](RecipePrototypeFilter)]. To get a specific prototype by name, see [LuaGameScript::fluid_prototypes](LuaGameScript::fluid_prototypes).
---@field name string | string[] The prototype name, or list of acceptable names.

---@class FluidPrototypeFilterSubgroup
---@field subgroup string A [LuaGroup](LuaGroup) (subgroup) name

---@class FluidPrototypeFilterDefaultTemperature
---@field comparison ComparatorString
---@field value double The value to compare against.

---@class FluidPrototypeFilterMaxTemperature
---@field comparison ComparatorString
---@field value double The value to compare against.

---@class FluidPrototypeFilterHeatCapacity
---@field comparison ComparatorString
---@field value double The value to compare against.

---@class FluidPrototypeFilterFuelValue
---@field comparison ComparatorString
---@field value double The value to compare against.

---@class FluidPrototypeFilterEmissionsMultiplier
---@field comparison ComparatorString
---@field value double The value to compare against.

---@class FluidPrototypeFilterGasTemperature
---@field comparison ComparatorString
---@field value double The value to compare against.

---@alias FluidPrototypeFilter FluidPrototypeFilterName | FluidPrototypeFilterSubgroup | FluidPrototypeFilterDefaultTemperature | FluidPrototypeFilterMaxTemperature | FluidPrototypeFilterHeatCapacity | FluidPrototypeFilterFuelValue | FluidPrototypeFilterEmissionsMultiplier | FluidPrototypeFilterGasTemperature

---@class EquipmentPrototypeFilterType
---@field type string The prototype type

---@alias EquipmentPrototypeFilter EquipmentPrototypeFilterType

---@class TilePrototypeFilterCollisionMask
---@field mask CollisionMask | CollisionMaskWithFlags
---@field mask_mode string How to filter: `"collides"` or `"layers-equals"`

---@class TilePrototypeFilterWalkingSpeedModifier
---@field comparison ComparatorString
---@field value double The value to compare against.

---@class TilePrototypeFilterVehicleFrictionModifier
---@field comparison ComparatorString
---@field value double The value to compare against.

---@class TilePrototypeFilterDecorativeRemovalProbability
---@field comparison ComparatorString
---@field value float The value to compare against.

---@class TilePrototypeFilterEmissions
---@field comparison ComparatorString
---@field value double The value to compare against.

---@alias TilePrototypeFilter TilePrototypeFilterCollisionMask | TilePrototypeFilterWalkingSpeedModifier | TilePrototypeFilterVehicleFrictionModifier | TilePrototypeFilterDecorativeRemovalProbability | TilePrototypeFilterEmissions

---@class RecipePrototypeFilterHasIngredientItem
---@field elem_filters ItemPrototypeFilter[] Matches if at least 1 ingredient is an item that matches these filters.

---@class RecipePrototypeFilterHasIngredientFluid Usage example: ``` -- selects recipes that consume sulfuric acid {{filter = "has-ingredient-fluid", elem_filters = {{filter = "name", name = "sulfuric-acid"}}}} ```
---@field elem_filters FluidPrototypeFilter[] Matches if at least 1 ingredient is a fluid that matches these filters.

---@class RecipePrototypeFilterHasProductItem Usage example: ``` -- selects recipes that produce an item {{filter = "has-product-item"}} -- selects recipes that produce iron plates {{filter = "has-product-item", elem_filters = {{filter = "name", name = "iron-plate"}}}} -- selects recipes that produce items that place furnaces {{filter = "has-product-item", elem_filters = {{filter = "place-result", elem_filters = {{filter = "type", type = "furnace"}}}}}} ```
---@field elem_filters ItemPrototypeFilter[] Matches if at least 1 product is an item that matches these filters.

---@class RecipePrototypeFilterHasProductFluid
---@field elem_filters FluidPrototypeFilter[] Matches if at least 1 product is a fluid that matches these filters.

---@class RecipePrototypeFilterSubgroup
---@field subgroup string A [LuaGroup](LuaGroup) (subgroup) name

---@class RecipePrototypeFilterCategory
---@field category string A [LuaRecipeCategoryPrototype](LuaRecipeCategoryPrototype) name

---@class RecipePrototypeFilterEnergy
---@field comparison ComparatorString
---@field value double The value to compare against.

---@class RecipePrototypeFilterEmissionsMultiplier
---@field comparison ComparatorString
---@field value double The value to compare against.

---@class RecipePrototypeFilterRequestPasteMultiplier
---@field comparison ComparatorString
---@field value uint The value to compare against.

---@class RecipePrototypeFilterOverloadMultiplier
---@field comparison ComparatorString
---@field value uint The value to compare against.

---@alias RecipePrototypeFilter RecipePrototypeFilterHasIngredientItem | RecipePrototypeFilterHasIngredientFluid | RecipePrototypeFilterHasProductItem | RecipePrototypeFilterHasProductFluid | RecipePrototypeFilterSubgroup | RecipePrototypeFilterCategory | RecipePrototypeFilterEnergy | RecipePrototypeFilterEmissionsMultiplier | RecipePrototypeFilterRequestPasteMultiplier | RecipePrototypeFilterOverloadMultiplier

---@class EntityPrototypeFilterName For use within nested filters such as the `place-result` filter of array[[ItemPrototypeFilter](ItemPrototypeFilter)]. To get a specific prototype by name, see [LuaGameScript::entity_prototypes](LuaGameScript::entity_prototypes).
---@field name string | string[] The prototype name, or list of acceptable names.

---@class EntityPrototypeFilterType Usage example: ``` game.get_filtered_entity_prototypes({{filter = "type", type = "unit"}}) ```
---@field type string The prototype type

---@class EntityPrototypeFilterCollisionMask Usage example: ``` game.get_filtered_entity_prototypes({{filter = "collision-mask", mask = "player-layer", mask_mode = "collides"}}) ```
---@field mask CollisionMask | CollisionMaskWithFlags
---@field mask_mode string How to filter: `"collides"` or `"layers-equals"`

---@class EntityPrototypeFilterFlag Usage example: ``` game.get_filtered_entity_prototypes({{filter = "flag", flag = "placeable-player"}, {filter = "flag", flag = "placeable-enemy", mode = "and"}}) ```
---@field flag string One of the values in [EntityPrototypeFlags](EntityPrototypeFlags).

---@class EntityPrototypeFilterBuildBaseEvolutionRequirement
---@field comparison ComparatorString
---@field value double The value to compare against.

---@class EntityPrototypeFilterSelectionPriority
---@field comparison ComparatorString
---@field value uint8 The value to compare against.

---@class EntityPrototypeFilterEmissions
---@field comparison ComparatorString
---@field value double The value to compare against.

---@class EntityPrototypeFilterCraftingCategory
---@field crafting_category string Matches if the prototype is for a crafting machine with this crafting category.

---@alias EntityPrototypeFilter EntityPrototypeFilterName | EntityPrototypeFilterType | EntityPrototypeFilterCollisionMask | EntityPrototypeFilterFlag | EntityPrototypeFilterBuildBaseEvolutionRequirement | EntityPrototypeFilterSelectionPriority | EntityPrototypeFilterEmissions | EntityPrototypeFilterCraftingCategory

---@alias EventFilter any Used to filter out irrelevant event callbacks in a performant way. Available filters: - [LuaEntityClonedEventFilter](LuaEntityClonedEventFilter) - [LuaEntityDamagedEventFilter](LuaEntityDamagedEventFilter) - [LuaPlayerMinedEntityEventFilter](LuaPlayerMinedEntityEventFilter) - [LuaPreRobotMinedEntityEventFilter](LuaPreRobotMinedEntityEventFilter) - [LuaRobotBuiltEntityEventFilter](LuaRobotBuiltEntityEventFilter) - [LuaPostEntityDiedEventFilter](LuaPostEntityDiedEventFilter) - [LuaEntityDiedEventFilter](LuaEntityDiedEventFilter) - [LuaScriptRaisedReviveEventFilter](LuaScriptRaisedReviveEventFilter) - [LuaPrePlayerMinedEntityEventFilter](LuaPrePlayerMinedEntityEventFilter) - [LuaEntityMarkedForDeconstructionEventFilter](LuaEntityMarkedForDeconstructionEventFilter) - [LuaPreGhostDeconstructedEventFilter](LuaPreGhostDeconstructedEventFilter) - [LuaEntityDeconstructionCancelledEventFilter](LuaEntityDeconstructionCancelledEventFilter) - [LuaEntityMarkedForUpgradeEventFilter](LuaEntityMarkedForUpgradeEventFilter) - [LuaSectorScannedEventFilter](LuaSectorScannedEventFilter) - [LuaRobotMinedEntityEventFilter](LuaRobotMinedEntityEventFilter) - [LuaScriptRaisedDestroyEventFilter](LuaScriptRaisedDestroyEventFilter) - [LuaUpgradeCancelledEventFilter](LuaUpgradeCancelledEventFilter) - [LuaScriptRaisedBuiltEventFilter](LuaScriptRaisedBuiltEventFilter) - [LuaPlayerBuiltEntityEventFilter](LuaPlayerBuiltEntityEventFilter) - [LuaPlayerRepairedEntityEventFilter](LuaPlayerRepairedEntityEventFilter)

---@class LuaScriptRaisedReviveEventFilterType
---@field type string The prototype type

---@class LuaScriptRaisedReviveEventFilterName
---@field name string The prototype name

---@class LuaScriptRaisedReviveEventFilterGhostType
---@field type string The ghost prototype type

---@class LuaScriptRaisedReviveEventFilterGhostName
---@field name string The ghost prototype name

---@alias LuaScriptRaisedReviveEventFilter LuaScriptRaisedReviveEventFilterType | LuaScriptRaisedReviveEventFilterName | LuaScriptRaisedReviveEventFilterGhostType | LuaScriptRaisedReviveEventFilterGhostName

---@class LuaEntityDiedEventFilterType
---@field type string The prototype type

---@class LuaEntityDiedEventFilterName
---@field name string The prototype name

---@class LuaEntityDiedEventFilterGhostType
---@field type string The ghost prototype type

---@class LuaEntityDiedEventFilterGhostName
---@field name string The ghost prototype name

---@alias LuaEntityDiedEventFilter LuaEntityDiedEventFilterType | LuaEntityDiedEventFilterName | LuaEntityDiedEventFilterGhostType | LuaEntityDiedEventFilterGhostName

---@class LuaEntityMarkedForDeconstructionEventFilterType
---@field type string The prototype type

---@class LuaEntityMarkedForDeconstructionEventFilterName
---@field name string The prototype name

---@class LuaEntityMarkedForDeconstructionEventFilterGhostType
---@field type string The ghost prototype type

---@class LuaEntityMarkedForDeconstructionEventFilterGhostName
---@field name string The ghost prototype name

---@alias LuaEntityMarkedForDeconstructionEventFilter LuaEntityMarkedForDeconstructionEventFilterType | LuaEntityMarkedForDeconstructionEventFilterName | LuaEntityMarkedForDeconstructionEventFilterGhostType | LuaEntityMarkedForDeconstructionEventFilterGhostName

---@class LuaPreGhostDeconstructedEventFilterType
---@field type string The prototype type

---@class LuaPreGhostDeconstructedEventFilterName
---@field name string The prototype name

---@class LuaPreGhostDeconstructedEventFilterGhostType
---@field type string The ghost prototype type

---@class LuaPreGhostDeconstructedEventFilterGhostName
---@field name string The ghost prototype name

---@alias LuaPreGhostDeconstructedEventFilter LuaPreGhostDeconstructedEventFilterType | LuaPreGhostDeconstructedEventFilterName | LuaPreGhostDeconstructedEventFilterGhostType | LuaPreGhostDeconstructedEventFilterGhostName

---@class LuaScriptRaisedDestroyEventFilterType
---@field type string The prototype type

---@class LuaScriptRaisedDestroyEventFilterName
---@field name string The prototype name

---@class LuaScriptRaisedDestroyEventFilterGhostType
---@field type string The ghost prototype type

---@class LuaScriptRaisedDestroyEventFilterGhostName
---@field name string The ghost prototype name

---@alias LuaScriptRaisedDestroyEventFilter LuaScriptRaisedDestroyEventFilterType | LuaScriptRaisedDestroyEventFilterName | LuaScriptRaisedDestroyEventFilterGhostType | LuaScriptRaisedDestroyEventFilterGhostName

---@class LuaUpgradeCancelledEventFilterType
---@field type string The prototype type

---@class LuaUpgradeCancelledEventFilterName
---@field name string The prototype name

---@class LuaUpgradeCancelledEventFilterGhostType
---@field type string The ghost prototype type

---@class LuaUpgradeCancelledEventFilterGhostName
---@field name string The ghost prototype name

---@alias LuaUpgradeCancelledEventFilter LuaUpgradeCancelledEventFilterType | LuaUpgradeCancelledEventFilterName | LuaUpgradeCancelledEventFilterGhostType | LuaUpgradeCancelledEventFilterGhostName

---@class LuaPlayerRepairedEntityEventFilterType
---@field type string The prototype type

---@class LuaPlayerRepairedEntityEventFilterName
---@field name string The prototype name

---@class LuaPlayerRepairedEntityEventFilterGhostType
---@field type string The ghost prototype type

---@class LuaPlayerRepairedEntityEventFilterGhostName
---@field name string The ghost prototype name

---@alias LuaPlayerRepairedEntityEventFilter LuaPlayerRepairedEntityEventFilterType | LuaPlayerRepairedEntityEventFilterName | LuaPlayerRepairedEntityEventFilterGhostType | LuaPlayerRepairedEntityEventFilterGhostName

---@class LuaEntityMarkedForUpgradeEventFilterType
---@field type string The prototype type

---@class LuaEntityMarkedForUpgradeEventFilterName
---@field name string The prototype name

---@class LuaEntityMarkedForUpgradeEventFilterGhostType
---@field type string The ghost prototype type

---@class LuaEntityMarkedForUpgradeEventFilterGhostName
---@field name string The ghost prototype name

---@alias LuaEntityMarkedForUpgradeEventFilter LuaEntityMarkedForUpgradeEventFilterType | LuaEntityMarkedForUpgradeEventFilterName | LuaEntityMarkedForUpgradeEventFilterGhostType | LuaEntityMarkedForUpgradeEventFilterGhostName

---@class LuaPostEntityDiedEventFilterType
---@field type string The prototype type

---@alias LuaPostEntityDiedEventFilter LuaPostEntityDiedEventFilterType

---@class LuaPreRobotMinedEntityEventFilterType
---@field type string The prototype type

---@class LuaPreRobotMinedEntityEventFilterName
---@field name string The prototype name

---@class LuaPreRobotMinedEntityEventFilterGhostType
---@field type string The ghost prototype type

---@class LuaPreRobotMinedEntityEventFilterGhostName
---@field name string The ghost prototype name

---@alias LuaPreRobotMinedEntityEventFilter LuaPreRobotMinedEntityEventFilterType | LuaPreRobotMinedEntityEventFilterName | LuaPreRobotMinedEntityEventFilterGhostType | LuaPreRobotMinedEntityEventFilterGhostName

---@class LuaEntityClonedEventFilterType
---@field type string The prototype type

---@class LuaEntityClonedEventFilterName
---@field name string The prototype name

---@class LuaEntityClonedEventFilterGhostType
---@field type string The ghost prototype type

---@class LuaEntityClonedEventFilterGhostName
---@field name string The ghost prototype name

---@alias LuaEntityClonedEventFilter LuaEntityClonedEventFilterType | LuaEntityClonedEventFilterName | LuaEntityClonedEventFilterGhostType | LuaEntityClonedEventFilterGhostName

---@class LuaScriptRaisedBuiltEventFilterType
---@field type string The prototype type

---@class LuaScriptRaisedBuiltEventFilterName
---@field name string The prototype name

---@class LuaScriptRaisedBuiltEventFilterGhostType
---@field type string The ghost prototype type

---@class LuaScriptRaisedBuiltEventFilterGhostName
---@field name string The ghost prototype name

---@alias LuaScriptRaisedBuiltEventFilter LuaScriptRaisedBuiltEventFilterType | LuaScriptRaisedBuiltEventFilterName | LuaScriptRaisedBuiltEventFilterGhostType | LuaScriptRaisedBuiltEventFilterGhostName

---@class LuaRobotMinedEntityEventFilterType
---@field type string The prototype type

---@class LuaRobotMinedEntityEventFilterName
---@field name string The prototype name

---@class LuaRobotMinedEntityEventFilterGhostType
---@field type string The ghost prototype type

---@class LuaRobotMinedEntityEventFilterGhostName
---@field name string The ghost prototype name

---@alias LuaRobotMinedEntityEventFilter LuaRobotMinedEntityEventFilterType | LuaRobotMinedEntityEventFilterName | LuaRobotMinedEntityEventFilterGhostType | LuaRobotMinedEntityEventFilterGhostName

---@class LuaPrePlayerMinedEntityEventFilterType
---@field type string The prototype type

---@class LuaPrePlayerMinedEntityEventFilterName
---@field name string The prototype name

---@class LuaPrePlayerMinedEntityEventFilterGhostType
---@field type string The ghost prototype type

---@class LuaPrePlayerMinedEntityEventFilterGhostName
---@field name string The ghost prototype name

---@alias LuaPrePlayerMinedEntityEventFilter LuaPrePlayerMinedEntityEventFilterType | LuaPrePlayerMinedEntityEventFilterName | LuaPrePlayerMinedEntityEventFilterGhostType | LuaPrePlayerMinedEntityEventFilterGhostName

---@class LuaRobotBuiltEntityEventFilterType
---@field type string The prototype type

---@class LuaRobotBuiltEntityEventFilterName
---@field name string The prototype name

---@class LuaRobotBuiltEntityEventFilterGhostType
---@field type string The ghost prototype type

---@class LuaRobotBuiltEntityEventFilterGhostName
---@field name string The ghost prototype name

---@class LuaRobotBuiltEntityEventFilterForce
---@field force string The entity force

---@alias LuaRobotBuiltEntityEventFilter LuaRobotBuiltEntityEventFilterType | LuaRobotBuiltEntityEventFilterName | LuaRobotBuiltEntityEventFilterGhostType | LuaRobotBuiltEntityEventFilterGhostName | LuaRobotBuiltEntityEventFilterForce

---@class LuaEntityDeconstructionCancelledEventFilterType
---@field type string The prototype type

---@class LuaEntityDeconstructionCancelledEventFilterName
---@field name string The prototype name

---@class LuaEntityDeconstructionCancelledEventFilterGhostType
---@field type string The ghost prototype type

---@class LuaEntityDeconstructionCancelledEventFilterGhostName
---@field name string The ghost prototype name

---@alias LuaEntityDeconstructionCancelledEventFilter LuaEntityDeconstructionCancelledEventFilterType | LuaEntityDeconstructionCancelledEventFilterName | LuaEntityDeconstructionCancelledEventFilterGhostType | LuaEntityDeconstructionCancelledEventFilterGhostName

---@class LuaPlayerBuiltEntityEventFilterType
---@field type string The prototype type

---@class LuaPlayerBuiltEntityEventFilterName
---@field name string The prototype name

---@class LuaPlayerBuiltEntityEventFilterGhostType
---@field type string The ghost prototype type

---@class LuaPlayerBuiltEntityEventFilterGhostName
---@field name string The ghost prototype name

---@class LuaPlayerBuiltEntityEventFilterForce
---@field force string The entity force

---@alias LuaPlayerBuiltEntityEventFilter LuaPlayerBuiltEntityEventFilterType | LuaPlayerBuiltEntityEventFilterName | LuaPlayerBuiltEntityEventFilterGhostType | LuaPlayerBuiltEntityEventFilterGhostName | LuaPlayerBuiltEntityEventFilterForce

---@class LuaPlayerMinedEntityEventFilterType
---@field type string The prototype type

---@class LuaPlayerMinedEntityEventFilterName
---@field name string The prototype name

---@class LuaPlayerMinedEntityEventFilterGhostType
---@field type string The ghost prototype type

---@class LuaPlayerMinedEntityEventFilterGhostName
---@field name string The ghost prototype name

---@alias LuaPlayerMinedEntityEventFilter LuaPlayerMinedEntityEventFilterType | LuaPlayerMinedEntityEventFilterName | LuaPlayerMinedEntityEventFilterGhostType | LuaPlayerMinedEntityEventFilterGhostName

---@class LuaEntityDamagedEventFilterType
---@field type string The prototype type

---@class LuaEntityDamagedEventFilterName
---@field name string The prototype name

---@class LuaEntityDamagedEventFilterGhostType
---@field type string The ghost prototype type

---@class LuaEntityDamagedEventFilterGhostName
---@field name string The ghost prototype name

---@class LuaEntityDamagedEventFilterOriginalDamageAmount
---@field comparison ComparatorString
---@field value float The value to compare against.

---@class LuaEntityDamagedEventFilterFinalDamageAmount
---@field comparison ComparatorString
---@field value float The value to compare against.

---@class LuaEntityDamagedEventFilterDamageType
---@field type string A [LuaDamagePrototype](LuaDamagePrototype) name

---@class LuaEntityDamagedEventFilterFinalHealth
---@field comparison ComparatorString
---@field value float The value to compare against.

---@alias LuaEntityDamagedEventFilter LuaEntityDamagedEventFilterType | LuaEntityDamagedEventFilterName | LuaEntityDamagedEventFilterGhostType | LuaEntityDamagedEventFilterGhostName | LuaEntityDamagedEventFilterOriginalDamageAmount | LuaEntityDamagedEventFilterFinalDamageAmount | LuaEntityDamagedEventFilterDamageType | LuaEntityDamagedEventFilterFinalHealth

---@class LuaSectorScannedEventFilterType
---@field type string The prototype type

---@class LuaSectorScannedEventFilterName
---@field name string The prototype name

---@class LuaSectorScannedEventFilterGhostType
---@field type string The ghost prototype type

---@class LuaSectorScannedEventFilterGhostName
---@field name string The ghost prototype name

---@alias LuaSectorScannedEventFilter LuaSectorScannedEventFilterType | LuaSectorScannedEventFilterName | LuaSectorScannedEventFilterGhostType | LuaSectorScannedEventFilterGhostName
