# 主题 - 地图打捞点/区域

# 选择一个特定的任务
- 有些任务有这个标签
   + `_Mission`（基于第一个噬神者的常规任务）
   + `_TutorialMission`（教程任务）
   + `_DLCMission` （据我所知，这是基于 GOD EATER 的 DLC，现在是 GODS EATER BURST 任务的一部分）
   + `_PlusMission` （我认为这是实际的 GOD EATER BURST 实际任务）
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
   +我将使用`257_Building_ChallengeMission9`作为我们的测试虚拟人来完成这个又名**Anantaboga**任务
     + 任务的 ID 是“20257”，这有点令人困惑，因为还有另一个 248 的列表，但请记住
       您可以根据“en_base”、“progress_info”文件夹及其位置 + aragami 列表仔细检查并确认要编辑的任务
       文本文件。
- 然后在该文件夹中使用您正在使用的 TR2 编辑器打开 `dig.tr2`
- 然后将 `dig.tr2` 拖到 HXD 将其打开


# 什么是挖掘？
  + 经过一些我猜想摆弄文件后，它就像你的抢救点。 他们的工作方式是基于他们的体重......有点像出现机会的稀有度/百分比？

- `dig_volume_name` (ASCII) - 打捞入口点的名称，通常大约 8 个对象条目，对于 Aegis 和
    记忆教堂。
- `dig_id_array` (INT16) - 对于每个打捞点，它们被随机分配大约 1 到 4 种材料..非常简单。 它们的值可以在位于“/system/god_menu/nodbg/”的“article.tr2”中找到
- `dig_type_array` (UINT8) - 通常值为 11 或 10。对于每个回收点，它们要么是**可转换的回收**，要么只是 **常规材料**
- `dig_sub_type_array` (UINT8) - 因为它们是零，所以我无法记录它们
- `dig_weight_array` (UINT32) - 这就像出现的机会/百分比，从这 4 种材料中的一种，游戏将决定
   根据该重量，哪些材料将出现在任务中（我想这就像一个百分比）

![Screenshot (92)](https://github.com/nachotacos69/WikiEater/assets/99103531/fc94d652-2443-4977-88b3-0fd186d8afa9)
![Screenshot (93)](https://github.com/nachotacos69/WikiEater/assets/99103531/edd66963-3229-432a-8a20-d23424efcb77)

视频：
- 在第一个索引中，我触发了 `MIN_Object_Entry_0001` 中 `dig_weight_array` 的第三个值，因为有两个 25 权重，所以我将第三个值命名为 **Rarity 25-1**，这样就不会造成混淆，并且它是一个 **常规值 材料**，因为`dig_type_array`的第三个值是**10**，如果它**11**..那将是**可转换的回收**

![oof](https://github.com/nachotacos69/WikiEater/assets/99103531/045369eb-2275-42a4-8834-b30d817761e7)



**END OF PAGE**

