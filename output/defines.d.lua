---@class Defines This is the class of the `defines` object that will exist at runtime.
---@field alert_type alert_type
---@field behavior_result behavior_result AI command exit status. See [LuaEntity::set_command](LuaEntity::set_command)
---@field build_check_type build_check_type
---@field chain_signal_state chain_signal_state State of a chain signal.
---@field chunk_generated_status chunk_generated_status
---@field circuit_condition_index circuit_condition_index
---@field circuit_connector_id circuit_connector_id
---@field command command Command given to units describing what they should do.
---@field compound_command compound_command How commands are joined together in a compound command (see [defines.command.compound](defines.command.compound)).
---@field control_behavior control_behavior
---@field controllers controllers
---@field deconstruction_item deconstruction_item
---@field difficulty difficulty
---@field difficulty_settings difficulty_settings
---@field direction direction
---@field disconnect_reason disconnect_reason
---@field distraction distraction
---@field entity_status entity_status
---@field events events See the [events page](events.html) for more info on what events contain and when they get raised.
---@field flow_precision_index flow_precision_index
---@field group_state group_state
---@field gui_type gui_type
---@field input_action input_action
---@field inventory inventory
---@field logistic_member_index logistic_member_index
---@field logistic_mode logistic_mode
---@field mouse_button_type mouse_button_type
---@field prototypes prototypes A dictionary mapping all top-level prototypes by name to a list of their associated subtypes. This list is organized as a lookup table, meaning it maps the sub-prototype names to `0`. As an example, `defines.prototypes['entity']` looks like this: `{furnace=0, inserter=0, container=0, ...}`.
---@field rail_connection_direction rail_connection_direction
---@field rail_direction rail_direction
---@field relative_gui_position relative_gui_position
---@field relative_gui_type relative_gui_type
---@field render_mode render_mode
---@field rich_text_setting rich_text_setting
---@field riding riding
---@field shooting shooting
---@field signal_state signal_state State of an ordinary rail signal.
---@field train_state train_state
---@field transport_line transport_line
---@field wire_connection_id wire_connection_id
---@field wire_type wire_type

---@class alert_type
---@field custom alert_type_enum
---@field entity_destroyed alert_type_enum
---@field entity_under_attack alert_type_enum
---@field no_material_for_construction alert_type_enum
---@field no_storage alert_type_enum
---@field not_enough_construction_robots alert_type_enum
---@field not_enough_repair_packs alert_type_enum
---@field train_out_of_fuel alert_type_enum
---@field turret_fire alert_type_enum

---@class alert_type_enum Enum value type for alert_type

---@class behavior_result AI command exit status. See [LuaEntity::set_command](LuaEntity::set_command)
---@field deleted behavior_result_enum
---@field fail behavior_result_enum
---@field in_progress behavior_result_enum
---@field success behavior_result_enum

---@class behavior_result_enum Enum value type for behavior_result

---@class build_check_type
---@field blueprint_ghost build_check_type_enum
---@field ghost_revive build_check_type_enum
---@field manual build_check_type_enum
---@field manual_ghost build_check_type_enum
---@field script build_check_type_enum
---@field script_ghost build_check_type_enum

---@class build_check_type_enum Enum value type for build_check_type

---@class chain_signal_state State of a chain signal.
---@field all_open chain_signal_state_enum
---@field none chain_signal_state_enum
---@field none_open chain_signal_state_enum
---@field partially_open chain_signal_state_enum

---@class chain_signal_state_enum Enum value type for chain_signal_state

---@class chunk_generated_status
---@field basic_tiles chunk_generated_status_enum
---@field corrected_tiles chunk_generated_status_enum
---@field custom_tiles chunk_generated_status_enum
---@field entities chunk_generated_status_enum
---@field nothing chunk_generated_status_enum
---@field tiles chunk_generated_status_enum

---@class chunk_generated_status_enum Enum value type for chunk_generated_status

---@class circuit_condition_index
---@field arithmetic_combinator circuit_condition_index_enum
---@field constant_combinator circuit_condition_index_enum
---@field decider_combinator circuit_condition_index_enum
---@field inserter_circuit circuit_condition_index_enum
---@field inserter_logistic circuit_condition_index_enum
---@field lamp circuit_condition_index_enum
---@field offshore_pump circuit_condition_index_enum
---@field pump circuit_condition_index_enum

---@class circuit_condition_index_enum Enum value type for circuit_condition_index

---@class circuit_connector_id
---@field accumulator circuit_connector_id_enum
---@field combinator_input circuit_connector_id_enum
---@field combinator_output circuit_connector_id_enum
---@field constant_combinator circuit_connector_id_enum
---@field container circuit_connector_id_enum
---@field electric_pole circuit_connector_id_enum
---@field inserter circuit_connector_id_enum
---@field lamp circuit_connector_id_enum
---@field offshore_pump circuit_connector_id_enum
---@field programmable_speaker circuit_connector_id_enum
---@field pump circuit_connector_id_enum
---@field rail_chain_signal circuit_connector_id_enum
---@field rail_signal circuit_connector_id_enum
---@field roboport circuit_connector_id_enum
---@field storage_tank circuit_connector_id_enum
---@field wall circuit_connector_id_enum

---@class circuit_connector_id_enum Enum value type for circuit_connector_id

---@class command Command given to units describing what they should do.
---@field attack command_enum Attack another entity.
---@field attack_area command_enum Go to a place and attack what you see.
---@field build_base command_enum Go to a position and build a base there.
---@field compound command_enum Chain commands together, see [defines.compound_command](defines.compound_command).
---@field flee command_enum Flee from another entity.
---@field go_to_location command_enum Go to a specific position.
---@field group command_enum Do what your group wants you to do.
---@field stop command_enum Stop moving and stay where you are.
---@field wander command_enum Chill.

