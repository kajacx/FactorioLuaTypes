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
---@field custom defines_alert_type
---@field entity_destroyed defines_alert_type
---@field entity_under_attack defines_alert_type
---@field no_material_for_construction defines_alert_type
---@field no_storage defines_alert_type
---@field not_enough_construction_robots defines_alert_type
---@field not_enough_repair_packs defines_alert_type
---@field train_out_of_fuel defines_alert_type
---@field turret_fire defines_alert_type

---@class defines_alert_type Enum value type for alert_type

---@class behavior_result AI command exit status. See [LuaEntity::set_command](LuaEntity::set_command)
---@field deleted defines_behavior_result
---@field fail defines_behavior_result
---@field in_progress defines_behavior_result
---@field success defines_behavior_result

---@class defines_behavior_result Enum value type for behavior_result

---@class build_check_type
---@field blueprint_ghost defines_build_check_type
---@field ghost_revive defines_build_check_type
---@field manual defines_build_check_type
---@field manual_ghost defines_build_check_type
---@field script defines_build_check_type
---@field script_ghost defines_build_check_type

---@class defines_build_check_type Enum value type for build_check_type

---@class chain_signal_state State of a chain signal.
---@field all_open defines_chain_signal_state
---@field none defines_chain_signal_state
---@field none_open defines_chain_signal_state
---@field partially_open defines_chain_signal_state

---@class defines_chain_signal_state Enum value type for chain_signal_state

---@class chunk_generated_status
---@field basic_tiles defines_chunk_generated_status
---@field corrected_tiles defines_chunk_generated_status
---@field custom_tiles defines_chunk_generated_status
---@field entities defines_chunk_generated_status
---@field nothing defines_chunk_generated_status
---@field tiles defines_chunk_generated_status

---@class defines_chunk_generated_status Enum value type for chunk_generated_status

---@class circuit_condition_index
---@field arithmetic_combinator defines_circuit_condition_index
---@field constant_combinator defines_circuit_condition_index
---@field decider_combinator defines_circuit_condition_index
---@field inserter_circuit defines_circuit_condition_index
---@field inserter_logistic defines_circuit_condition_index
---@field lamp defines_circuit_condition_index
---@field offshore_pump defines_circuit_condition_index
---@field pump defines_circuit_condition_index

---@class defines_circuit_condition_index Enum value type for circuit_condition_index

---@class circuit_connector_id
---@field accumulator defines_circuit_connector_id
---@field combinator_input defines_circuit_connector_id
---@field combinator_output defines_circuit_connector_id
---@field constant_combinator defines_circuit_connector_id
---@field container defines_circuit_connector_id
---@field electric_pole defines_circuit_connector_id
---@field inserter defines_circuit_connector_id
---@field lamp defines_circuit_connector_id
---@field offshore_pump defines_circuit_connector_id
---@field programmable_speaker defines_circuit_connector_id
---@field pump defines_circuit_connector_id
---@field rail_chain_signal defines_circuit_connector_id
---@field rail_signal defines_circuit_connector_id
---@field roboport defines_circuit_connector_id
---@field storage_tank defines_circuit_connector_id
---@field wall defines_circuit_connector_id

---@class defines_circuit_connector_id Enum value type for circuit_connector_id

---@class command Command given to units describing what they should do.
---@field attack defines_command Attack another entity.
---@field attack_area defines_command Go to a place and attack what you see.
---@field build_base defines_command Go to a position and build a base there.
---@field compound defines_command Chain commands together, see [defines.compound_command](defines.compound_command).
---@field flee defines_command Flee from another entity.
---@field go_to_location defines_command Go to a specific position.
---@field group defines_command Do what your group wants you to do.
---@field stop defines_command Stop moving and stay where you are.
---@field wander defines_command Chill.

---@class defines_command Enum value type for command

---@class compound_command How commands are joined together in a compound command (see [defines.command.compound](defines.command.compound)).
---@field logical_and defines_compound_command Fail on first failure. Only succeeds if all commands (executed one after another) succeed.
---@field logical_or defines_compound_command Succeed on first success. Only fails if all commands (executed one after another) fail.
---@field return_last defines_compound_command Execute all commands in sequence and fail or succeed depending on the return status of the last command.

---@class defines_compound_command Enum value type for compound_command

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
---@field enable_disable defines_control_behavior_inserter_circuit_mode_of_operation
---@field none defines_control_behavior_inserter_circuit_mode_of_operation
---@field read_hand_contents defines_control_behavior_inserter_circuit_mode_of_operation
---@field set_filters defines_control_behavior_inserter_circuit_mode_of_operation
---@field set_stack_size defines_control_behavior_inserter_circuit_mode_of_operation

---@class defines_control_behavior_inserter_circuit_mode_of_operation Enum value type for circuit_mode_of_operation

---@class hand_read_mode
---@field hold defines_control_behavior_inserter_hand_read_mode
---@field pulse defines_control_behavior_inserter_hand_read_mode

---@class defines_control_behavior_inserter_hand_read_mode Enum value type for hand_read_mode

---@class logistic_container
---@field circuit_mode_of_operation circuit_mode_of_operation

---@class circuit_mode_of_operation
---@field send_contents defines_control_behavior_logistic_container_circuit_mode_of_operation
---@field set_requests defines_control_behavior_logistic_container_circuit_mode_of_operation

---@class defines_control_behavior_logistic_container_circuit_mode_of_operation Enum value type for circuit_mode_of_operation

---@class lamp
---@field circuit_mode_of_operation circuit_mode_of_operation

