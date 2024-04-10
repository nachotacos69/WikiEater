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
  +I will use `248_Church_PlusMission16` as our test dummy for this a.k.a **True Moon in the Welkin** mission
    + the ID of the mission is `20248`, which is kind of confusing since there's another list of 248 as well but always remember
      that you can double check and confirm the mission you want to edit based on its location + aragami list on the `en_base`, `progress_info` folder and its
      text file.
- afterwards inside that folder and open `en_base.tr2` with the TR2 Editor that you're using


  ![image](https://github.com/nachotacos69/WikiEater/assets/99103531/4b01740f-fdf5-4367-ad70-5b6bed0a3b9e)


* Question: Why do you have multiple TR2 Editors yamato?
* Answer: The right part is the mission list, where i check the mission names and their ID's.. In the bottom left is `en_base.tr2` of the mission that im editing, although that editor doesnt see `FLOAT 32` and `UINT` stuff.. And the top left is another TR2 Editor but its actually for `GOD EATER RESURRECTION` and `GOD EATER 2 Rage Burst`, i use it just to view `en_base.tr2` `Float32` and `UINT` areas.


- Then drag the `en_base.tr2` t HXD to open it

![image](https://github.com/nachotacos69/WikiEater/assets/99103531/15d63c28-5a33-4e36-807b-81b80d9d08a3)

# Understanding the column names and purposes
Heads Up: i usually don't have the idea on the other names but i will give my understanding on these few column names

- `en_base_name` (ASCII) - this is aragami's name but in a different way, i dont know much about it but i see it on aragami bullet names as well
- `en_base_res_name` (ASCII) - this is the aragami's resource name i believe since inside of the mission `248_Church_PlusMission16` folder, it has `MS_010C_black`
  folder and its `.xml` and `.res` files too
- `en_base_display_name` (UTF-8) - The aragami's name that displays on screen except on `Mission Check` tab i believe.
- `en_base_entry_limit` (UINT8) - from what i can tell, since it says **entry** this is either some kind of limitation for aragami's spawn limit?
- `en_base_hp` (UINT32) - consider that aragamis have bond parts, it displays 4 of them:
  + the first, second, and third is probably for the bonds that aragami has?, we can only guess from this part for now, for the fourth one.. is probably the main      health of the aragami since its has bigger value to the the rest of the 3 parts.
- `en_base_family_id` (UINT8) - i do not know...
- `en_base_sight_area` (FLOAT32) - the visibilty of the aragami based on in game distance. If increased, they will have possibility of X-Ray
- `en_base_hearing_area` (FLOAT32) - aragami's hearing in game distance. If increased, they will be aware of your movements (dash, jump, Blade to Gun Switching)

![Screenshot (85)](https://github.com/nachotacos69/WikiEater/assets/99103531/73c17f84-77af-469a-b386-336d7e47260b)

- `en_base_entry_y_offset` (FLOAT32) - i have no idea what it does, but i can assume its value of `y` which is a vertical value.. maybe it is like a value
  for the entry point, if its adjust higher, the spawning of the aragami will be touching the air?..
- `en_base_def_mat_start_id` (UINT16) - possibly related to `en_mat.tr2` file?
- `en_base_def_mat_num` (UINT8) - possibly related to `en-mat.tr2` file?
- `en_base_def_oracle_start_id` (UINT16) - possibly related to `en_oracle.tr2` file?
- `en_base_def_oracle_num` (UINT8) - possibly related to `en_oracle.tr2` file?
- `en_base_int_param_array` (INT32) - i have no idea, and there's like 8 of them?

![Screenshot (86)](https://github.com/nachotacos69/WikiEater/assets/99103531/d9134782-9617-48df-b037-a82f41f02ad7)


- `en_base_float_param_array` (FLOAT32) - i have no idea, and there's like 8 of them?
- `en_base_trig_group_start_id` (UINT8) - i have no idea
- `en_base_trig_group_num` (UINT8) - i have no idea
- `en_base_hate_array` (FLOAT32) - there's like 40 of them listed, related to `en_hate_total`

![Screenshot (87)](https://github.com/nachotacos69/WikiEater/assets/99103531/1e421a25-f458-44e3-9e3f-37dc8dfd8244)

- `en_base_down_array` (UINT16) - related to the aragami when it's downed, there's atleast 3 of them
    + if possibly decreased/increased, there will be changes on its downtime.

--POISON EFFECT--
- `en_base_badstatus_poison_value` (UINT16) - related to venom trap/venom bullets, maximum value for the effect to be triggered or only stacked until it diminishes
- `en_base_badstatus_poison_add_value` (UINT16) - related to venom trap/venom bullets, each venom uses increases the value for until it reached the same value as `en_base_badstatus_poison_value`
- `en_base_badstatus_poison_down` (FLOAT32) - related to venom trap/poison bullets, i don't have idea what it does

--HOLD EFFECT--
- `en_base_badstatus_hold_value` (UINT16) - related to snare trap/paralyze bullets, maximum value for the effect to be triggered or only stacked until it diminishes
- `en_base_badstatus_hold_add_value` (UINT16) - related to snare trap/paralyze bullets, each paralyze uses increases the value for until it reached the same value as `en_base_badstatus_hold_value`
- `en_base_badstatus_hold_time` (UINT16) - related to snare trap/paralyze bullets, time of effect for the hold effect.
  
--BIND EFFECT--
- `en_base_badstatus_vsgod_value` (UINT16) - related to bind trap/antibody bullets, maximum value for the effect to be triggered or only stacked until it diminishes
- `en_base_badstatus_vsgod_add_value` (UINT16) - related to bind trap/antibody bullets, each bind uses increases the value for until it reached the same value as `en_base_badstatus_vsgod_value`
- `en_base_badstatus_vsgod_time` (UINT16) - related to bind trap/antibody bullets, time of effect for the bind effect.



![Screenshot (88)](https://github.com/nachotacos69/WikiEater/assets/99103531/e9ae9b42-0851-4c68-9443-580058bf9cf0)