---@class command_enum Enum value type for command

---@class compound_command How commands are joined together in a compound command (see [defines.command.compound](defines.command.compound)).
---@field logical_and compound_command_enum Fail on first failure. Only succeeds if all commands (executed one after another) succeed.
---@field logical_or compound_command_enum Succeed on first success. Only fails if all commands (executed one after another) fail.
---@field return_last compound_command_enum Execute all commands in sequence and fail or succeed depending on the return status of the last command.

---@class compound_command_enum Enum value type for compound_command

---@class control_behavior
---@field inserter inserter
---@field logistic_container logistic_container
---@field lamp lamp
---@field mining_drill mining_drill
---@field transport_belt transport_belt
---@field type type

---@class inserter
---@field circuit_mode_of_operation circuit_mode_of_operation
---@field hand_read_mode hand_read_mode

---@class circuit_mode_of_operation
---@field enable_disable circuit_mode_of_operation_enum
---@field none circuit_mode_of_operation_enum
---@field read_hand_contents circuit_mode_of_operation_enum
---@field set_filters circuit_mode_of_operation_enum
---@field set_stack_size circuit_mode_of_operation_enum

---@class circuit_mode_of_operation_enum Enum value type for circuit_mode_of_operation

---@class hand_read_mode
---@field hold hand_read_mode_enum
---@field pulse hand_read_mode_enum

---@class hand_read_mode_enum Enum value type for hand_read_mode

---@class logistic_container
---@field circuit_mode_of_operation circuit_mode_of_operation

---@class circuit_mode_of_operation
---@field send_contents circuit_mode_of_operation_enum
---@field set_requests circuit_mode_of_operation_enum

---@class circuit_mode_of_operation_enum Enum value type for circuit_mode_of_operation

---@class lamp
---@field circuit_mode_of_operation circuit_mode_of_operation

---@class circuit_mode_of_operation
---@field use_colors circuit_mode_of_operation_enum

---@class circuit_mode_of_operation_enum Enum value type for circuit_mode_of_operation

---@class mining_drill
---@field resource_read_mode resource_read_mode

---@class resource_read_mode
---@field entire_patch resource_read_mode_enum
---@field this_miner resource_read_mode_enum

---@class resource_read_mode_enum Enum value type for resource_read_mode

---@class transport_belt
---@field content_read_mode content_read_mode

---@class content_read_mode
---@field hold content_read_mode_enum
---@field pulse content_read_mode_enum

---@class content_read_mode_enum Enum value type for content_read_mode

---@class type
---@field accumulator type_enum [LuaAccumulatorControlBehavior](LuaAccumulatorControlBehavior)
---@field arithmetic_combinator type_enum [LuaArithmeticCombinatorControlBehavior](LuaArithmeticCombinatorControlBehavior)
---@field constant_combinator type_enum [LuaConstantCombinatorControlBehavior](LuaConstantCombinatorControlBehavior)
---@field container type_enum [LuaContainerControlBehavior](LuaContainerControlBehavior)
---@field decider_combinator type_enum [LuaDeciderCombinatorControlBehavior](LuaDeciderCombinatorControlBehavior)
---@field generic_on_off type_enum [LuaGenericOnOffControlBehavior](LuaGenericOnOffControlBehavior)
---@field inserter type_enum [LuaInserterControlBehavior](LuaInserterControlBehavior)
---@field lamp type_enum [LuaLampControlBehavior](LuaLampControlBehavior)
---@field logistic_container type_enum [LuaLogisticContainerControlBehavior](LuaLogisticContainerControlBehavior)
---@field mining_drill type_enum [LuaMiningDrillControlBehavior](LuaMiningDrillControlBehavior)
---@field programmable_speaker type_enum [LuaProgrammableSpeakerControlBehavior](LuaProgrammableSpeakerControlBehavior)
---@field rail_chain_signal type_enum [LuaRailChainSignalControlBehavior](LuaRailChainSignalControlBehavior)
---@field rail_signal type_enum [LuaRailSignalControlBehavior](LuaRailSignalControlBehavior)
---@field roboport type_enum [LuaRoboportControlBehavior](LuaRoboportControlBehavior)
---@field storage_tank type_enum [LuaStorageTankControlBehavior](LuaStorageTankControlBehavior)
---@field train_stop type_enum [LuaTrainStopControlBehavior](LuaTrainStopControlBehavior)
---@field transport_belt type_enum [LuaTransportBeltControlBehavior](LuaTransportBeltControlBehavior)
---@field wall type_enum [LuaWallControlBehavior](LuaWallControlBehavior)

---@class type_enum Enum value type for type

---@class controllers
---@field character controllers_enum The controller controls a character. This is the default controller in freeplay.
---@field cutscene controllers_enum The player can't interact with the world, and the camera pans around in a predefined manner.
---@field editor controllers_enum The Editor Controller near ultimate power to do almost anything in the game.
---@field ghost controllers_enum Can't interact with the world, can only observe. Used in the multiplayer waiting-to-respawn screen.
---@field god controllers_enum The controller isn't tied to a character. This is the default controller in sandbox.
---@field spectator controllers_enum Can't change anything in the world but can view anything.

---@class controllers_enum Enum value type for controllers

---@class deconstruction_item
---@field entity_filter_mode entity_filter_mode
---@field tile_filter_mode tile_filter_mode
---@field tile_selection_mode tile_selection_mode

---@class entity_filter_mode
---@field blacklist entity_filter_mode_enum
---@field whitelist entity_filter_mode_enum

