# TOPIC - QUEST FLOW

# Understanding the column names and purposes
Heads Up: i usually don't have the idea on the other names but i will give my understanding on these few column names

- `quest_flow_end_trig` (UINT8) - i have no knowledge for this
- `quest_flow_time_limit` (UINT16) - i have no knowledge for this
- `quest_flow_start_eventscript` (INT8) - maybe its related to `god_g001_Demo`?
- `quest_flow_end_eventscript` (INT8) - maybe its related to `god_g001_Demo`?
- `quest_flow_enemy_id` (UINT16) - unknown, but possibly related to the enemy IDs?
- `quest_flow_enemy_count` (UINT16) - unknown, ut possiblt related to enemy counts (spawn count?)
- `quest_flow_quest_en_id_array` (UINT16) -  related to aragamis
- `quest_flow_quest_en_flag_array` (UINT16) -  related to aragamis, but if one of those IDs are in there, they are part of the main target.. im just guessing
- `quest_flow_quest_en_volume` (ASCII) - there are 8 of them, they serve as a spawn point location for each aragamis i cant say how many spawn points are there since maps have different spawn areas
   and i never really understand them, but they use `FIX_Enemy_Entry_` as name for the spawnpoint.
- `quest_flow_quest_en_num` (UINT8) - required amount to kill and to finish the mission.
- `quest_flow_quest_volume_type_array` (UINT8) - i have no knowledge for this
- `quest_flow_quest_volume_1` (ASCII) - i have no knowledge for this
- `quest_flow_quest_volume_num` (UINT8)- unsure about this purpose, but i can think its related to `quest_flow_quest_en_volume`
- `quest_flow_start_delay` (UINT16) - when the mission starts, there will be delay on the quest (rather a somekind of delay spawn?)
- `quest_flow_entry_delay_array` (UINT16) - aragamis spawning entry value, if increased, they spawn atleast for a while instead of an instant.

![Screenshot (105)](https://github.com/nachotacos69/WikiEater/assets/99103531/9828cdc4-5fd4-435c-8eb9-ce5fdbee40e6)

**END OF PAGE**
