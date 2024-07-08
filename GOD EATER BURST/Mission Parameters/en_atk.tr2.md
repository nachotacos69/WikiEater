# TOPIC - ARAGAMI ATTACK PARAMETERS
# Requirements
- Notepad ++
- HxD
- TR2 Editor from GEBUtils or from GECV
- GEBCS
- You gotta have a brain i suppose


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
- `en_atk_condition_id` (UINT8) - related to player's negative/debuff effects
- `en_atk_condition_time` (FLOAT32) - related to `en_atk_condition_id`, its a timer for the condition

![Screenshot (95)](https://github.com/nachotacos69/WikiEater/assets/99103531/7d7d3270-0276-48c4-97cd-16a5037b8434)

![Screenshot (94)](https://github.com/nachotacos69/WikiEater/assets/99103531/a363c017-9c55-451b-adda-54a1b1b60060)


**END OF PAGE**