---@class entity_filter_mode_enum Enum value type for entity_filter_mode

---@class tile_filter_mode
---@field blacklist tile_filter_mode_enum
---@field whitelist tile_filter_mode_enum

---@class tile_filter_mode_enum Enum value type for tile_filter_mode

---@class tile_selection_mode
---@field always tile_selection_mode_enum
---@field never tile_selection_mode_enum
---@field normal tile_selection_mode_enum
---@field only tile_selection_mode_enum

---@class tile_selection_mode_enum Enum value type for tile_selection_mode

---@class difficulty
---@field easy difficulty_enum
---@field hard difficulty_enum
---@field normal difficulty_enum

---@class difficulty_enum Enum value type for difficulty

---@class difficulty_settings
---@field recipe_difficulty recipe_difficulty
---@field technology_difficulty technology_difficulty

---@class recipe_difficulty
---@field expensive recipe_difficulty_enum
---@field normal recipe_difficulty_enum

---@class recipe_difficulty_enum Enum value type for recipe_difficulty

---@class technology_difficulty
---@field expensive technology_difficulty_enum
---@field normal technology_difficulty_enum

---@class technology_difficulty_enum Enum value type for technology_difficulty

---@class direction
---@field east direction_enum
---@field north direction_enum
---@field northeast direction_enum
---@field northwest direction_enum
---@field south direction_enum
---@field southeast direction_enum
---@field southwest direction_enum
---@field west direction_enum

---@class direction_enum Enum value type for direction

---@class disconnect_reason
---@field afk disconnect_reason_enum
---@field banned disconnect_reason_enum
---@field cannot_keep_up disconnect_reason_enum
---@field desync_limit_reached disconnect_reason_enum
---@field dropped disconnect_reason_enum
---@field kicked disconnect_reason_enum
---@field kicked_and_deleted disconnect_reason_enum
---@field quit disconnect_reason_enum
---@field reconnect disconnect_reason_enum
---@field switching_servers disconnect_reason_enum
---@field wrong_input disconnect_reason_enum

---@class disconnect_reason_enum Enum value type for disconnect_reason

---@class distraction
---@field by_anything distraction_enum Attack closer enemy entities, including entities "built" by player (belts, inserters, chests).
---@field by_damage distraction_enum Attack when attacked.
---@field by_enemy distraction_enum Attack closer enemy entities with force.
---@field none distraction_enum Perform command even if someone attacks the unit.

---@class distraction_enum Enum value type for distraction

---@class entity_status
---@field cant_divide_segments entity_status_enum Used by rail signals.
---@field charging entity_status_enum Used by accumulators.
---@field closed_by_circuit_network entity_status_enum
---@field disabled entity_status_enum Used by constant combinators: Combinator is turned off via switch in GUI.
---@field disabled_by_control_behavior entity_status_enum
---@field disabled_by_script entity_status_enum
---@field discharging entity_status_enum Used by accumulators.
---@field fluid_ingredient_shortage entity_status_enum Used by crafting machines.
---@field full_output entity_status_enum Used by crafting machines, boilers, burner energy sources and reactors: Reactor/burner has full burnt result inventory, boiler has full output fluidbox.
---@field fully_charged entity_status_enum Used by accumulators.
---@field item_ingredient_shortage entity_status_enum Used by crafting machines.
---@field launching_rocket entity_status_enum Used by the rocket silo.
---@field low_input_fluid entity_status_enum Used by boilers and fluid turrets: Boiler still has some fluid but is about to run out.
---@field low_power entity_status_enum
---@field low_temperature entity_status_enum Used by heat energy sources.
---@field marked_for_deconstruction entity_status_enum
---@field missing_required_fluid entity_status_enum Used by mining drills when the mining fluid is missing.
---@field missing_science_packs entity_status_enum Used by labs.
---@field networks_connected entity_status_enum Used by power switches.
---@field networks_disconnected entity_status_enum Used by power switches.
---@field no_ammo entity_status_enum Used by ammo turrets.
---@field no_fuel entity_status_enum
---@field no_ingredients entity_status_enum Used by furnaces.
---@field no_input_fluid entity_status_enum Used by boilers, fluid turrets and fluid energy sources: Boiler has no fluid to work with.
---@field no_minable_resources entity_status_enum Used by mining drills.
---@field no_modules_to_transmit entity_status_enum Used by beacons.
---@field no_power entity_status_enum
---@field no_recipe entity_status_enum Used by assembling machines.
---@field no_research_in_progress entity_status_enum Used by labs.
---@field normal entity_status_enum
---@field not_connected_to_rail entity_status_enum Used by rail signals.
---@field not_plugged_in_electric_network entity_status_enum Used by generators and solar panels.
---@field opened_by_circuit_network entity_status_enum
---@field out_of_logistic_network entity_status_enum Used by logistic containers.
---@field preparing_rocket_for_launch entity_status_enum Used by the rocket silo.
---@field recharging_after_power_outage entity_status_enum Used by roboports.
---@field turned_off_during_daytime entity_status_enum Used by lamps.
---@field waiting_for_source_items entity_status_enum Used by inserters.
---@field waiting_for_space_in_destination entity_status_enum Used by inserters and mining drills.
---@field waiting_for_target_to_be_built entity_status_enum Used by inserters targeting entity ghosts.
---@field waiting_for_train entity_status_enum Used by inserters targeting rails.
---@field waiting_to_launch_rocket entity_status_enum Used by the rocket silo.
---@field working entity_status_enum

---@class entity_status_enum Enum value type for entity_status

