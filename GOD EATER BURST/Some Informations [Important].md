# This will cover all of the related stuff you can find on some of these scripts


# Texts Files with Indexes

- they are rather important since they are for the `.tr2`, `.xml` from what i could understand
![Screenshot (69)](https://github.com/nachotacos69/WikiEater/assets/99103531/7e4954fe-fcce-4cd7-bbeb-ecd1e0cc18df)

1. here's an example for the GEBCS version of text index
- from the GEBCS version, its pretty simple i suppose, not much of a problem


2. this here is for the GE2 Script
![Screenshot (70)](https://github.com/nachotacos69/WikiEater/assets/99103531/41e6eb77-248e-4f99-b01a-7f2dc3395133)
- same as GEBCS but rather a bit complex on that first part above
- it displays total counts to strings/index, [CRLF](https://en.wikipedia.org/wiki/Newline), and the name of the text file itself, then its type and encoding



# Types of Decompression/Compression/Deflation Methods?
- from what i can understand, for GER and and GE2RB they use a blz4 and zlib methods to do compress/repack and deflate/decompress the files. As for GEB, does not uses any of those, `package.rdp`, and the DLC some of them files are packed in a `Pres`? 


# `.TR2` and it's structure
- Here's an image on how the .tr2 works and its structure
 ![TR2 modding (useful for GEB, GE2, GER, GE2RB)](https://github.com/nachotacos69/WikiEater/assets/99103531/f3419b80-ad05-4780-a67b-27976f67b8dd)

- You can find some integer values and other stuff:
 **Uint8, Uint16, Uint32
  Int8, Int16, Int32
  ASCII, UTF-8, UTF-16LE, FLOAT32**
These things are important, the integers are for numbers/decimals, and the UTF encodings are for texts formats i believe

# `vag` and `at3` audio formats
- `.at3` is commonly used from cutscenes and BGM during combat, and BGM for anagura (DEN in english version),
  field environment BGM (during non combat state), they are replaceable with custom BGM or replacement audio from cutscenes
  **IF** you don't overlapse the file size of the original `.at3`
- `vag` is commonly used for sound effects from:
  - Aragamis
  - NPC & Player
  - Other Sound Effects from the game
  Like `.at3` they are replaceable **IF** you don't overlapse the file size of the original `.vag`

Example is from here: https://www.youtube.com/watch?v=u_vxs-LKEnc


# `conf?`
- it's a configuration file i believe for the game i suppose. i never touched it much except for the `app_env.conf`
  1. the only thing i know is **LogoSkip**, by setting the first value of `0` to `1` what is does is skips the entire company logo and anime intro
     + it exists in `conf.qpck` in ***GOD EATER RESURRECTION*** and ***GOD EATER 2 RAGE BURST***
![Screenshot (71)](https://github.com/nachotacos69/WikiEater/assets/99103531/5bdd93cc-ba47-43f1-9a76-89a8f54b88e4)


# The `XML` format itself
- this is rather for the `.tr2` part as well. It contains some stuff i barely know but, i will share some thing i only understand:
  ![Screenshot (72)](https://github.com/nachotacos69/WikiEater/assets/99103531/b596c329-67e3-4a29-829f-edd52288bd46)
  
  + `<Name>` is rather the name for the rows
  + `<EncodingType>` encoding type (depends if its ASCII, UTF, INT/UINT or the FLOAT)
  + `<Count>` this count is related to how many columns are in a `.tr2` file i believe
  + `<ArrFile>` its a base64 version of each row and its column
  +  `<Offset>` where a row is located at the start, take `en_base_entry_limit` as a example.


1. example image:
  
  ![Screenshot (74)](https://github.com/nachotacos69/WikiEater/assets/99103531/57c6f19d-e2bd-47dd-9e2d-b48a182746d1)
  
2. Hex version of `en_base_entry_limit`:
  
  ![Screenshot (75)](https://github.com/nachotacos69/WikiEater/assets/99103531/6af2a1b8-a28d-44e4-833b-523734b276d0)

3. Hex to Base64 conversion of that row:

  ![Screenshot (76)](https://github.com/nachotacos69/WikiEater/assets/99103531/2ae5a6eb-7a1e-4519-9239-148adbacfa6a)



# `PMF` formats
- its somekind of FMV/video format, which ffmpeg kind of supports by the way to convert it back into any video format if possible
- their resolution is 480x272 (very low quality)
- can you modify these pmf fornats?
  + possible, as long you have the knowledge of video editing and converting that video format into a PMF format
 
![Screenshot (77)](https://github.com/nachotacos69/WikiEater/assets/99103531/76f9b4ac-e7fd-460e-aaa3-22a7aa30645d)


# `res` formats
- i have had idea what these files are, but they are nearby on some files and they have:
  + `50 72 65 73` bytes which translates to `Pres` as its magic header


# `.bin` files
- inside `/system/` you can see those `.bin` files that contains:
  + `7F 45 4C 46` the first four values? that translates to `ELF` as its magic header>
  + along the way you can find this bytes as well `47 43 43 3A 20 28 47 4E 55 29 20 34 2E 30 2E 34 2B 61 6C 6C 65 67 72 65 78 2D 32 2E 32 2E 33 2D 70 73 70 2D 32 2E 39 2E 30` which translates to `GCC: (GNU) 4.0.4+allegrex-2.2.3-psp-2.9.0`
 ![Screenshot (78)](https://github.com/nachotacos69/WikiEater/assets/99103531/f61a70ce-309a-45b2-a711-ed3f6dfbdb27)

# tbl, ssq, and str formats?
- i can't really say something for this one, they are.. rather unknown

# pgf format
- for me, based on research, they are somekind of font file for the PSP itself.


# `.gmo` and `.gim` files
- `.gmo` i believe its called a **[Generic Model Object?](http://wiki.ffrtt.ru/index.php/PSP/GMO_Format)**
  of course, these files are related to:
    + field models
    + face models
    + aragami models
    + other models
    + animation frames
- `.gim` a.k.a **[Grapic Image Map](https://www.psdevwiki.com/ps3/Graphic_Image_Map_(GIM))** are used for
    + texture for the characters
    + textures for the aragamis
    + textures for the entire game of course
 
# `fpth` files
- i don't really kno what they are, but they have:
  + magic header`50 61 54 68 4D 61 54 72 49 78` which translates to `PaThMaTrIx`

# `.blt` and `.obc/obcf` files
- these are actually bullet files from what i can understand (contains texts sometimes)
- for the aragami and for the player they use `.blt` (which is a aragami bullet)
- `.obc` and `.obcf` are for those bullets we bought or made from bullet editor

# `.act` files
- can be found inside `MS_` folders usually names `meta_effect` and `meta_motion`:
  + inside the `meta_effect.act`.. the header is `41 63 54 69 4F 6E 01 00 4D 00 00 00 00 00 00 00 45 6E 45 4D 79 45 66 46 65 43 74` and it translates to `AcTiOn�M�������EnEMyEfFeCt` and yes.. thats the text
  + and inside `meta_motion.act`..  the header is `41 63 54 69 4F 6E 01 00 55 00 00 00 00 00 00 00 4D 65 74 61 4D 6F 74 69 6F 6E` and it translates to `AcTiOn�U�������MetaMotion` and thats the text as well
- the rest of the contents are unreadable for humans, unless someone decompiles them

# `.sps` file
- i am kinda sure that they are the ones that handles the effects for the game (they below to somekind of "ParticleGroup")
  + the header is `2E 53 50 53 00 00 01 00 50 53 50 20` that translates to `.SPS���PSP ` and thats the texts too


# `enus` folders
- this folders indicates it has some contents that has some english texts on it...
  they are also separated in a folder too
- those folders contain one or multiple text files as well

![Screenshot (79)](https://github.com/nachotacos69/WikiEater/assets/99103531/11f2a71c-0144-47f5-af14-7b934e20ad68)
![Screenshot (80)](https://github.com/nachotacos69/WikiEater/assets/99103531/5f18ce4f-c744-446d-a444-4ee6b85c8d07)


# `god_menu` folder
- this is where you can the main voices/dialogues for the characters (NPC & player) during combat
- you can the related materials for the:
  + clothings
  + weapons
  + shields
  + skin, face meshes
  + game textures / Interface / HUD?
- you can find as well the `god_` folders, but you can explore around too.


# `god_game` folder
- it contains most of the game's stuff
  + missions
  + events/cutscenes
  + anagura (DEN) dialogue
  + skill names
  + result screen
  + combat sound effect
  + gallery related texts
  + game fields
  + aragamis
  + and other stuff
  + character/player related effects
 
# mission folders
- yes, it's the mission folder, it contains:
  + more `.tr2` and `.xml` files
  + aragamis of course
  + entry tables (always unused kind of)
  + en_trig_group (name of aragamis?, then their parts/bonds)
  + en_atk, en_def, en_hit_atk, en_hit_def (related to the aragamis)
  + dig folders? (possibly related to salvage materials? im guessing here)
  + more enus folders (okay i suppose)
  + progress_info folder (contains aragami names)
  + quest_flow (related to current mission objectives and their spawnpoints
  + virtual_motion (related to aragami motions?)
  + str, tbl files
  + npc related files
  + an .sps file, which is somewhat handles the game/aragami visual effect? i am not sure
  + a col.ml file (sounds like a collision file, but i am still unsure)
  + a few `.gmo` and `.gim` files, which explained in **[Page 1](https://github.com/nachotacos69/WikiEater/blob/main/Keypoints%20Page%201.md#gmo-and-gim-files)**

# `MS_` folders
  - this is related to the aragami itself, which contains:
    + more `.gmo` files
    + more `.gim` files
    + another few `.sps` files
    + `creature .bin` files
    + atleast one `enus` folder for the bullet names and aragami oracle attacks?
    + their model and animation files which names `motion` and `model`
     + NOTE: aragamis that have breakable bonds will have multiple models (atleast 2):
       ![Screenshot (81)](https://github.com/nachotacos69/WikiEater/assets/99103531/ce49b7a8-add2-445d-8a3a-decef163f95f)


    + aragami sound effects (roars, and other effects in a `.vag` format)

***-END OF PAGE-***

