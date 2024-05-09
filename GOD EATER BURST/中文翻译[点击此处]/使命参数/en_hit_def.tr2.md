# 主题 - 荒神命中防御参数

# 选择一个特定的任务
- 有些任务有这个标签
   + `_Mission`（基于第一个噬神者的常规任务）
   + `_TutorialMission`（教程任务）
   + `_DLCMission` （据我所知，这是基于 GOD EATER 的 DLC，现在是 GOD EATER BURST 任务的一部分）
   + `_PlusMission` （我认为这是实际的 GODS EATER BURST 实际任务）
   + `_ChallengeMission` 和 `_TrialChallengeMission` （挑战任务）
   + 要识别任务，请检查“en_base”、“progress_info”文件夹及其内部的文本文件
     + 记住荒神列表以及它是否与任务地点匹配
       （例如仁慈之城中的 1 腐蚀汉尼拔 1 汉尼拔），该任务是 Anantaboga
注意：您可能会问，DLC 任务在哪里，我很高兴您问... **没有。** 因为我们只触及基础游戏
当前没有工具可以解开《GOD EATER BURST》中的所有 dlc 任务，这确实令人难过。
注意 2：始终复制该任务文件夹，以防出现问题

＃ 初始点
- 打开HxD、Notepad++和TR2 Editor工具查看任务列表 `\system\god_menu\god_game\god_g999_Base\default_db\mission.tr2`
- 找到您要编辑的任务并记住其编号（检查任务行）
   +我将使用 `248_Church_PlusMission16` 作为我们的测试虚拟人，用于这个又名 **Welkin 中的真月** 任务
     + 任务 ID 是“20248”，这有点令人困惑，因为还有另一个 248 的列表，但请记住
       您可以根据“en_base”、“progress_info”文件夹及其位置 + aragami 列表仔细检查并确认要编辑的任务
       文本文件。
- 然后在该文件夹中使用您正在使用的 TR2 编辑器打开 `en_hit_def.tr2`


# 了解列名和用途
注意：我通常不知道其他名称，但我会给出我对这几个列名称的理解

- `en_hit_defence_ascii_name` (ASCII) - aragami 命中防御名称..就是这样
- `en_defence_id` (UINT16) - 击中防御ID..我没什么能学到的
- `en_defence_id_timing_array` - 他们的列表是不同的，通常是短列表或长列表取决于aragami的东西。 我不知道他们的目的

![Screenshot (98)](https://github.com/nachotacos69/WikiEater/assets/99103531/2dcc9468-99e6-421a-aea2-4c02da8ce44c)


**END OF PAGE**