---@class events See the [events page](events.html) for more info on what events contain and when they get raised.
---@field on_ai_command_completed events_enum
---@field on_area_cloned events_enum
---@field on_biter_base_built events_enum
---@field on_brush_cloned events_enum
---@field on_build_base_arrived events_enum
---@field on_built_entity events_enum
---@field on_cancelled_deconstruction events_enum
---@field on_cancelled_upgrade events_enum
---@field on_character_corpse_expired events_enum
---@field on_chart_tag_added events_enum
---@field on_chart_tag_modified events_enum
---@field on_chart_tag_removed events_enum
---@field on_chunk_charted events_enum
---@field on_chunk_deleted events_enum
---@field on_chunk_generated events_enum
---@field on_combat_robot_expired events_enum
---@field on_console_chat events_enum
---@field on_console_command events_enum
---@field on_cutscene_cancelled events_enum
---@field on_cutscene_waypoint_reached events_enum
---@field on_difficulty_settings_changed events_enum
---@field on_entity_cloned events_enum
---@field on_entity_damaged events_enum
---@field on_entity_destroyed events_enum
---@field on_entity_died events_enum
---@field on_entity_logistic_slot_changed events_enum
---@field on_entity_renamed events_enum
---@field on_entity_settings_pasted events_enum
---@field on_entity_spawned events_enum
---@field on_equipment_inserted events_enum
---@field on_equipment_removed events_enum
---@field on_force_cease_fire_changed events_enum
---@field on_force_created events_enum
---@field on_force_friends_changed events_enum
---@field on_force_reset events_enum
---@field on_forces_merged events_enum
---@field on_forces_merging events_enum
---@field on_game_created_from_scenario events_enum
---@field on_gui_checked_state_changed events_enum
---@field on_gui_click events_enum
---@field on_gui_closed events_enum
---@field on_gui_confirmed events_enum
---@field on_gui_elem_changed events_enum
---@field on_gui_location_changed events_enum
---@field on_gui_opened events_enum
---@field on_gui_selected_tab_changed events_enum
---@field on_gui_selection_state_changed events_enum
---@field on_gui_switch_state_changed events_enum
---@field on_gui_text_changed events_enum
---@field on_gui_value_changed events_enum
---@field on_land_mine_armed events_enum
---@field on_lua_shortcut events_enum
---@field on_marked_for_deconstruction events_enum
---@field on_marked_for_upgrade events_enum
---@field on_market_item_purchased events_enum
---@field on_mod_item_opened events_enum
---@field on_permission_group_added events_enum
---@field on_permission_group_deleted events_enum
---@field on_permission_group_edited events_enum
---@field on_permission_string_imported events_enum
---@field on_picked_up_item events_enum
---@field on_player_alt_selected_area events_enum
---@field on_player_ammo_inventory_changed events_enum
---@field on_player_armor_inventory_changed events_enum
---@field on_player_banned events_enum
---@field on_player_built_tile events_enum
---@field on_player_cancelled_crafting events_enum
---@field on_player_changed_force events_enum
---@field on_player_changed_position events_enum
---@field on_player_changed_surface events_enum
---@field on_player_cheat_mode_disabled events_enum
---@field on_player_cheat_mode_enabled events_enum
---@field on_player_clicked_gps_tag events_enum
---@field on_player_configured_blueprint events_enum
---@field on_player_configured_spider_remote events_enum
---@field on_player_crafted_item events_enum
---@field on_player_created events_enum
---@field on_player_cursor_stack_changed events_enum
---@field on_player_deconstructed_area events_enum
---@field on_player_demoted events_enum
---@field on_player_died events_enum
---@field on_player_display_resolution_changed events_enum
---@field on_player_display_scale_changed events_enum
---@field on_player_driving_changed_state events_enum
---@field on_player_dropped_item events_enum
---@field on_player_fast_transferred events_enum
---@field on_player_flushed_fluid events_enum
---@field on_player_gun_inventory_changed events_enum
---@field on_player_joined_game events_enum
---@field on_player_kicked events_enum
---@field on_player_left_game events_enum
---@field on_player_main_inventory_changed events_enum
---@field on_player_mined_entity events_enum
---@field on_player_mined_item events_enum
---@field on_player_mined_tile events_enum
---@field on_player_muted events_enum
---@field on_player_pipette events_enum
---@field on_player_placed_equipment events_enum
---@field on_player_promoted events_enum
---@field on_player_removed events_enum
---@field on_player_removed_equipment events_enum
---@field on_player_repaired_entity events_enum
---@field on_player_respawned events_enum
---@field on_player_rotated_entity events_enum
---@field on_player_selected_area events_enum
---@field on_player_set_quick_bar_slot events_enum
---@field on_player_setup_blueprint events_enum
---@field on_player_toggled_alt_mode events_enum
---@field on_player_toggled_map_editor events_enum
---@field on_player_trash_inventory_changed events_enum
---@field on_player_unbanned events_enum
---@field on_player_unmuted events_enum
---@field on_player_used_capsule events_enum
---@field on_player_used_spider_remote events_enum
---@field on_post_entity_died events_enum
---@field on_pre_build events_enum
---@field on_pre_chunk_deleted events_enum
---@field on_pre_entity_settings_pasted events_enum
---@field on_pre_ghost_deconstructed events_enum
---@field on_pre_permission_group_deleted events_enum
---@field on_pre_permission_string_imported events_enum
---@field on_pre_player_crafted_item events_enum
---@field on_pre_player_died events_enum
---@field on_pre_player_left_game events_enum
---@field on_pre_player_mined_item events_enum
---@field on_pre_player_removed events_enum
---@field on_pre_player_toggled_map_editor events_enum
---@field on_pre_robot_exploded_cliff events_enum
---@field on_pre_script_inventory_resized events_enum
---@field on_pre_surface_cleared events_enum
---@field on_pre_surface_deleted events_enum
---@field on_research_finished events_enum
---@field on_research_reversed events_enum
---@field on_research_started events_enum
---@field on_resource_depleted events_enum
---@field on_robot_built_entity events_enum
---@field on_robot_built_tile events_enum
---@field on_robot_exploded_cliff events_enum
---@field on_robot_mined events_enum
---@field on_robot_mined_entity events_enum
---@field on_robot_mined_tile events_enum
---@field on_robot_pre_mined events_enum
---@field on_rocket_launch_ordered events_enum
---@field on_rocket_launched events_enum
---@field on_runtime_mod_setting_changed events_enum
---@field on_script_inventory_resized events_enum
---@field on_script_path_request_finished events_enum
---@field on_script_trigger_effect events_enum
---@field on_sector_scanned events_enum
---@field on_selected_entity_changed events_enum
---@field on_spider_command_completed events_enum
---@field on_string_translated events_enum
---@field on_surface_cleared events_enum
---@field on_surface_created events_enum
---@field on_surface_deleted events_enum
---@field on_surface_imported events_enum
---@field on_surface_renamed events_enum
---@field on_technology_effects_reset events_enum
---@field on_tick events_enum
---@field on_train_changed_state events_enum
---@field on_train_created events_enum
---@field on_train_schedule_changed events_enum
---@field on_trigger_created_entity events_enum
---@field on_trigger_fired_artillery events_enum
---@field on_unit_added_to_group events_enum
---@field on_unit_group_created events_enum
---@field on_unit_group_finished_gathering events_enum
---@field on_unit_removed_from_group events_enum
---@field on_worker_robot_expired events_enum
---@field script_raised_built events_enum
---@field script_raised_destroy events_enum
---@field script_raised_revive events_enum
---@field script_raised_set_tiles events_enum