---@class circuit_mode_of_operation
---@field use_colors defines_control_behavior_lamp_circuit_mode_of_operation

---@class defines_control_behavior_lamp_circuit_mode_of_operation Enum value type for circuit_mode_of_operation

---@class mining_drill
---@field resource_read_mode resource_read_mode

---@class resource_read_mode
---@field entire_patch defines_control_behavior_mining_drill_resource_read_mode
---@field this_miner defines_control_behavior_mining_drill_resource_read_mode

---@class defines_control_behavior_mining_drill_resource_read_mode Enum value type for resource_read_mode

---@class transport_belt
---@field content_read_mode content_read_mode

---@class content_read_mode
---@field hold defines_control_behavior_transport_belt_content_read_mode
---@field pulse defines_control_behavior_transport_belt_content_read_mode

---@class defines_control_behavior_transport_belt_content_read_mode Enum value type for content_read_mode

---@class type
---@field accumulator defines_control_behavior_type [LuaAccumulatorControlBehavior](LuaAccumulatorControlBehavior)
---@field arithmetic_combinator defines_control_behavior_type [LuaArithmeticCombinatorControlBehavior](LuaArithmeticCombinatorControlBehavior)
---@field constant_combinator defines_control_behavior_type [LuaConstantCombinatorControlBehavior](LuaConstantCombinatorControlBehavior)
---@field container defines_control_behavior_type [LuaContainerControlBehavior](LuaContainerControlBehavior)
---@field decider_combinator defines_control_behavior_type [LuaDeciderCombinatorControlBehavior](LuaDeciderCombinatorControlBehavior)
---@field generic_on_off defines_control_behavior_type [LuaGenericOnOffControlBehavior](LuaGenericOnOffControlBehavior)
---@field inserter defines_control_behavior_type [LuaInserterControlBehavior](LuaInserterControlBehavior)
---@field lamp defines_control_behavior_type [LuaLampControlBehavior](LuaLampControlBehavior)
---@field logistic_container defines_control_behavior_type [LuaLogisticContainerControlBehavior](LuaLogisticContainerControlBehavior)
---@field mining_drill defines_control_behavior_type [LuaMiningDrillControlBehavior](LuaMiningDrillControlBehavior)
---@field programmable_speaker defines_control_behavior_type [LuaProgrammableSpeakerControlBehavior](LuaProgrammableSpeakerControlBehavior)
---@field rail_chain_signal defines_control_behavior_type [LuaRailChainSignalControlBehavior](LuaRailChainSignalControlBehavior)
---@field rail_signal defines_control_behavior_type [LuaRailSignalControlBehavior](LuaRailSignalControlBehavior)
---@field roboport defines_control_behavior_type [LuaRoboportControlBehavior](LuaRoboportControlBehavior)
---@field storage_tank defines_control_behavior_type [LuaStorageTankControlBehavior](LuaStorageTankControlBehavior)
---@field train_stop defines_control_behavior_type [LuaTrainStopControlBehavior](LuaTrainStopControlBehavior)
---@field transport_belt defines_control_behavior_type [LuaTransportBeltControlBehavior](LuaTransportBeltControlBehavior)
---@field wall defines_control_behavior_type [LuaWallControlBehavior](LuaWallControlBehavior)

---@class defines_control_behavior_type Enum value type for type

---@class controllers
---@field character defines_controllers The controller controls a character. This is the default controller in freeplay.
---@field cutscene defines_controllers The player can't interact with the world, and the camera pans around in a predefined manner.
---@field editor defines_controllers The Editor Controller near ultimate power to do almost anything in the game.
---@field ghost defines_controllers Can't interact with the world, can only observe. Used in the multiplayer waiting-to-respawn screen.
---@field god defines_controllers The controller isn't tied to a character. This is the default controller in sandbox.
---@field spectator defines_controllers Can't change anything in the world but can view anything.

---@class defines_controllers Enum value type for controllers

---@class deconstruction_item
---@field entity_filter_mode entity_filter_mode
---@field tile_filter_mode tile_filter_mode
---@field tile_selection_mode tile_selection_mode

---@class entity_filter_mode
---@field blacklist defines_deconstruction_item_entity_filter_mode
---@field whitelist defines_deconstruction_item_entity_filter_mode

---@class defines_deconstruction_item_entity_filter_mode Enum value type for entity_filter_mode

---@class tile_filter_mode
---@field blacklist defines_deconstruction_item_tile_filter_mode
---@field whitelist defines_deconstruction_item_tile_filter_mode

---@class defines_deconstruction_item_tile_filter_mode Enum value type for tile_filter_mode

---@class tile_selection_mode
---@field always defines_deconstruction_item_tile_selection_mode
---@field never defines_deconstruction_item_tile_selection_mode
---@field normal defines_deconstruction_item_tile_selection_mode
---@field only defines_deconstruction_item_tile_selection_mode

---@class defines_deconstruction_item_tile_selection_mode Enum value type for tile_selection_mode

---@class difficulty
---@field easy defines_difficulty
---@field hard defines_difficulty
---@field normal defines_difficulty

---@class defines_difficulty Enum value type for difficulty

---@class difficulty_settings
---@field recipe_difficulty recipe_difficulty
---@field technology_difficulty technology_difficulty

---@class recipe_difficulty
---@field expensive defines_difficulty_settings_recipe_difficulty
---@field normal defines_difficulty_settings_recipe_difficulty

---@class defines_difficulty_settings_recipe_difficulty Enum value type for recipe_difficulty

