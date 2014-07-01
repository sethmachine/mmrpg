//! import "C:\Users\seth\mmrpg\code\jass\constants\constants_library.j"
//! import "C:\Users\seth\mmrpg\code\jass\constants\tables\attributes_table.j"
//! import "C:\Users\seth\mmrpg\code\jass\constants\tables\consumables_constants.j"
//! import "C:\Users\seth\mmrpg\code\jass\constants\tables\events_constants.j"
//! import "C:\Users\seth\mmrpg\code\jass\constants\tables\fetchables_constants.j"
//! import "C:\Users\seth\mmrpg\code\jass\constants\tables\monsters_constants.j"
//! import "C:\Users\seth\mmrpg\code\jass\constants\tables\monster_item_constants.j"
//! import "C:\Users\seth\mmrpg\code\jass\constants\tables\npc_hero_constants.j"
//! import "C:\Users\seth\mmrpg\code\jass\constants\tables\npc_hero_id_constants.j"
//! import "C:\Users\seth\mmrpg\code\jass\constants\tables\npc_unit_constants.j"
//! import "C:\Users\seth\mmrpg\code\jass\constants\tables\npc_unit_id_constants.j"
//! import "C:\Users\seth\mmrpg\code\jass\constants\tables\quests_constants.j"
//! import "C:\Users\seth\mmrpg\code\jass\constants\tables\reward_constants.j"
//! import "C:\Users\seth\mmrpg\code\jass\constants\tables\story_constants.j"
//! import "C:\Users\seth\mmrpg\code\jass\constants\tables\warps_constants.j"
//! import "C:\Users\seth\mmrpg\code\jass\constants\tables\warp_id_constants.j"
//! import "C:\Users\seth\mmrpg\code\jass\constants\values\destructables.j"
//! import "C:\Users\seth\mmrpg\code\jass\constants\values\locations.j"
//! import "C:\Users\seth\mmrpg\code\jass\constants\values\main_city.j"
//! import "C:\Users\seth\mmrpg\code\jass\constants\values\rects.j"
//! import "C:\Users\seth\mmrpg\code\jass\constants\values\sounds.j"
//! import "C:\Users\seth\mmrpg\code\jass\constants\values\units.j"
//! import "C:\Users\seth\mmrpg\code\jass\help\f9_insert.j"
//! import "C:\Users\seth\mmrpg\code\jass\structs\ability_struct\ability_ids.j"
//! import "C:\Users\seth\mmrpg\code\jass\structs\ability_struct\ability_struct.j"
//! import "C:\Users\seth\mmrpg\code\jass\structs\ability_struct\ability_table.j"
//! import "C:\Users\seth\mmrpg\code\jass\structs\creep_structs\creep_region_struct.j"
//! import "C:\Users\seth\mmrpg\code\jass\structs\creep_structs\creep_region_table.j"
//! import "C:\Users\seth\mmrpg\code\jass\structs\creep_structs\creep_remove_timer.j"
//! import "C:\Users\seth\mmrpg\code\jass\structs\creep_structs\creep_spawn_timer.j"
//! import "C:\Users\seth\mmrpg\code\jass\structs\creep_structs\creep_tables.j"
//! import "C:\Users\seth\mmrpg\code\jass\structs\creep_structs\creep_table_struct.j"
//! import "C:\Users\seth\mmrpg\code\jass\structs\creep_structs\creep_wander_add.j"
//! import "C:\Users\seth\mmrpg\code\jass\structs\creep_structs\creep_wander_remove.j"
//! import "C:\Users\seth\mmrpg\code\jass\structs\event_struct\events\effect\sfx_in_circle_at_pc.j"
//! import "C:\Users\seth\mmrpg\code\jass\structs\event_struct\events\item\item_create_at_loc.j"
//! import "C:\Users\seth\mmrpg\code\jass\structs\event_struct\events\item\item_create_at_pc.j"
//! import "C:\Users\seth\mmrpg\code\jass\structs\event_struct\events\item\item_create_in_rect.j"
//! import "C:\Users\seth\mmrpg\code\jass\structs\event_struct\events\quest\enable_quest.j"
//! import "C:\Users\seth\mmrpg\code\jass\structs\event_struct\events\tint\water_set_tint.j"
//! import "C:\Users\seth\mmrpg\code\jass\structs\event_struct\events\unit\creep_spawn_at_loc.j"
//! import "C:\Users\seth\mmrpg\code\jass\structs\event_struct\events\unit\creep_spawn_at_pc.j"
//! import "C:\Users\seth\mmrpg\code\jass\structs\event_struct\events\warp\set_warp.j"
//! import "C:\Users\seth\mmrpg\code\jass\structs\event_struct\event_insert.j"
//! import "C:\Users\seth\mmrpg\code\jass\structs\event_struct\event_struct.j"
//! import "C:\Users\seth\mmrpg\code\jass\structs\goal_struct\goal_struct.j"
//! import "C:\Users\seth\mmrpg\code\jass\structs\item_struct\item_group_struct.j"
//! import "C:\Users\seth\mmrpg\code\jass\structs\item_struct\item_move.j"
//! import "C:\Users\seth\mmrpg\code\jass\structs\item_struct\item_protect.j"
//! import "C:\Users\seth\mmrpg\code\jass\structs\item_struct\item_struct.j"
//! import "C:\Users\seth\mmrpg\code\jass\structs\magic_key_struct\magic_key_group_struct.j"
//! import "C:\Users\seth\mmrpg\code\jass\structs\magic_key_struct\magic_key_struct.j"
//! import "C:\Users\seth\mmrpg\code\jass\structs\magic_key_struct\magic_key_table.j"
//! import "C:\Users\seth\mmrpg\code\jass\structs\magic_key_struct\portal_trig.j"
//! import "C:\Users\seth\mmrpg\code\jass\structs\monster_struct\abstract_monster_insert.j"
//! import "C:\Users\seth\mmrpg\code\jass\structs\monster_struct\abstract_monster_struct.j"
//! import "C:\Users\seth\mmrpg\code\jass\structs\monster_struct\monster_family_name_table.j"
//! import "C:\Users\seth\mmrpg\code\jass\structs\monster_struct\monster_group_struct.j"
//! import "C:\Users\seth\mmrpg\code\jass\structs\monster_struct\monster_struct.j"
//! import "C:\Users\seth\mmrpg\code\jass\structs\npc_structs\backpack\backpack_interact.j"
//! import "C:\Users\seth\mmrpg\code\jass\structs\npc_structs\backpack\backpack_struct.j"
//! import "C:\Users\seth\mmrpg\code\jass\structs\npc_structs\npcs\bank_struct.j"
//! import "C:\Users\seth\mmrpg\code\jass\structs\npc_structs\npcs\chaplain_struct.j"
//! import "C:\Users\seth\mmrpg\code\jass\structs\npc_structs\npcs\farmer_struct.j"
//! import "C:\Users\seth\mmrpg\code\jass\structs\npc_structs\npcs\inn_struct.j"
//! import "C:\Users\seth\mmrpg\code\jass\structs\npc_structs\npcs\isaiah_struct.j"
//! import "C:\Users\seth\mmrpg\code\jass\structs\npc_structs\npcs\priest_struct.j"
//! import "C:\Users\seth\mmrpg\code\jass\structs\npc_structs\npcs\tombstone_struct.j"
//! import "C:\Users\seth\mmrpg\code\jass\structs\npc_structs\npc_init.j"
//! import "C:\Users\seth\mmrpg\code\jass\structs\npc_structs\npc_struct.j"
//! import "C:\Users\seth\mmrpg\code\jass\structs\player_structs\pc_struct.j"
//! import "C:\Users\seth\mmrpg\code\jass\structs\player_structs\player_data_struct.j"
//! import "C:\Users\seth\mmrpg\code\jass\structs\player_structs\player_data_table.j"
//! import "C:\Users\seth\mmrpg\code\jass\structs\quest_struct\quest_insert.j"
//! import "C:\Users\seth\mmrpg\code\jass\structs\quest_struct\quest_struct.j"
//! import "C:\Users\seth\mmrpg\code\jass\structs\reward_struct\reward_insert.j"
//! import "C:\Users\seth\mmrpg\code\jass\structs\reward_struct\reward_struct.j"
//! import "C:\Users\seth\mmrpg\code\jass\structs\story_struct\story_insert.j"
//! import "C:\Users\seth\mmrpg\code\jass\structs\story_struct\story_struct.j"
//! import "C:\Users\seth\mmrpg\code\jass\structs\warp_struct\warp_insert.j"
//! import "C:\Users\seth\mmrpg\code\jass\structs\warp_struct\warp_struct.j"
//! import "C:\Users\seth\mmrpg\code\jass\systems\clear_items_sys\clear_items.j"
//! import "C:\Users\seth\mmrpg\code\jass\systems\clear_items_sys\world_bounds.j"
//! import "C:\Users\seth\mmrpg\code\jass\systems\creep_death_sys\creep_death.j"
//! import "C:\Users\seth\mmrpg\code\jass\systems\creep_death_sys\exp.j"
//! import "C:\Users\seth\mmrpg\code\jass\systems\creep_death_sys\feed.j"
//! import "C:\Users\seth\mmrpg\code\jass\systems\creep_death_sys\recruit.j"
//! import "C:\Users\seth\mmrpg\code\jass\systems\custom_spells_sys\attack.j"
//! import "C:\Users\seth\mmrpg\code\jass\systems\custom_spells_sys\show_quest_path.j"
//! import "C:\Users\seth\mmrpg\code\jass\systems\custom_spells_sys\staff.j"
//! import "C:\Users\seth\mmrpg\code\jass\systems\interact_sys\interact.j"
//! import "C:\Users\seth\mmrpg\code\jass\systems\interact_sys\interactable_interface.j"
//! import "C:\Users\seth\mmrpg\code\jass\systems\interact_sys\npc_unit_id_table_insert.j"
//! import "C:\Users\seth\mmrpg\code\jass\systems\level_up_sys\level_up.j"
//! import "C:\Users\seth\mmrpg\code\jass\systems\new_player_sys\pc_select.j"
//! import "C:\Users\seth\mmrpg\code\jass\systems\player_death_sys\player_death.j"
//! import "C:\Users\seth\mmrpg\code\jass\systems\rect_subset_sys\quad_struct.j"
//! import "C:\Users\seth\mmrpg\code\jass\systems\rect_subset_sys\rect_play.j"
//! import "C:\Users\seth\mmrpg\code\jass\systems\rect_subset_sys\rect_util.j"
//! import "C:\Users\seth\mmrpg\code\jass\systems\team_attack_sys\team_attack.j"
//! import "C:\Users\seth\mmrpg\code\jass\util\camera\test.j"
//! import "C:\Users\seth\mmrpg\code\jass\util\camera\zoom.j"
//! import "C:\Users\seth\mmrpg\code\jass\util\colors\colors.j"
//! import "C:\Users\seth\mmrpg\code\jass\util\data_structures\table.j"
//! import "C:\Users\seth\mmrpg\code\jass\util\debug\debug.j"
//! import "C:\Users\seth\mmrpg\code\jass\util\filters\player_filters.j"
//! import "C:\Users\seth\mmrpg\code\jass\util\loc\npc_loc.j"
//! import "C:\Users\seth\mmrpg\code\jass\util\loc\random_loc.j"
//! import "C:\Users\seth\mmrpg\code\jass\util\print\print.j"
//! import "C:\Users\seth\mmrpg\code\jass\util\util.j"
//! import "C:\Users\seth\mmrpg\code\jass\util\wait\real_wait.j"