---@class events_enum Enum value type for events

---@class flow_precision_index
---@field fifty_hours flow_precision_index_enum
---@field five_seconds flow_precision_index_enum
---@field one_hour flow_precision_index_enum
---@field one_minute flow_precision_index_enum
---@field one_thousand_hours flow_precision_index_enum
---@field ten_hours flow_precision_index_enum
---@field ten_minutes flow_precision_index_enum
---@field two_hundred_fifty_hours flow_precision_index_enum

---@class flow_precision_index_enum Enum value type for flow_precision_index

---@class group_state
---@field attacking_distraction group_state_enum
---@field attacking_target group_state_enum
---@field finished group_state_enum
---@field gathering group_state_enum
---@field moving group_state_enum
---@field pathfinding group_state_enum
---@field wander_in_group group_state_enum

---@class group_state_enum Enum value type for group_state

---@class gui_type
---@field achievement gui_type_enum
---@field blueprint_library gui_type_enum
---@field bonus gui_type_enum
---@field controller gui_type_enum
---@field custom gui_type_enum
---@field entity gui_type_enum
---@field equipment gui_type_enum
---@field item gui_type_enum
---@field logistic gui_type_enum
---@field none gui_type_enum
---@field other_player gui_type_enum
---@field permissions gui_type_enum
---@field player_management gui_type_enum
---@field production gui_type_enum
---@field research gui_type_enum
---@field server_management gui_type_enum
---@field tile gui_type_enum
---@field trains gui_type_enum
---@field tutorials gui_type_enum

---@class gui_type_enum Enum value type for gui_type