---@class technology_difficulty
---@field expensive defines_difficulty_settings_technology_difficulty
---@field normal defines_difficulty_settings_technology_difficulty

---@class defines_difficulty_settings_technology_difficulty Enum value type for technology_difficulty

---@class direction
---@field east defines_direction
---@field north defines_direction
---@field northeast defines_direction
---@field northwest defines_direction
---@field south defines_direction
---@field southeast defines_direction
---@field southwest defines_direction
---@field west defines_direction

---@class defines_direction Enum value type for direction

---@class disconnect_reason
---@field afk defines_disconnect_reason
---@field banned defines_disconnect_reason
---@field cannot_keep_up defines_disconnect_reason
---@field desync_limit_reached defines_disconnect_reason
---@field dropped defines_disconnect_reason
---@field kicked defines_disconnect_reason
---@field kicked_and_deleted defines_disconnect_reason
---@field quit defines_disconnect_reason
---@field reconnect defines_disconnect_reason
---@field switching_servers defines_disconnect_reason
---@field wrong_input defines_disconnect_reason

---@class defines_disconnect_reason Enum value type for disconnect_reason

---@class distraction
---@field by_anything defines_distraction Attack closer enemy entities, including entities "built" by player (belts, inserters, chests).
---@field by_damage defines_distraction Attack when attacked.
---@field by_enemy defines_distraction Attack closer enemy entities with force.
---@field none defines_distraction Perform command even if someone attacks the unit.

---@class defines_distraction Enum value type for distraction

---@class entity_status
---@field cant_divide_segments defines_entity_status Used by rail signals.
---@field charging defines_entity_status Used by accumulators.
---@field closed_by_circuit_network defines_entity_status
---@field disabled defines_entity_status Used by constant combinators: Combinator is turned off via switch in GUI.
---@field disabled_by_control_behavior defines_entity_status
---@field disabled_by_script defines_entity_status
---@field discharging defines_entity_status Used by accumulators.
---@field fluid_ingredient_shortage defines_entity_status Used by crafting machines.
---@field full_output defines_entity_status Used by crafting machines, boilers, burner energy sources and reactors: Reactor/burner has full burnt result inventory, boiler has full output fluidbox.
---@field fully_charged defines_entity_status Used by accumulators.
---@field item_ingredient_shortage defines_entity_status Used by crafting machines.
---@field launching_rocket defines_entity_status Used by the rocket silo.
---@field low_input_fluid defines_entity_status Used by boilers and fluid turrets: Boiler still has some fluid but is about to run out.
---@field low_power defines_entity_status
---@field low_temperature defines_entity_status Used by heat energy sources.
---@field marked_for_deconstruction defines_entity_status
---@field missing_required_fluid defines_entity_status Used by mining drills when the mining fluid is missing.
---@field missing_science_packs defines_entity_status Used by labs.
---@field networks_connected defines_entity_status Used by power switches.
---@field networks_disconnected defines_entity_status Used by power switches.
---@field no_ammo defines_entity_status Used by ammo turrets.
---@field no_fuel defines_entity_status
---@field no_ingredients defines_entity_status Used by furnaces.
---@field no_input_fluid defines_entity_status Used by boilers, fluid turrets and fluid energy sources: Boiler has no fluid to work with.
---@field no_minable_resources defines_entity_status Used by mining drills.
---@field no_modules_to_transmit defines_entity_status Used by beacons.
---@field no_power defines_entity_status
---@field no_recipe defines_entity_status Used by assembling machines.
---@field no_research_in_progress defines_entity_status Used by labs.
---@field normal defines_entity_status
---@field not_connected_to_rail defines_entity_status Used by rail signals.
---@field not_plugged_in_electric_network defines_entity_status Used by generators and solar panels.
---@field opened_by_circuit_network defines_entity_status
---@field out_of_logistic_network defines_entity_status Used by logistic containers.
---@field preparing_rocket_for_launch defines_entity_status Used by the rocket silo.
---@field recharging_after_power_outage defines_entity_status Used by roboports.
---@field turned_off_during_daytime defines_entity_status Used by lamps.
---@field waiting_for_source_items defines_entity_status Used by inserters.
---@field waiting_for_space_in_destination defines_entity_status Used by inserters and mining drills.
---@field waiting_for_target_to_be_built defines_entity_status Used by inserters targeting entity ghosts.
---@field waiting_for_train defines_entity_status Used by inserters targeting rails.
---@field waiting_to_launch_rocket defines_entity_status Used by the rocket silo.
---@field working defines_entity_status

---@class defines_entity_status Enum value type for entity_status

