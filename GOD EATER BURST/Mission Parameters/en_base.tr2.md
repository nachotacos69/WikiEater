# TOPIC - ARAGAMI BASE POINT (HEALTH POINTS, etc.)
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


- Then drag the `en_base.tr2` to HXD to open it

![image](https://github.com/nachotacos69/WikiEater/assets/99103531/15d63c28-5a33-4e36-807b-81b80d9d08a3)

# Understanding the column names and purposes
Heads Up: i usually don't have the idea on the other names but i will give my understanding on these few column names

- `en_base_name` (ASCII) - this is aragami's name but in a different way, possiblity related to `creature_ .bin` files
- `en_base_res_name` (ASCII) - this is the aragami's resource name i believe since inside of the mission `248_Church_PlusMission16` folder, it has `MS_010C_black`
  folder and its `.xml` and `.res` files too
- `en_base_display_name` (UTF-8) - The aragami's name that displays on screen except on `Mission Check` tab.
- `en_base_entry_limit` (UINT8) - from what i can tell, since it says **entry** this is either some kind of limitation for aragami's spawn limit?
- `en_base_hp` (UINT32) - multiple HP list.. the 1st one is the main health. but test around to find out.
- `en_base_family_id` (UINT8) - related to `creature_ .bin` files
- `en_base_sight_area` (FLOAT32) - the visibilty of the aragami based on in game distance. If increased, they will have possibility of X-Ray
- `en_base_hearing_area` (FLOAT32) - aragami's hearing in game distance. If increased, they will be aware of your movements (dash, jump, Blade to Gun Switching)

![Screenshot (85)](https://github.com/nachotacos69/WikiEater/assets/99103531/73c17f84-77af-469a-b386-336d7e47260b)

- `en_base_entry_y_offset` (FLOAT32) - i have no idea what it does, but i can assume its value of `y` which is a vertical value.. maybe it is like a value
  for the entry point, if its adjust higher, the spawning of the aragami will be touching the air?..
- `en_base_def_mat_start_id` (UINT16) - possibly related to `en_mat.tr2` file?
- `en_base_def_mat_num` (UINT8) - possibly related to `en-mat.tr2` file.?
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


--STUN EFFECT--
- `en_base_badstatus_stun_grenade_dist` (FLOAT32) - related to stun grenades, in game distance effect. basically if you're far away, it won't work, if you're near, it will work.
- `en_base_badstatus_stun_grenade_angle` (FLOAT32) - related to stun grenades, in game angle, basically if you're behind, it will probably works or wont work, but you guys can correct me with this one

--OTHER EFFECT--
- `en_base_badstatus_unheared_time` (UINT16) - i have no idea, but its something related to Disguise Status?


- `en_base_hate_total` (INT32) - Total Hate of the aragami, will only work or active when `en_base_hate_array` increases its value until it reaches the `en_base_hate_total` value?
- `en_base_rage_time` (UINT16) - Aragami's enraged time, if modified, there will be behaviour changes.
- `en_base_appear_after_wait_time` (UINT16) - Aragami delay of entrance based on its spawning area.
- `en_base_disappear_wait_time` (UINT16) - Aragami dead body disappearance time, if modified, there will be behaviour changes
- `en_base_near_death_threshold` (INT8) - this will trigger when the aragami's is near death or low hp (if you have Enemy HP Vision, you should see the aragami icon blinking)

![Screenshot (89)](https://github.com/nachotacos69/WikiEater/assets/99103531/790c8509-d212-4e21-ac53-9970550fd8ac)

- `en_base_bite_stock_threshold` (INT8) - There's multiple of them, its related to the aragami eating in the salvage points gaining HP?
- `en_base_bite_stock_rate` (INT8) - there are 2 of them, some kind of rating/chances to how much health is stored? who knows.
- `en_base_bite_recover_life_percent` (INT8) - there are 4 of them, related to devouring the salvage points and they will recover based on the value i guess.

![Screenshot (90)](https://github.com/nachotacos69/WikiEater/assets/99103531/8d967331-301b-4277-8aac-68b5384d4a8c)


- `en_base_material_acquirable_count` (INT8) - related to devouring the aragami after death.
- `en_base_angry_attack_scale` (INT16) - during its **enraged**, the aragami damage will increase base on the value
- `en_base_angry_accumulate_bonus_threshold` - i dont really have an idea, but its still related to the `en_base_angry_attack_scale`
- `en_base_angry_accumulate_bonus_factor` (INT8) - related to the `en_base_angry_attack_scale`, bonus value i suppose
- `en_base_bad_condition_factor` (INT16) - there are 6 of them, related to a bad effect or something
- `en_base_append_material_id` (INT16) - there are 5 of them, those 5 have different values and will only show up during result screen i suppose
- `en_base_append_material_weight` (INT8) - related to `en_base_append_material_id`, its basically a drop rate/percentage.

![Screenshot (91)](https://github.com/nachotacos69/WikiEater/assets/99103531/c754bf1c-eea1-4eb7-9a4a-1cec1b99674d)

**END OF PAGE**