---@class input_action
---@field activate_copy input_action_enum
---@field activate_cut input_action_enum
---@field activate_paste input_action_enum
---@field add_permission_group input_action_enum
---@field add_train_station input_action_enum
---@field admin_action input_action_enum
---@field alt_select_area input_action_enum
---@field alt_select_blueprint_entities input_action_enum
---@field alternative_copy input_action_enum
---@field begin_mining input_action_enum
---@field begin_mining_terrain input_action_enum
---@field build input_action_enum
---@field build_rail input_action_enum
---@field build_terrain input_action_enum
---@field cancel_craft input_action_enum
---@field cancel_deconstruct input_action_enum
---@field cancel_new_blueprint input_action_enum
---@field cancel_research input_action_enum
---@field cancel_upgrade input_action_enum
---@field change_active_character_tab input_action_enum
---@field change_active_item_group_for_crafting input_action_enum
---@field change_active_item_group_for_filters input_action_enum
---@field change_active_quick_bar input_action_enum
---@field change_arithmetic_combinator_parameters input_action_enum
---@field change_decider_combinator_parameters input_action_enum
---@field change_entity_label input_action_enum
---@field change_item_description input_action_enum
---@field change_item_label input_action_enum
---@field change_multiplayer_config input_action_enum
---@field change_picking_state input_action_enum
---@field change_programmable_speaker_alert_parameters input_action_enum
---@field change_programmable_speaker_circuit_parameters input_action_enum
---@field change_programmable_speaker_parameters input_action_enum
---@field change_riding_state input_action_enum
---@field change_shooting_state input_action_enum
---@field change_train_stop_station input_action_enum
---@field change_train_wait_condition input_action_enum
---@field change_train_wait_condition_data input_action_enum
---@field clear_cursor input_action_enum
---@field connect_rolling_stock input_action_enum
---@field copy input_action_enum
---@field copy_entity_settings input_action_enum
---@field copy_opened_blueprint input_action_enum
---@field copy_opened_item input_action_enum
---@field craft input_action_enum
---@field cursor_split input_action_enum
---@field cursor_transfer input_action_enum
---@field custom_input input_action_enum
---@field cycle_blueprint_book_backwards input_action_enum
---@field cycle_blueprint_book_forwards input_action_enum
---@field deconstruct input_action_enum
---@field delete_blueprint_library input_action_enum
---@field delete_blueprint_record input_action_enum
---@field delete_custom_tag input_action_enum
---@field delete_permission_group input_action_enum
---@field destroy_item input_action_enum
---@field destroy_opened_item input_action_enum
---@field disconnect_rolling_stock input_action_enum
---@field drag_train_schedule input_action_enum
---@field drag_train_wait_condition input_action_enum
---@field drop_blueprint_record input_action_enum
---@field drop_item input_action_enum
---@field edit_blueprint_tool_preview input_action_enum
---@field edit_custom_tag input_action_enum
---@field edit_permission_group input_action_enum
---@field export_blueprint input_action_enum
---@field fast_entity_split input_action_enum
---@field fast_entity_transfer input_action_enum
---@field flush_opened_entity_fluid input_action_enum
---@field flush_opened_entity_specific_fluid input_action_enum
---@field go_to_train_station input_action_enum
---@field grab_blueprint_record input_action_enum
---@field gui_checked_state_changed input_action_enum
---@field gui_click input_action_enum
---@field gui_confirmed input_action_enum
---@field gui_elem_changed input_action_enum
---@field gui_location_changed input_action_enum
---@field gui_selected_tab_changed input_action_enum
---@field gui_selection_state_changed input_action_enum
---@field gui_switch_state_changed input_action_enum
---@field gui_text_changed input_action_enum
---@field gui_value_changed input_action_enum
---@field import_blueprint input_action_enum
---@field import_blueprint_string input_action_enum
---@field import_blueprints_filtered input_action_enum
---@field import_permissions_string input_action_enum
---@field inventory_split input_action_enum
---@field inventory_transfer input_action_enum
---@field launch_rocket input_action_enum
---@field lua_shortcut input_action_enum
---@field map_editor_action input_action_enum
---@field market_offer input_action_enum
---@field mod_settings_changed input_action_enum
---@field open_achievements_gui input_action_enum
---@field open_blueprint_library_gui input_action_enum
---@field open_blueprint_record input_action_enum
---@field open_bonus_gui input_action_enum
---@field open_character_gui input_action_enum
---@field open_current_vehicle_gui input_action_enum
---@field open_equipment input_action_enum
---@field open_gui input_action_enum
---@field open_item input_action_enum
---@field open_logistic_gui input_action_enum
---@field open_mod_item input_action_enum
---@field open_parent_of_opened_item input_action_enum
---@field open_production_gui input_action_enum
---@field open_technology_gui input_action_enum
---@field open_tips_and_tricks_gui input_action_enum
---@field open_train_gui input_action_enum
---@field open_train_station_gui input_action_enum
---@field open_trains_gui input_action_enum
---@field paste_entity_settings input_action_enum
---@field place_equipment input_action_enum
---@field quick_bar_pick_slot input_action_enum
---@field quick_bar_set_selected_page input_action_enum
---@field quick_bar_set_slot input_action_enum
---@field reassign_blueprint input_action_enum
---@field remove_cables input_action_enum
---@field remove_train_station input_action_enum
---@field reset_assembling_machine input_action_enum
---@field reset_item input_action_enum
---@field rotate_entity input_action_enum
---@field select_area input_action_enum
---@field select_blueprint_entities input_action_enum
---@field select_entity_slot input_action_enum
---@field select_item input_action_enum
---@field select_mapper_slot input_action_enum
---@field select_next_valid_gun input_action_enum
---@field select_tile_slot input_action_enum
---@field send_spidertron input_action_enum
---@field set_auto_launch_rocket input_action_enum
---@field set_autosort_inventory input_action_enum
---@field set_behavior_mode input_action_enum
---@field set_car_weapons_control input_action_enum
---@field set_circuit_condition input_action_enum
---@field set_circuit_mode_of_operation input_action_enum
---@field set_controller_logistic_trash_filter_item input_action_enum
---@field set_deconstruction_item_tile_selection_mode input_action_enum
---@field set_deconstruction_item_trees_and_rocks_only input_action_enum
---@field set_entity_color input_action_enum
---@field set_entity_energy_property input_action_enum
---@field set_entity_logistic_trash_filter_item input_action_enum
---@field set_filter input_action_enum
---@field set_flat_controller_gui input_action_enum
---@field set_heat_interface_mode input_action_enum
---@field set_heat_interface_temperature input_action_enum
---@field set_infinity_container_filter_item input_action_enum
---@field set_infinity_container_remove_unfiltered_items input_action_enum
---@field set_infinity_pipe_filter input_action_enum
---@field set_inserter_max_stack_size input_action_enum
---@field set_inventory_bar input_action_enum
---@field set_linked_container_link_i_d input_action_enum
---@field set_logistic_filter_item input_action_enum
---@field set_logistic_filter_signal input_action_enum
---@field set_player_color input_action_enum
---@field set_recipe_notifications input_action_enum
---@field set_request_from_buffers input_action_enum
---@field set_research_finished_stops_game input_action_enum
---@field set_signal input_action_enum
---@field set_splitter_priority input_action_enum
---@field set_train_stopped input_action_enum
---@field set_trains_limit input_action_enum
---@field set_vehicle_automatic_targeting_parameters input_action_enum
---@field setup_assembling_machine input_action_enum
---@field setup_blueprint input_action_enum
---@field setup_single_blueprint_record input_action_enum
---@field smart_pipette input_action_enum
---@field spawn_item input_action_enum
---@field stack_split input_action_enum
---@field stack_transfer input_action_enum
---@field start_repair input_action_enum
---@field start_research input_action_enum
---@field start_walking input_action_enum
---@field stop_building_by_moving input_action_enum
---@field switch_connect_to_logistic_network input_action_enum
---@field switch_constant_combinator_state input_action_enum
---@field switch_inserter_filter_mode_state input_action_enum
---@field switch_power_switch_state input_action_enum
---@field switch_to_rename_stop_gui input_action_enum
---@field take_equipment input_action_enum
---@field toggle_deconstruction_item_entity_filter_mode input_action_enum
---@field toggle_deconstruction_item_tile_filter_mode input_action_enum
---@field toggle_driving input_action_enum
---@field toggle_enable_vehicle_logistics_while_moving input_action_enum
---@field toggle_entity_logistic_requests input_action_enum
---@field toggle_equipment_movement_bonus input_action_enum
---@field toggle_map_editor input_action_enum
---@field toggle_personal_logistic_requests input_action_enum
---@field toggle_personal_roboport input_action_enum
---@field toggle_show_entity_info input_action_enum
---@field translate_string input_action_enum
---@field undo input_action_enum
---@field upgrade input_action_enum
---@field upgrade_opened_blueprint_by_item input_action_enum
---@field upgrade_opened_blueprint_by_record input_action_enum
---@field use_artillery_remote input_action_enum
---@field use_item input_action_enum
---@field wire_dragging input_action_enum
---@field write_to_console input_action_enum