---@class events See the [events page](events.html) for more info on what events contain and when they get raised.
---@field on_ai_command_completed defines_events
---@field on_area_cloned defines_events
---@field on_biter_base_built defines_events
---@field on_brush_cloned defines_events
---@field on_build_base_arrived defines_events
---@field on_built_entity defines_events
---@field on_cancelled_deconstruction defines_events
---@field on_cancelled_upgrade defines_events
---@field on_character_corpse_expired defines_events
---@field on_chart_tag_added defines_events
---@field on_chart_tag_modified defines_events
---@field on_chart_tag_removed defines_events
---@field on_chunk_charted defines_events
---@field on_chunk_deleted defines_events
---@field on_chunk_generated defines_events
---@field on_combat_robot_expired defines_events
---@field on_console_chat defines_events
---@field on_console_command defines_events
---@field on_cutscene_cancelled defines_events
---@field on_cutscene_waypoint_reached defines_events
---@field on_difficulty_settings_changed defines_events
---@field on_entity_cloned defines_events
---@field on_entity_damaged defines_events
---@field on_entity_destroyed defines_events
---@field on_entity_died defines_events
---@field on_entity_logistic_slot_changed defines_events
---@field on_entity_renamed defines_events
---@field on_entity_settings_pasted defines_events
---@field on_entity_spawned defines_events
---@field on_equipment_inserted defines_events
---@field on_equipment_removed defines_events
---@field on_force_cease_fire_changed defines_events
---@field on_force_created defines_events
---@field on_force_friends_changed defines_events
---@field on_force_reset defines_events
---@field on_forces_merged defines_events
---@field on_forces_merging defines_events
---@field on_game_created_from_scenario defines_events
---@field on_gui_checked_state_changed defines_events
---@field on_gui_click defines_events
---@field on_gui_closed defines_events
---@field on_gui_confirmed defines_events
---@field on_gui_elem_changed defines_events
---@field on_gui_location_changed defines_events
---@field on_gui_opened defines_events
---@field on_gui_selected_tab_changed defines_events
---@field on_gui_selection_state_changed defines_events
---@field on_gui_switch_state_changed defines_events
---@field on_gui_text_changed defines_events
---@field on_gui_value_changed defines_events
---@field on_land_mine_armed defines_events
---@field on_lua_shortcut defines_events
---@field on_marked_for_deconstruction defines_events
---@field on_marked_for_upgrade defines_events
---@field on_market_item_purchased defines_events
---@field on_mod_item_opened defines_events
---@field on_permission_group_added defines_events
---@field on_permission_group_deleted defines_events
---@field on_permission_group_edited defines_events
---@field on_permission_string_imported defines_events
---@field on_picked_up_item defines_events
---@field on_player_alt_selected_area defines_events
---@field on_player_ammo_inventory_changed defines_events
---@field on_player_armor_inventory_changed defines_events
---@field on_player_banned defines_events
---@field on_player_built_tile defines_events
---@field on_player_cancelled_crafting defines_events
---@field on_player_changed_force defines_events
---@field on_player_changed_position defines_events
---@field on_player_changed_surface defines_events
---@field on_player_cheat_mode_disabled defines_events
---@field on_player_cheat_mode_enabled defines_events
---@field on_player_clicked_gps_tag defines_events
---@field on_player_configured_blueprint defines_events
---@field on_player_configured_spider_remote defines_events
---@field on_player_crafted_item defines_events
---@field on_player_created defines_events
---@field on_player_cursor_stack_changed defines_events
---@field on_player_deconstructed_area defines_events
---@field on_player_demoted defines_events
---@field on_player_died defines_events
---@field on_player_display_resolution_changed defines_events
---@field on_player_display_scale_changed defines_events
---@field on_player_driving_changed_state defines_events
---@field on_player_dropped_item defines_events
---@field on_player_fast_transferred defines_events
---@field on_player_flushed_fluid defines_events
---@field on_player_gun_inventory_changed defines_events
---@field on_player_joined_game defines_events
---@field on_player_kicked defines_events
---@field on_player_left_game defines_events
---@field on_player_main_inventory_changed defines_events
---@field on_player_mined_entity defines_events
---@field on_player_mined_item defines_events
---@field on_player_mined_tile defines_events
---@field on_player_muted defines_events
---@field on_player_pipette defines_events
---@field on_player_placed_equipment defines_events
---@field on_player_promoted defines_events
---@field on_player_removed defines_events
---@field on_player_removed_equipment defines_events
---@field on_player_repaired_entity defines_events
---@field on_player_respawned defines_events
---@field on_player_rotated_entity defines_events
---@field on_player_selected_area defines_events
---@field on_player_set_quick_bar_slot defines_events
---@field on_player_setup_blueprint defines_events
---@field on_player_toggled_alt_mode defines_events
---@field on_player_toggled_map_editor defines_events
---@field on_player_trash_inventory_changed defines_events
---@field on_player_unbanned defines_events
---@field on_player_unmuted defines_events
---@field on_player_used_capsule defines_events
---@field on_player_used_spider_remote defines_events
---@field on_post_entity_died defines_events
---@field on_pre_build defines_events
---@field on_pre_chunk_deleted defines_events
---@field on_pre_entity_settings_pasted defines_events
---@field on_pre_ghost_deconstructed defines_events
---@field on_pre_permission_group_deleted defines_events
---@field on_pre_permission_string_imported defines_events
---@field on_pre_player_crafted_item defines_events
---@field on_pre_player_died defines_events
---@field on_pre_player_left_game defines_events
---@field on_pre_player_mined_item defines_events
---@field on_pre_player_removed defines_events
---@field on_pre_player_toggled_map_editor defines_events
---@field on_pre_robot_exploded_cliff defines_events
---@field on_pre_script_inventory_resized defines_events
---@field on_pre_surface_cleared defines_events
---@field on_pre_surface_deleted defines_events
---@field on_research_finished defines_events
---@field on_research_reversed defines_events
---@field on_research_started defines_events
---@field on_resource_depleted defines_events
---@field on_robot_built_entity defines_events
---@field on_robot_built_tile defines_events
---@field on_robot_exploded_cliff defines_events
---@field on_robot_mined defines_events
---@field on_robot_mined_entity defines_events
---@field on_robot_mined_tile defines_events
---@field on_robot_pre_mined defines_events
---@field on_rocket_launch_ordered defines_events
---@field on_rocket_launched defines_events
---@field on_runtime_mod_setting_changed defines_events
---@field on_script_inventory_resized defines_events
---@field on_script_path_request_finished defines_events
---@field on_script_trigger_effect defines_events
---@field on_sector_scanned defines_events
---@field on_selected_entity_changed defines_events
---@field on_spider_command_completed defines_events
---@field on_string_translated defines_events
---@field on_surface_cleared defines_events
---@field on_surface_created defines_events
---@field on_surface_deleted defines_events
---@field on_surface_imported defines_events
---@field on_surface_renamed defines_events
---@field on_technology_effects_reset defines_events
---@field on_tick defines_events
---@field on_train_changed_state defines_events
---@field on_train_created defines_events
---@field on_train_schedule_changed defines_events
---@field on_trigger_created_entity defines_events
---@field on_trigger_fired_artillery defines_events
---@field on_unit_added_to_group defines_events
---@field on_unit_group_created defines_events
---@field on_unit_group_finished_gathering defines_events
---@field on_unit_removed_from_group defines_events
---@field on_worker_robot_expired defines_events
---@field script_raised_built defines_events
---@field script_raised_destroy defines_events
---@field script_raised_revive defines_events
---@field script_raised_set_tiles defines_events

