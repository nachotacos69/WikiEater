# TOPIC - ENEMY ENTRY TABLE

# Understanding the column names and purposes
Heads Up: i usually don't have the idea on the other names but i will give my understanding on these few column names


- `ENEMY_ENTRY_T_OBJECT` (ASCII) - Uses a `FIX_` prefix with `Trigger`, which probably means where it will trigger before spawning?
- `ENEMY_ENTRY_E_OBJECT` (ASCII) - Uses a `FIX_` prefix with `Entry` which means on where they will spawn at. kinda like fixed position?
- `ENEMY_ENTRY_E_TYPE`(ASCII) - unknown, but considering it's a type, it would vary based on the enemy that will spawn?
- `ENEMY_ENTRY_MIN_COUNT` (INT8) - minimal count for enemy spawning (default is commonly value `1`)
- `ENEMY_ENTRY_MAX_COUNT` (INT8) maximum capacity for enemy spawning (default is commonly either `4` or `8`, im not sure)
- `ENEMY_ENTRY_ENEMY0_ID` (UINT16) - value for Enemy ID, this is for those who is non listed on `progress_info` and `quest_flow`, by default, if you want and enemy to be on the list which is on `progress_info`, that would be `1`, if you want it outside of `progress_info` give it a `2` or what unused number IDs are inside of `progress_info`
- `ENEMY_ENTRY_ENEMY0_PER` (INT8) -  unknown, but i would kind of guess when the enemy will stop spawning?, im not sure
- `ENEMY_ENTRY_ENEMY1_ID` (UIN16) - same as `ENEMY_ENTRY_ENEMY0_ID`
- `ENEMY_ENTRY_ENEMY1_PER` (INT8) - same as `ENEMY_ENTRY_ENEMY0_PER`
![enemy entry](https://github.com/nachotacos69/WikiEater/assets/99103531/86c64796-deef-43e6-ba80-7d5e9c388186)
