# TOPIC - MAP SALVAGE POINTS/AREAS
# Requirements
- Notepad ++
- HxD
- TR2 Editor from GEBUtils or from GECV
- GEBCS
- You gotta have a brain i suppose

# What is dig?
 + after some i guess fiddling around with the file, its like your salvage points. the way they work is based on their weight... kind of like a rarity/percentage for chances of appearance?

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

