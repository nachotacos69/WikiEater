# 主题 - 任务流程

# 了解列名和用途
注意：我通常不知道其他名称，但我会给出我对这几个列名称的理解

- `quest_flow_end_trig` (UINT8) - 我对此一无所知
- `quest_flow_time_limit` (UINT16) - 我对此一无所知
- `quest_flow_start_eventscript` (INT8) - 也许与 `god_g001_Demo` 或 `_TutorialMission` 有关？
- `quest_flow_end_eventscript` (INT8) - 也许与 `god_g001_Demo` 或 `_TutorialMission` 有关？
- `quest_flow_enemy_id` (UINT16) - 未知，但可能与敌人 ID 有关？
- `quest_flow_enemy_count` (UINT16) - 生成的阿拉加米总数？ 默认值为零，但当任务需要杀死多个阿拉加米时会发生变化，并且每个生成只会由于“quest_flow_quest_en_num”值而受到限制（我的猜测/理论）
- `quest_flow_quest_en_id_array` (UINT16) - 与 aragamis 相关
- `quest_flow_quest_en_flag_array` (UINT16) - 与 aragamis 相关，但如果其中一个 ID 在那里，它们就是主要目标的一部分..我只是猜测
- `quest_flow_quest_en_volume` (ASCII) - 其中有 8 个，它们充当每个阿拉加米的生成点位置，我不能说有多少个生成点，因为地图有不同的生成区域
    我从来没有真正理解它们，但它们使用“FIX_Enemy_Entry_”作为生成点的名称。 显然`EP108_Enemy_Entry_0001`仅用于任务ID 108
- `quest_flow_quest_en_num` (UINT8) - 将生成的敌人数量，值可能从 1 到 4 不等。如果 `quest_flow_enemy_count` 为 0，那么我可以认为生成的阿拉加米的唯一数量基于 `quest_flow_quest_en_num` 的值 ，如果 `quest_flow_enemy_count` 的值为“例如 30”，它仍然会根据 `quest_flow_quest_en_num` 值生成，但如果你杀死一个荒神，它会生成另一个荒神。 （以那个任务为例，你杀死了30个蚩尤）（我的猜测/理论）
- `quest_flow_quest_volume_type_array` (UINT8) - 我对此一无所知
- `quest_flow_quest_volume_1` (ASCII) - 我对此一无所知
- `quest_flow_quest_volume_num` (UINT8)- 不确定这个目的，但我认为它与 `quest_flow_quest_en_volume` 有关
- `quest_flow_start_delay` (UINT16) - 当任务开始时，荒神生成会有延迟
- `quest_flow_entry_delay_array` (UINT16) - 阿拉加米生成条目值，通常与次级阿拉加米相关，如果增加，它们至少生成一段时间而不是瞬间。

![Screenshot (105)](https://github.com/nachotacos69/WikiEater/assets/99103531/9828cdc4-5fd4-435c-8eb9-ce5fdbee40e6)

**END OF PAGE**
