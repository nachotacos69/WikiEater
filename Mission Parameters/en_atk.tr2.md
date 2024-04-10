#TOPIC - ARAGAMI ATTACK PARAMETERS
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
- afterwards inside that folder and open `en_atk.tr2` with the TR2 Editor that you're using


# Understanding the column names and purposes
Heads Up: i usually don't have the idea on the other names but i will give my understanding on these few column names

- `en_atk_slash` (INT16) - this is the aragami's sunder attack value, their list is depends on how many the aragami has attacks (based on names), which can be a lot by the way.
- `en_atk_crush` (INT16) - this is the aragami's crush attack value, their list is the same as `en_atk_slash`.
- `en_atk_spike` (INT16) - this is the aragami's pierce attack value, their list is the same as `en_atk_slash`.
- `en_atk_fire` (INT16) - this is the aragami's elemental $\color{rgb(255, 80, 80)}{\textsf{Blaze}}$ attack value, their list is the same as `en_atk_slash`.
- `en_atk_ice` (INT16) - this is the aragami's elemental $\color{rgb(51, 153, 255)}{\textsf{Freeze}}$ attack value, their list is the same as `en_atk_slash`.
- `en_atk_thunder` (INT16) - this is the aragami's elemental $\color{#e6e600}{\textsf{Thunder}}$ attack value, their list is the same as `en_atk_slash`.
- `en_atk_god` (INT16) - this is the aragami's elemental $\color{#cc66ff}{\textsf{Divine}}$ attack value, their list is the same as `en_atk_slash`.
- `en_atk_name` (ASCII) - Aragami attack names.. thats just it
- `en_atk_knockback_id` (UINT8) - Aragami attack knockback value, they different values, starting from 1 to 3, lets say either low to high knockbacks to player after an aragami hits the player
  usually strong attacks have higher knockback.
- `en_atk_condition_id` (UINT8) - i don't know much about this but i could say this is either related to the **enraged** part?
- `en_atk_condition_time` (FLOAT32) - related to `en_atk_condition_id`, its something related as well to the mission time?

![Screenshot (95)](https://github.com/nachotacos69/WikiEater/assets/99103531/7d7d3270-0276-48c4-97cd-16a5037b8434)

![Screenshot (94)](https://github.com/nachotacos69/WikiEater/assets/99103531/a363c017-9c55-451b-adda-54a1b1b60060)
