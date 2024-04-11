# TOPIC - MAP SALVAGE POINTS/AREAS
# Requirements
- Notepad ++
- HxD
- TR2 Editor from GEBUtils or from GECV
- GEBCS
- You gotta have a brain i suppose

# Picking a specific mission
- Some missions have this label
  + `_Mission` (Regular Missions based on the first GOD EATER)
  + `_TutorialMission` (Tutorial Missions)
  + `_DLCMission` (From what i can tell, this is based on GOD EATER's DLC now part of GODS EATER BURST Missions)
  + `_PlusMission` (i think this the actual GODS EATER BURST actual missions)
  + `_ChallengeMission` and `_TrialChallengeMission` (Challenge Missions)
  + to identify missions, check `en_base`, `progress_info` folder and the texts file inside of it
    + memorize the aragami lists and if it matches as well with the mission location
      (example 1 Corrosive hannibal 1 Hannibal in City of Mercy), that mission is Anantaboga
NOTE: you might ask, where's the DLC Missions, i'm glad you ask... **THERE IS NONE.** Since we are touching the base game only
there's no tool current to unpack all dlc missions in GODS EATER BURST, which is sad for real..
NOTE 2: Always make a copy of that mission folder in case something bad happens

# Starting Point
- Open HxD, Notepad++, and the TR2 Editor tool you desire to use to view the mission list `\system\god_menu\god_game\god_g999_Base\default_db\mission.tr2`
- Find the mission that you want to edit and memories its number (check mission row)
  +I will use `257_Building_ChallengeMission9` as our test dummy for this a.k.a **Anantaboga** mission
    + the ID of the mission is `20257`, which is kind of confusing since there's another list of 248 as well but always remember
      that you can double check and confirm the mission you want to edit based on its location + aragami list on the `en_base`, `progress_info` folder and its
      text file.
- afterwards inside that folder and open `dig.tr2` with the TR2 Editor that you're using
- Then drag the `dig.tr2` to HXD to open it


# What is dig?
 + after some i guess fiddling around with the file, its like your salvage points. the way they work is based on their weight... kind of like a rarity/percentage of drop points?

- `dig_volume_name` (ASCII) - the names of the salvages entry points, usually around 8 object entries, this will be empty for Aegis and
   Church of Memories.
- `dig_id_array` (INT16) - for each salvage points, they are randomized about 1 to 4 materials.. pretty simple. Their values can be found on `article.tr2`, located in `/system/god_menu/nodbg/`
- `dig_type_array` (UINT8) - usually value 11 or 10. For each salvage points, they are either **convertable salvage** or just **regular material**
- `dig_sub_type_array` (UINT8) - since they are zeros, i cannot document them
- `dig_weight_array` (UINT32) - this one acts like a chance/percentage rate of apperance, from 1 of those 4 materials, the game will decide
  what materials will appear on the mission based on that weight (which acts like a percentage here i suppose)


![Screenshot (92)](https://github.com/nachotacos69/WikiEater/assets/99103531/fc94d652-2443-4977-88b3-0fd186d8afa9)
![Screenshot (93)](https://github.com/nachotacos69/WikiEater/assets/99103531/edd66963-3229-432a-8a20-d23424efcb77)

VIDEO:
- in the first index, i triggered the third value of `dig_weight_array` in `MIN_Object_Entry_0001`, since there's two 25 weights, i named the third one **Rarity 25-1** so there's no confusion, and its a **regular material** since the third value of `dig_type_array` is **10**, if its **11**.. that would be a **convertable salvage**
![oof](https://github.com/nachotacos69/WikiEater/assets/99103531/045369eb-2275-42a4-8834-b30d817761e7)



**END OF PAGE**