---@class defines_events Enum value type for events

---@class flow_precision_index
---@field fifty_hours defines_flow_precision_index
---@field five_seconds defines_flow_precision_index
---@field one_hour defines_flow_precision_index
---@field one_minute defines_flow_precision_index
---@field one_thousand_hours defines_flow_precision_index
---@field ten_hours defines_flow_precision_index
---@field ten_minutes defines_flow_precision_index
---@field two_hundred_fifty_hours defines_flow_precision_index

---@class defines_flow_precision_index Enum value type for flow_precision_index

---@class group_state
---@field attacking_distraction defines_group_state
---@field attacking_target defines_group_state
---@field finished defines_group_state
---@field gathering defines_group_state
---@field moving defines_group_state
---@field pathfinding defines_group_state
---@field wander_in_group defines_group_state

---@class defines_group_state Enum value type for group_state

---@class gui_type
---@field achievement defines_gui_type
---@field blueprint_library defines_gui_type
---@field bonus defines_gui_type
---@field controller defines_gui_type
---@field custom defines_gui_type
---@field entity defines_gui_type
---@field equipment defines_gui_type
---@field item defines_gui_type
---@field logistic defines_gui_type
---@field none defines_gui_type
---@field other_player defines_gui_type
---@field permissions defines_gui_type
---@field player_management defines_gui_type
---@field production defines_gui_type
---@field research defines_gui_type
---@field server_management defines_gui_type
---@field tile defines_gui_type
---@field trains defines_gui_type
---@field tutorials defines_gui_type

---@class defines_gui_type Enum value type for gui_type

