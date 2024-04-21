# TOPIC - ARAGAMI DEFENSE PARAMETERS
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
- afterwards inside that folder and open `en_def.tr2` with the TR2 Editor that you're using

# Understanding the column names and purposes
Heads Up: i usually don't have the idea on the other names but i will give my understanding on these few column names

- `en_def_normal_elm` (INT16) - their list are randomized, each one of them related to elemental attacks:
  + Sunder
  + Crush
  + Pierce
  + $\color{rgb(255, 80, 80)}{\textsf{Blaze}}$
  + $\color{rgb(51, 153, 255)}{\textsf{Freeze}}$
  + $\color{#e6e600}{\textsf{Thunder}}$
  + $\color{#cc66ff}{\textsf{Divine}}$
  + $\color{#bf00ff}{\textsf{Venom/Poison}}$
  + $\color{#0086b3}{\textsf{Bind}}$
     ~ Where's the $\color{#ffff80}{\textsf{Hold}}$ effect you might ask?, probably because they dont deal damage at all.
-  `en_def_angry_elm` (INT16) - their list are randomized, related to **enraged** form, making them stronger, the list is still the same as `en_def_normal_elm`
-  `en_def_destruct_elm` (INT16) - their list are randomized, related to broken bonds/parts, making them weaker?, the list is still the same as `en_def_normal_elm`
-  `en_def_angry_destruct_elm`(INT16) - their list are randomized, related to **enraged** form, making them stronger, the list is still the same as `en_def_normal_elm`
-  `en_def_name` - Aragami defense name.. thats it

  ![Screenshot (96)](https://github.com/nachotacos69/WikiEater/assets/99103531/7fbae666-94d3-46cc-a88f-305eda599317)

**END OF PAGE**
