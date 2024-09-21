## FILE FORMATS (PSP)
- this will cover all possible file formats for GOD EATER -> GOD EATER 2

# Table of Contents
- [`NO FILE FORMAT`](https://github.com/nachotacos69/WikiEater/blob/main/File_Format_List.md#no-file-format)
- [`RDP`](https://github.com/nachotacos69/WikiEater/blob/main/File_Format_List.md#rdp-format)
- [`EDAT`](https://github.com/nachotacos69/WikiEater/blob/main/File_Format_List.md#edat-format)
- [`PRES`](https://github.com/nachotacos69/WikiEater/blob/main/File_Format_List.md#pres-format)
- [`BLZ2`](https://github.com/nachotacos69/WikiEater/blob/main/File_Format_List.md#blz2-format-god-eater-2)
- [`STR`](https://github.com/nachotacos69/WikiEater/blob/main/File_Format_List.md#str-format)
- [`GIM`](https://github.com/nachotacos69/WikiEater/blob/main/File_Format_List.md#gim-format)
- [`GMO`](https://github.com/nachotacos69/WikiEater/blob/main/File_Format_List.md#gmo-format)
- [`VAG`](https://github.com/nachotacos69/WikiEater/blob/main/File_Format_List.md#vag-format)
- [`AT3`](https://github.com/nachotacos69/WikiEater/blob/main/File_Format_List.md#at3-format)
- [`PMF`](https://github.com/nachotacos69/WikiEater/blob/main/File_Format_List.md#pmf-format)
- [`CONF`](https://github.com/nachotacos69/WikiEater/blob/main/File_Format_List.md#conf-format)
- [`BIN/SPRX/PRX`](https://github.com/nachotacos69/WikiEater/blob/main/File_Format_List.md#binsprxprx-format)
- [`TBL/STBL`](https://github.com/nachotacos69/WikiEater/blob/main/File_Format_List.md#tblstbl-format)
- [`PGF`](https://github.com/nachotacos69/WikiEater/blob/main/File_Format_List.md#pgf-format)
- [`SSQ`](https://github.com/nachotacos69/WikiEater/blob/main/File_Format_List.md#ssq-format)
- [`DAT`](https://github.com/nachotacos69/WikiEater/blob/main/File_Format_List.md#dat-format)
- [`ACT`](https://github.com/nachotacos69/WikiEater/blob/main/File_Format_List.md#act-format)
- [`FPTH`](https://github.com/nachotacos69/WikiEater/blob/main/File_Format_List.md#fpth-format)
- [`SPS`](https://github.com/nachotacos69/WikiEater/blob/main/File_Format_List.md#sps-format)
- [`BLT`](https://github.com/nachotacos69/WikiEater/blob/main/File_Format_List.md#blt-format)
- [`TR2`](https://github.com/nachotacos69/WikiEater/blob/main/File_Format_List.md#tr2-format)
- [`KST`](https://github.com/nachotacos69/WikiEater/blob/main/File_Format_List.md#kst-format-god-eater-2)
- [`NAS`](https://github.com/nachotacos69/WikiEater/blob/main/File_Format_List.md#nas-format)
- [`ML/GMVL`](https://github.com/nachotacos69/WikiEater/blob/main/File_Format_List.md#mlgmvl-format)





# NO FILE FORMAT
- Files with no format, usually contains nothing or certain values by viewing on hex or containing wacky text here and there.

# RDP Format
- Signature/Header: (GE)-> `7F 45 4C 46 (ELF)` / (GE2)-> `72 64 70 (rdp)` (note: inside of `INSDIR`, the RDP there isn't a RDP but has a PGD Signature/Header)
- Usually contains a lot of important files for the main game.

- `GE + GEB`

![GEB_OLDER](https://github.com/user-attachments/assets/253cfcb7-a771-4808-9983-c03b8a97a07b)

- `GE2`

![GE2](https://github.com/user-attachments/assets/03e8a516-ad84-486b-a084-10241a0c970c)



# EDAT Format
[Source: https://www.psdevwiki.com/ps3/EDAT_files]
- Stored a encrypted information and needed to be decrypted by [npdecrypter](https://github.com/codestation/npdecrypter), usually for the DLC contents and such more, all games usually uses this for special/additional content for games like Downloadable Contents. GOD EATER uses this to store somekind of `EntryKey`, `DLC Content`, and much more. this can contain `PRES` signatures on larger files, then for **GOD EATER 2** it has `rdp` signature. (note: `EntryKey` is important to unlock certain things like costume, extra mission, and etc.)


# PRES Format
- Signature/Header: `50 72 65 73 (Pres)`
- A specialized compression, which is like a virtual storage that has tons of structures/directories and a lot more, usually in a GZip or any other compression system.

- `GE + GEB`

![PRES 10](https://github.com/user-attachments/assets/601ff643-382f-4976-ab52-15e47f1a257e)
 
- `GE2`

![PRES 20](https://github.com/user-attachments/assets/5b773f53-c097-479b-a9fa-e017369b4c25)


# BLZ2 Format (GOD EATER 2)
- Signature/Header: `62 6C 7A 32 (blz2)`
- a ZLIB compression with header information. If i remember correctly, it's maximum size is on 0xFFFF or UINT16 maximum value (65535).

![blz2](https://github.com/user-attachments/assets/e4df994f-d7df-4046-bae1-fa0bdad3bef3)


# STR Format
- This is usually a string file, contains a few or more texts, Sometimes for Layout and Spawnpoints/Spawn Area and more.

![STR](https://github.com/user-attachments/assets/eb933107-7eb1-4fe3-8452-1daa23733b0d)



# GIM Format
[Source: https://www.psdevwiki.com/ps3/Graphic_Image_Map_(GIM)]
- A image that only support in PSP, PS3. this image format is used in many ways in game. This image has different color index and other stuff

![gim sample](https://github.com/user-attachments/assets/50ea3468-b9ca-4b97-b187-a09ff02d84cd)


# GMO Format
[Source: https://wiki.ffrtt.ru/index.php/PSP/GMO_Format]
- A model file format, Used in character/enemy models, camera and some camera death and other hitbox.

![calig](https://github.com/user-attachments/assets/963daa4c-d5f5-4bba-87de-30ba7ab550e8)


# VAG Format
[Source: https://en.wikipedia.org/wiki/Adaptive_differential_pulse-code_modulation]
- Signature/Header: `56 41 47 70 (VAGp)`
- A Compressed audio file uses `ADPCM` and used in PSX, PS2, and PSP. You can hear them being used in some sound effects (click noises as an example). The file contains the name of the file too. Some audio frequency in GOD EATER uses somewhere `11000` Hz to `22000` Hz, samples is only `16`, as the channel is only `1` (mono).

![VAG](https://github.com/user-attachments/assets/ef006cb3-250c-4cfe-905f-3ced0dfccd5c)



# AT3 Format
[Source: https://en.wikipedia.org/wiki/ATRAC]
- Signature/Header: `52 49 46 46 (RIFF)`
- AT3 or ATRAC3, used a lot on game cutscenes, game background music and much more. although in some cases, some are small sized for looping audio for game BGM.
![AT3](https://github.com/user-attachments/assets/d57c87d6-7f61-4677-a555-6a1e9f596e14)



# PMF Format
[Source: https://www.psdevwiki.com/psp/PMF]
- Signature/Header: Can vary but GOD EATER has this signature, `50 53 4D 46 30 30 31 35 (PSMF0015)`
- Playstation Movie Format or PMF is a video file, can be played on `VLC` and can be used on `FFMPEG`, it's a video file, used in Game Opening, Tutorial Videos, and Credits.

![PMF](https://github.com/user-attachments/assets/7253ed10-56b7-40bf-ac02-cda0a25fb320)



# CONF Format
- it's a configuration file, you can pretty much modify the values if you know what you're doing.

# BIN/SPRX/PRX Format
[Source: https://en.wikipedia.org/wiki/Executable_and_Linkable_Format]
- `Executable and Linkable Format` or `ELF`. are files that is important in game. by default, they are encrypted sometimes in a `~PSP` signature or something, so you will need to decrypt them. ELFs are important in the game, i can't explain much since they are very long. So you will need to do some deep research.


# TBL/STBL Format
- Signature/Header: `53 74 52 74 41 62 4C 65 (StRtAbLe)`
- `TBL` consist in between important values that can only bee seen on HEX/Binary Editors, this usually has no headers. as for `STBL`, it has its own special header, consists of `Enemy Entry` related texts.

- `STBL`

![stbl](https://github.com/user-attachments/assets/e6e386b0-8a2a-46e2-8170-95d086938b58)


# PGF Format
- Signature/Header: `50 47 46 30 (PGF0)`
- This is a font format, GOD EATER uses it's own font instead of the PSP built in fonts.

![PGF](https://github.com/user-attachments/assets/63579a14-a0af-4db0-a849-e4e531e73ee7)


# SSQ Format
- Signature/Header: `73 73 71 64 (ssqd)`
- they seem to have multiple functions, like KeyFrames or Parts, something like that.

![SSQ](https://github.com/user-attachments/assets/2f00ca39-dd8e-4a28-9d01-843f0ff6c83d)


# DAT Format
- Usually contains a few important Binary data, atleast on what i see on Binary Editors, or sometimes just completely empty

# ACT Format
- Signature/Header: `41 63 54 69 4F (AcTiOn)`
- This files are separated in two, `meta_motion` and `meta_effect`.
- First is `meta_motion`, which has another signature which is `4D 65 74 61 4D 6F 74 69 6F 6E (MetaMotion)`. This has connection betweeen `enemy_Hit.gmo` and the `model.gmo` or `motion.gmo`?.
- Second is `meta_effect`, which has another signature as well which is `45 6E 45 4D 79 45 66 46 65 43 74 (EnEMyEfFeCt)`. This has connection betweeen `enemy_Effect.gmo` and the `.sps` files?

- `EFFECT`

![act_effect](https://github.com/user-attachments/assets/fa92761f-03d7-4a57-8acb-60fcab8f61bc)

- `ACTION`

![act_action](https://github.com/user-attachments/assets/999af2ab-d018-4637-bcb3-75fe604b7b11)


# FPTH Format
- Signature/Header: `50 61 54 68 4D 61 54 72 49 78 (PaThMaTrIx)`
- This is a Field Path. Each Enemy has their own `.fpth` files, each will be different in every mission field, let's say there's a enemy on a bit big map, the `.fpth` file size will change size to match with that map, the size will change based on the maps being used, so they can be big or small, sometimes there will be duplicates which i don't know why.
![FPTH](https://github.com/user-attachments/assets/ecfd3f4d-c94a-4483-9fac-b585b22d0aa5)



# SPS Format
Signature/Header: `2E 53 50 53 (.SPS)` + `50 53 50 20 (PSP )`
- SPS or Shift Particle System is made by Shift, their functions (based on `EBOOT.BIN`) is in the following:
    + Creates/Summons Particles
    + Handle Particles any way
    + Manages Enemy Bullet Effects
    + Manages Enemy Effects (ex: smoke while walking/running, during enraged state like caligula's red evil eyes)
- There isn't any official tool for it to be modified.

![sps](https://github.com/user-attachments/assets/cc70a189-390e-480b-8468-8ba0d7b5585e)


# BLT Format
- A bullet for bot player and enemy, there's also `.obc` and `.obcf` for player/npc bullets, their purpose is to summon bullets based on their values given, some have names (usually in offset 0x10). Also you can modify them through HEX/Binary Editor, but be warned that you will experienced a lot of crashing if you put incorrect values.

- `BLT`

![BLT](https://github.com/user-attachments/assets/defe84cd-5163-4a7c-b4d3-23d76039103a)

- `OBC`

![OBC](https://github.com/user-attachments/assets/4b14c477-58d1-4ef9-8c5b-da078224bf00)

- `OBFC`

![OBFC](https://github.com/user-attachments/assets/a352943b-dc56-496d-8159-5c9b44fb133f)



# TR2 Format
- Signature: `2E 74 72 32 (.tr2)`
- These files are like special tables that contains a lot of text, important values, certain floats, and much more.
![TR2 modding (useful for GEB, GE2, GER, GE2RB)](https://github.com/user-attachments/assets/becec8bd-c2af-46fd-b192-51165738dbe4)


# KST Format (GOD EATER 2)
- Signature: `6B 73 74 31 (kst1)`
- Seems to be a like a semi-replacement for the `tr2` files, used only on some parts of the game.

# NAS Format
- unknown, but probably a sequence for NPCs.
![NAS](https://github.com/user-attachments/assets/37165c56-411a-4c20-8ab0-27ac3e15a881)


# ML/GMVL Format
- This two are important for mission fields, `col.ml` is a collision manager, while the `GMVL` or sometimes `geometry_volume`, is somekind of volumes for the geometries in the field, i suppose. contains some texts i suppose.

- `ML`

![ML](https://github.com/user-attachments/assets/d36c487a-11b5-476d-9b4d-ad69f41ce55c)

- `GMVL`

![GMVL](https://github.com/user-attachments/assets/4dbbeab1-5d32-4132-81e7-3b4ebdd6335a)