---@class input_action
---@field activate_copy defines_input_action
---@field activate_cut defines_input_action
---@field activate_paste defines_input_action
---@field add_permission_group defines_input_action
---@field add_train_station defines_input_action
---@field admin_action defines_input_action
---@field alt_select_area defines_input_action
---@field alt_select_blueprint_entities defines_input_action
---@field alternative_copy defines_input_action
---@field begin_mining defines_input_action
---@field begin_mining_terrain defines_input_action
---@field build defines_input_action
---@field build_rail defines_input_action
---@field build_terrain defines_input_action
---@field cancel_craft defines_input_action
---@field cancel_deconstruct defines_input_action
---@field cancel_new_blueprint defines_input_action
---@field cancel_research defines_input_action
---@field cancel_upgrade defines_input_action
---@field change_active_character_tab defines_input_action
---@field change_active_item_group_for_crafting defines_input_action
---@field change_active_item_group_for_filters defines_input_action
---@field change_active_quick_bar defines_input_action
---@field change_arithmetic_combinator_parameters defines_input_action
---@field change_decider_combinator_parameters defines_input_action
---@field change_entity_label defines_input_action
---@field change_item_description defines_input_action
---@field change_item_label defines_input_action
---@field change_multiplayer_config defines_input_action
---@field change_picking_state defines_input_action
---@field change_programmable_speaker_alert_parameters defines_input_action
---@field change_programmable_speaker_circuit_parameters defines_input_action
---@field change_programmable_speaker_parameters defines_input_action
---@field change_riding_state defines_input_action
---@field change_shooting_state defines_input_action
---@field change_train_stop_station defines_input_action
---@field change_train_wait_condition defines_input_action
---@field change_train_wait_condition_data defines_input_action
---@field clear_cursor defines_input_action
---@field connect_rolling_stock defines_input_action
---@field copy defines_input_action
---@field copy_entity_settings defines_input_action
---@field copy_opened_blueprint defines_input_action
---@field copy_opened_item defines_input_action
---@field craft defines_input_action
---@field cursor_split defines_input_action
---@field cursor_transfer defines_input_action
---@field custom_input defines_input_action
---@field cycle_blueprint_book_backwards defines_input_action
---@field cycle_blueprint_book_forwards defines_input_action
---@field deconstruct defines_input_action
---@field delete_blueprint_library defines_input_action
---@field delete_blueprint_record defines_input_action
---@field delete_custom_tag defines_input_action
---@field delete_permission_group defines_input_action
---@field destroy_item defines_input_action
---@field destroy_opened_item defines_input_action
---@field disconnect_rolling_stock defines_input_action
---@field drag_train_schedule defines_input_action
---@field drag_train_wait_condition defines_input_action
---@field drop_blueprint_record defines_input_action
---@field drop_item defines_input_action
---@field edit_blueprint_tool_preview defines_input_action
---@field edit_custom_tag defines_input_action
---@field edit_permission_group defines_input_action
---@field export_blueprint defines_input_action
---@field fast_entity_split defines_input_action
---@field fast_entity_transfer defines_input_action
---@field flush_opened_entity_fluid defines_input_action
---@field flush_opened_entity_specific_fluid defines_input_action
---@field go_to_train_station defines_input_action
---@field grab_blueprint_record defines_input_action
---@field gui_checked_state_changed defines_input_action
---@field gui_click defines_input_action
---@field gui_confirmed defines_input_action
---@field gui_elem_changed defines_input_action
---@field gui_location_changed defines_input_action
---@field gui_selected_tab_changed defines_input_action
---@field gui_selection_state_changed defines_input_action
---@field gui_switch_state_changed defines_input_action
---@field gui_text_changed defines_input_action
---@field gui_value_changed defines_input_action
---@field import_blueprint defines_input_action
---@field import_blueprint_string defines_input_action
---@field import_blueprints_filtered defines_input_action
---@field import_permissions_string defines_input_action
---@field inventory_split defines_input_action
---@field inventory_transfer defines_input_action
---@field launch_rocket defines_input_action
---@field lua_shortcut defines_input_action
---@field map_editor_action defines_input_action
---@field market_offer defines_input_action
---@field mod_settings_changed defines_input_action
---@field open_achievements_gui defines_input_action
---@field open_blueprint_library_gui defines_input_action
---@field open_blueprint_record defines_input_action
---@field open_bonus_gui defines_input_action
---@field open_character_gui defines_input_action
---@field open_current_vehicle_gui defines_input_action
---@field open_equipment defines_input_action
---@field open_gui defines_input_action
---@field open_item defines_input_action
---@field open_logistic_gui defines_input_action
---@field open_mod_item defines_input_action
---@field open_parent_of_opened_item defines_input_action
---@field open_production_gui defines_input_action
---@field open_technology_gui defines_input_action
---@field open_tips_and_tricks_gui defines_input_action
---@field open_train_gui defines_input_action
---@field open_train_station_gui defines_input_action
---@field open_trains_gui defines_input_action
---@field paste_entity_settings defines_input_action
---@field place_equipment defines_input_action
---@field quick_bar_pick_slot defines_input_action
---@field quick_bar_set_selected_page defines_input_action
---@field quick_bar_set_slot defines_input_action
---@field reassign_blueprint defines_input_action
---@field remove_cables defines_input_action
---@field remove_train_station defines_input_action
---@field reset_assembling_machine defines_input_action
---@field reset_item defines_input_action
---@field rotate_entity defines_input_action
---@field select_area defines_input_action
---@field select_blueprint_entities defines_input_action
---@field select_entity_slot defines_input_action
---@field select_item defines_input_action
---@field select_mapper_slot defines_input_action
---@field select_next_valid_gun defines_input_action
---@field select_tile_slot defines_input_action
---@field send_spidertron defines_input_action
---@field set_auto_launch_rocket defines_input_action
---@field set_autosort_inventory defines_input_action
---@field set_behavior_mode defines_input_action
---@field set_car_weapons_control defines_input_action
---@field set_circuit_condition defines_input_action
---@field set_circuit_mode_of_operation defines_input_action
---@field set_controller_logistic_trash_filter_item defines_input_action
---@field set_deconstruction_item_tile_selection_mode defines_input_action
---@field set_deconstruction_item_trees_and_rocks_only defines_input_action
---@field set_entity_color defines_input_action
---@field set_entity_energy_property defines_input_action
---@field set_entity_logistic_trash_filter_item defines_input_action
---@field set_filter defines_input_action
---@field set_flat_controller_gui defines_input_action
---@field set_heat_interface_mode defines_input_action
---@field set_heat_interface_temperature defines_input_action
---@field set_infinity_container_filter_item defines_input_action
---@field set_infinity_container_remove_unfiltered_items defines_input_action
---@field set_infinity_pipe_filter defines_input_action
---@field set_inserter_max_stack_size defines_input_action
---@field set_inventory_bar defines_input_action
---@field set_linked_container_link_i_d defines_input_action
---@field set_logistic_filter_item defines_input_action
---@field set_logistic_filter_signal defines_input_action
---@field set_player_color defines_input_action
---@field set_recipe_notifications defines_input_action
---@field set_request_from_buffers defines_input_action
---@field set_research_finished_stops_game defines_input_action
---@field set_signal defines_input_action
---@field set_splitter_priority defines_input_action
---@field set_train_stopped defines_input_action
---@field set_trains_limit defines_input_action
---@field set_vehicle_automatic_targeting_parameters defines_input_action
---@field setup_assembling_machine defines_input_action
---@field setup_blueprint defines_input_action
---@field setup_single_blueprint_record defines_input_action
---@field smart_pipette defines_input_action
---@field spawn_item defines_input_action
---@field stack_split defines_input_action
---@field stack_transfer defines_input_action
---@field start_repair defines_input_action
---@field start_research defines_input_action
---@field start_walking defines_input_action
---@field stop_building_by_moving defines_input_action
---@field switch_connect_to_logistic_network defines_input_action
---@field switch_constant_combinator_state defines_input_action
---@field switch_inserter_filter_mode_state defines_input_action
---@field switch_power_switch_state defines_input_action
---@field switch_to_rename_stop_gui defines_input_action
---@field take_equipment defines_input_action
---@field toggle_deconstruction_item_entity_filter_mode defines_input_action
---@field toggle_deconstruction_item_tile_filter_mode defines_input_action
---@field toggle_driving defines_input_action
---@field toggle_enable_vehicle_logistics_while_moving defines_input_action
---@field toggle_entity_logistic_requests defines_input_action
---@field toggle_equipment_movement_bonus defines_input_action
---@field toggle_map_editor defines_input_action
---@field toggle_personal_logistic_requests defines_input_action
---@field toggle_personal_roboport defines_input_action
---@field toggle_show_entity_info defines_input_action
---@field translate_string defines_input_action
---@field undo defines_input_action
---@field upgrade defines_input_action
---@field upgrade_opened_blueprint_by_item defines_input_action
---@field upgrade_opened_blueprint_by_record defines_input_action
---@field use_artillery_remote defines_input_action
---@field use_item defines_input_action
---@field wire_dragging defines_input_action
---@field write_to_console defines_input_action