---@class input_action_enum Enum value type for input_action

---@class inventory
---@field artillery_turret_ammo inventory_enum
---@field artillery_wagon_ammo inventory_enum
---@field assembling_machine_input inventory_enum
---@field assembling_machine_modules inventory_enum
---@field assembling_machine_output inventory_enum
---@field beacon_modules inventory_enum
---@field burnt_result inventory_enum
---@field car_ammo inventory_enum
---@field car_trunk inventory_enum
---@field cargo_wagon inventory_enum
---@field character_ammo inventory_enum
---@field character_armor inventory_enum
---@field character_corpse inventory_enum
---@field character_guns inventory_enum
---@field character_main inventory_enum
---@field character_trash inventory_enum
---@field character_vehicle inventory_enum
---@field chest inventory_enum
---@field editor_ammo inventory_enum
---@field editor_armor inventory_enum
---@field editor_guns inventory_enum
---@field editor_main inventory_enum
---@field fuel inventory_enum
---@field furnace_modules inventory_enum
---@field furnace_result inventory_enum
---@field furnace_source inventory_enum
---@field god_main inventory_enum
---@field item_main inventory_enum
---@field lab_input inventory_enum
---@field lab_modules inventory_enum
---@field mining_drill_modules inventory_enum
---@field roboport_material inventory_enum
---@field roboport_robot inventory_enum
---@field robot_cargo inventory_enum
---@field robot_repair inventory_enum
---@field rocket inventory_enum
---@field rocket_silo_result inventory_enum
---@field rocket_silo_rocket inventory_enum
---@field spider_ammo inventory_enum
---@field spider_trash inventory_enum
---@field spider_trunk inventory_enum
---@field turret_ammo inventory_enum

---@class inventory_enum Enum value type for inventory

---@class logistic_member_index
---@field character_provider logistic_member_index_enum
---@field character_requester logistic_member_index_enum
---@field character_storage logistic_member_index_enum
---@field generic_on_off_behavior logistic_member_index_enum
---@field logistic_container logistic_member_index_enum
---@field vehicle_storage logistic_member_index_enum

---@class logistic_member_index_enum Enum value type for logistic_member_index

---@class logistic_mode
---@field active_provider logistic_mode_enum
---@field buffer logistic_mode_enum
---@field none logistic_mode_enum
---@field passive_provider logistic_mode_enum
---@field requester logistic_mode_enum
---@field storage logistic_mode_enum

---@class logistic_mode_enum Enum value type for logistic_mode

---@class mouse_button_type
---@field left mouse_button_type_enum
---@field middle mouse_button_type_enum
---@field none mouse_button_type_enum
---@field right mouse_button_type_enum

---@class mouse_button_type_enum Enum value type for mouse_button_type

---@class rail_connection_direction
---@field left rail_connection_direction_enum
---@field none rail_connection_direction_enum
---@field right rail_connection_direction_enum
---@field straight rail_connection_direction_enum

---@class rail_connection_direction_enum Enum value type for rail_connection_direction

---@class rail_direction
---@field back rail_direction_enum
---@field front rail_direction_enum

---@class rail_direction_enum Enum value type for rail_direction

---@class relative_gui_position
---@field bottom relative_gui_position_enum
---@field left relative_gui_position_enum
---@field right relative_gui_position_enum
---@field top relative_gui_position_enum

---@class relative_gui_position_enum Enum value type for relative_gui_position