---@class defines_input_action Enum value type for input_action

---@class inventory
---@field artillery_turret_ammo defines_inventory
---@field artillery_wagon_ammo defines_inventory
---@field assembling_machine_input defines_inventory
---@field assembling_machine_modules defines_inventory
---@field assembling_machine_output defines_inventory
---@field beacon_modules defines_inventory
---@field burnt_result defines_inventory
---@field car_ammo defines_inventory
---@field car_trunk defines_inventory
---@field cargo_wagon defines_inventory
---@field character_ammo defines_inventory
---@field character_armor defines_inventory
---@field character_corpse defines_inventory
---@field character_guns defines_inventory
---@field character_main defines_inventory
---@field character_trash defines_inventory
---@field character_vehicle defines_inventory
---@field chest defines_inventory
---@field editor_ammo defines_inventory
---@field editor_armor defines_inventory
---@field editor_guns defines_inventory
---@field editor_main defines_inventory
---@field fuel defines_inventory
---@field furnace_modules defines_inventory
---@field furnace_result defines_inventory
---@field furnace_source defines_inventory
---@field god_main defines_inventory
---@field item_main defines_inventory
---@field lab_input defines_inventory
---@field lab_modules defines_inventory
---@field mining_drill_modules defines_inventory
---@field roboport_material defines_inventory
---@field roboport_robot defines_inventory
---@field robot_cargo defines_inventory
---@field robot_repair defines_inventory
---@field rocket defines_inventory
---@field rocket_silo_result defines_inventory
---@field rocket_silo_rocket defines_inventory
---@field spider_ammo defines_inventory
---@field spider_trash defines_inventory
---@field spider_trunk defines_inventory
---@field turret_ammo defines_inventory

---@class defines_inventory Enum value type for inventory

---@class logistic_member_index
---@field character_provider defines_logistic_member_index
---@field character_requester defines_logistic_member_index
---@field character_storage defines_logistic_member_index
---@field generic_on_off_behavior defines_logistic_member_index
---@field logistic_container defines_logistic_member_index
---@field vehicle_storage defines_logistic_member_index

---@class defines_logistic_member_index Enum value type for logistic_member_index

---@class logistic_mode
---@field active_provider defines_logistic_mode
---@field buffer defines_logistic_mode
---@field none defines_logistic_mode
---@field passive_provider defines_logistic_mode
---@field requester defines_logistic_mode
---@field storage defines_logistic_mode

---@class defines_logistic_mode Enum value type for logistic_mode

---@class mouse_button_type
---@field left defines_mouse_button_type
---@field middle defines_mouse_button_type
---@field none defines_mouse_button_type
---@field right defines_mouse_button_type

---@class defines_mouse_button_type Enum value type for mouse_button_type

---@class rail_connection_direction
---@field left defines_rail_connection_direction
---@field none defines_rail_connection_direction
---@field right defines_rail_connection_direction
---@field straight defines_rail_connection_direction

---@class defines_rail_connection_direction Enum value type for rail_connection_direction

---@class rail_direction
---@field back defines_rail_direction
---@field front defines_rail_direction

---@class defines_rail_direction Enum value type for rail_direction

---@class relative_gui_position
---@field bottom defines_relative_gui_position
---@field left defines_relative_gui_position
---@field right defines_relative_gui_position
---@field top defines_relative_gui_position

---@class defines_relative_gui_position Enum value type for relative_gui_position

---@class relative_gui_type
---@field accumulator_gui defines_relative_gui_type
---@field achievement_gui defines_relative_gui_type
---@field additional_entity_info_gui defines_relative_gui_type
---@field admin_gui defines_relative_gui_type
---@field arithmetic_combinator_gui defines_relative_gui_type
---@field armor_gui defines_relative_gui_type
---@field assembling_machine_gui defines_relative_gui_type
---@field assembling_machine_select_recipe_gui defines_relative_gui_type
---@field beacon_gui defines_relative_gui_type
---@field blueprint_book_gui defines_relative_gui_type
---@field blueprint_library_gui defines_relative_gui_type
---@field blueprint_setup_gui defines_relative_gui_type
---@field bonus_gui defines_relative_gui_type
---@field burner_equipment_gui defines_relative_gui_type
---@field car_gui defines_relative_gui_type
---@field constant_combinator_gui defines_relative_gui_type
---@field container_gui defines_relative_gui_type
---@field controller_gui defines_relative_gui_type
---@field decider_combinator_gui defines_relative_gui_type
---@field deconstruction_item_gui defines_relative_gui_type
---@field electric_energy_interface_gui defines_relative_gui_type
---@field electric_network_gui defines_relative_gui_type
---@field entity_variations_gui defines_relative_gui_type
---@field entity_with_energy_source_gui defines_relative_gui_type
---@field equipment_grid_gui defines_relative_gui_type
---@field furnace_gui defines_relative_gui_type
---@field generic_on_off_entity_gui defines_relative_gui_type
---@field heat_interface_gui defines_relative_gui_type
---@field infinity_pipe_gui defines_relative_gui_type
---@field inserter_gui defines_relative_gui_type
---@field item_with_inventory_gui defines_relative_gui_type
---@field lab_gui defines_relative_gui_type
---@field lamp_gui defines_relative_gui_type
---@field linked_container_gui defines_relative_gui_type
---@field loader_gui defines_relative_gui_type
---@field logistic_gui defines_relative_gui_type
---@field market_gui defines_relative_gui_type
---@field mining_drill_gui defines_relative_gui_type
---@field other_player_gui defines_relative_gui_type
---@field permissions_gui defines_relative_gui_type
---@field pipe_gui defines_relative_gui_type
---@field power_switch_gui defines_relative_gui_type
---@field production_gui defines_relative_gui_type
---@field programmable_speaker_gui defines_relative_gui_type
---@field rail_chain_signal_gui defines_relative_gui_type
---@field rail_signal_gui defines_relative_gui_type
---@field reactor_gui defines_relative_gui_type
---@field rename_stop_gui defines_relative_gui_type
---@field resource_entity_gui defines_relative_gui_type
---@field roboport_gui defines_relative_gui_type
---@field rocket_silo_gui defines_relative_gui_type
---@field server_config_gui defines_relative_gui_type
---@field spider_vehicle_gui defines_relative_gui_type
---@field splitter_gui defines_relative_gui_type
---@field standalone_character_gui defines_relative_gui_type
---@field storage_tank_gui defines_relative_gui_type
---@field tile_variations_gui defines_relative_gui_type
---@field train_gui defines_relative_gui_type
---@field train_stop_gui defines_relative_gui_type
---@field trains_gui defines_relative_gui_type
---@field transport_belt_gui defines_relative_gui_type
---@field upgrade_item_gui defines_relative_gui_type
---@field wall_gui defines_relative_gui_type

---@class defines_relative_gui_type Enum value type for relative_gui_type

---@class render_mode
---@field chart defines_render_mode
---@field chart_zoomed_in defines_render_mode
---@field game defines_render_mode

---@class defines_render_mode Enum value type for render_mode

---@class rich_text_setting
---@field disabled defines_rich_text_setting
---@field enabled defines_rich_text_setting
---@field highlight defines_rich_text_setting

---@class defines_rich_text_setting Enum value type for rich_text_setting

---@class riding
---@field acceleration acceleration
---@field direction direction

---@class acceleration
---@field accelerating defines_riding_acceleration
---@field braking defines_riding_acceleration
---@field nothing defines_riding_acceleration
---@field reversing defines_riding_acceleration

---@class defines_riding_acceleration Enum value type for acceleration

---@class direction
---@field left defines_riding_direction
---@field right defines_riding_direction
---@field straight defines_riding_direction

---@class defines_riding_direction Enum value type for direction

---@class shooting
---@field not_shooting defines_shooting
---@field shooting_enemies defines_shooting
---@field shooting_selected defines_shooting

---@class defines_shooting Enum value type for shooting

---@class signal_state State of an ordinary rail signal.
---@field closed defines_signal_state Red.
---@field open defines_signal_state Green.
---@field reserved defines_signal_state Orange.
---@field reserved_by_circuit_network defines_signal_state Red - From circuit network.

---@class defines_signal_state Enum value type for signal_state

---@class train_state
---@field arrive_signal defines_train_state Braking before a rail signal.
---@field arrive_station defines_train_state Braking before a station.
---@field destination_full defines_train_state Same as no_path but all candidate train stops are full
---@field manual_control defines_train_state Can move if user explicitly sits in and rides the train.
---@field manual_control_stop defines_train_state Switched to manual control and has to stop.
---@field no_path defines_train_state Has no path and is stopped.
---@field no_schedule defines_train_state Doesn't have anywhere to go.
---@field on_the_path defines_train_state Normal state -- following the path.
---@field path_lost defines_train_state Had path and lost it -- must stop.
---@field wait_signal defines_train_state Waiting at a signal.
---@field wait_station defines_train_state Waiting at a station.

---@class defines_train_state Enum value type for train_state

---@class transport_line
---@field left_line defines_transport_line
---@field left_split_line defines_transport_line
---@field left_underground_line defines_transport_line
---@field right_line defines_transport_line
---@field right_split_line defines_transport_line
---@field right_underground_line defines_transport_line
---@field secondary_left_line defines_transport_line
---@field secondary_left_split_line defines_transport_line
---@field secondary_right_line defines_transport_line
---@field secondary_right_split_line defines_transport_line

---@class defines_transport_line Enum value type for transport_line

---@class wire_connection_id
---@field electric_pole defines_wire_connection_id
---@field power_switch_left defines_wire_connection_id
---@field power_switch_right defines_wire_connection_id

---@class defines_wire_connection_id Enum value type for wire_connection_id

---@class wire_type
---@field copper defines_wire_type
---@field green defines_wire_type
---@field red defines_wire_type

---@class defines_wire_type Enum value type for wire_type