---@class relative_gui_type
---@field accumulator_gui relative_gui_type_enum
---@field achievement_gui relative_gui_type_enum
---@field additional_entity_info_gui relative_gui_type_enum
---@field admin_gui relative_gui_type_enum
---@field arithmetic_combinator_gui relative_gui_type_enum
---@field armor_gui relative_gui_type_enum
---@field assembling_machine_gui relative_gui_type_enum
---@field assembling_machine_select_recipe_gui relative_gui_type_enum
---@field beacon_gui relative_gui_type_enum
---@field blueprint_book_gui relative_gui_type_enum
---@field blueprint_library_gui relative_gui_type_enum
---@field blueprint_setup_gui relative_gui_type_enum
---@field bonus_gui relative_gui_type_enum
---@field burner_equipment_gui relative_gui_type_enum
---@field car_gui relative_gui_type_enum
---@field constant_combinator_gui relative_gui_type_enum
---@field container_gui relative_gui_type_enum
---@field controller_gui relative_gui_type_enum
---@field decider_combinator_gui relative_gui_type_enum
---@field deconstruction_item_gui relative_gui_type_enum
---@field electric_energy_interface_gui relative_gui_type_enum
---@field electric_network_gui relative_gui_type_enum
---@field entity_variations_gui relative_gui_type_enum
---@field entity_with_energy_source_gui relative_gui_type_enum
---@field equipment_grid_gui relative_gui_type_enum
---@field furnace_gui relative_gui_type_enum
---@field generic_on_off_entity_gui relative_gui_type_enum
---@field heat_interface_gui relative_gui_type_enum
---@field infinity_pipe_gui relative_gui_type_enum
---@field inserter_gui relative_gui_type_enum
---@field item_with_inventory_gui relative_gui_type_enum
---@field lab_gui relative_gui_type_enum
---@field lamp_gui relative_gui_type_enum
---@field linked_container_gui relative_gui_type_enum
---@field loader_gui relative_gui_type_enum
---@field logistic_gui relative_gui_type_enum
---@field market_gui relative_gui_type_enum
---@field mining_drill_gui relative_gui_type_enum
---@field other_player_gui relative_gui_type_enum
---@field permissions_gui relative_gui_type_enum
---@field pipe_gui relative_gui_type_enum
---@field power_switch_gui relative_gui_type_enum
---@field production_gui relative_gui_type_enum
---@field programmable_speaker_gui relative_gui_type_enum
---@field rail_chain_signal_gui relative_gui_type_enum
---@field rail_signal_gui relative_gui_type_enum
---@field reactor_gui relative_gui_type_enum
---@field rename_stop_gui relative_gui_type_enum
---@field resource_entity_gui relative_gui_type_enum
---@field roboport_gui relative_gui_type_enum
---@field rocket_silo_gui relative_gui_type_enum
---@field server_config_gui relative_gui_type_enum
---@field spider_vehicle_gui relative_gui_type_enum
---@field splitter_gui relative_gui_type_enum
---@field standalone_character_gui relative_gui_type_enum
---@field storage_tank_gui relative_gui_type_enum
---@field tile_variations_gui relative_gui_type_enum
---@field train_gui relative_gui_type_enum
---@field train_stop_gui relative_gui_type_enum
---@field trains_gui relative_gui_type_enum
---@field transport_belt_gui relative_gui_type_enum
---@field upgrade_item_gui relative_gui_type_enum
---@field wall_gui relative_gui_type_enum

---@class relative_gui_type_enum Enum value type for relative_gui_type

---@class render_mode
---@field chart render_mode_enum
---@field chart_zoomed_in render_mode_enum
---@field game render_mode_enum

---@class render_mode_enum Enum value type for render_mode

---@class rich_text_setting
---@field disabled rich_text_setting_enum
---@field enabled rich_text_setting_enum
---@field highlight rich_text_setting_enum

---@class rich_text_setting_enum Enum value type for rich_text_setting

---@class riding
---@field acceleration acceleration
---@field direction direction

---@class acceleration
---@field accelerating acceleration_enum
---@field braking acceleration_enum
---@field nothing acceleration_enum
---@field reversing acceleration_enum

---@class acceleration_enum Enum value type for acceleration

---@class direction
---@field left direction_enum
---@field right direction_enum
---@field straight direction_enum

---@class direction_enum Enum value type for direction

---@class shooting
---@field not_shooting shooting_enum
---@field shooting_enemies shooting_enum
---@field shooting_selected shooting_enum

---@class shooting_enum Enum value type for shooting

---@class signal_state State of an ordinary rail signal.
---@field closed signal_state_enum Red.
---@field open signal_state_enum Green.
---@field reserved signal_state_enum Orange.
---@field reserved_by_circuit_network signal_state_enum Red - From circuit network.

---@class signal_state_enum Enum value type for signal_state

---@class train_state
---@field arrive_signal train_state_enum Braking before a rail signal.
---@field arrive_station train_state_enum Braking before a station.
---@field destination_full train_state_enum Same as no_path but all candidate train stops are full
---@field manual_control train_state_enum Can move if user explicitly sits in and rides the train.
---@field manual_control_stop train_state_enum Switched to manual control and has to stop.
---@field no_path train_state_enum Has no path and is stopped.
---@field no_schedule train_state_enum Doesn't have anywhere to go.
---@field on_the_path train_state_enum Normal state -- following the path.
---@field path_lost train_state_enum Had path and lost it -- must stop.
---@field wait_signal train_state_enum Waiting at a signal.
---@field wait_station train_state_enum Waiting at a station.

---@class train_state_enum Enum value type for train_state

---@class transport_line
---@field left_line transport_line_enum
---@field left_split_line transport_line_enum
---@field left_underground_line transport_line_enum
---@field right_line transport_line_enum
---@field right_split_line transport_line_enum
---@field right_underground_line transport_line_enum
---@field secondary_left_line transport_line_enum
---@field secondary_left_split_line transport_line_enum
---@field secondary_right_line transport_line_enum
---@field secondary_right_split_line transport_line_enum

---@class transport_line_enum Enum value type for transport_line

---@class wire_connection_id
---@field electric_pole wire_connection_id_enum
---@field power_switch_left wire_connection_id_enum
---@field power_switch_right wire_connection_id_enum

---@class wire_connection_id_enum Enum value type for wire_connection_id

---@class wire_type
---@field copper wire_type_enum
---@field green wire_type_enum
---@field red wire_type_enum

---@class wire_type_enum Enum value type for wire_type

