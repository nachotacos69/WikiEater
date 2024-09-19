## FILE FORMATS (PSP)
- this will cover all possible file formats for GOD EATER -> GOD EATER 2

# Table of Contents
- [`NO FILE FORMAT`](https://github.com/nachotacos69/WikiEater/edit/main/File%20Format%20List.md#no-file-format)
- [`RDP`](https://github.com/nachotacos69/WikiEater/edit/main/File%20Format%20List.md#rdp-format)
- [`EDAT`](https://github.com/nachotacos69/WikiEater/edit/main/File%20Format%20List.md#edat-format)
- [`PRES`](https://github.com/nachotacos69/WikiEater/edit/main/File%20Format%20List.md#pres-format)
- [`BLZ2`](https://github.com/nachotacos69/WikiEater/edit/main/File%20Format%20List.md#blz2-format-god-eater-2)
- [`STR`](https://github.com/nachotacos69/WikiEater/edit/main/File%20Format%20List.md#str-format)
- [`GIM`](https://github.com/nachotacos69/WikiEater/edit/main/File%20Format%20List.md#gim-format)
- [`GMO`](https://github.com/nachotacos69/WikiEater/edit/main/File%20Format%20List.md#gmo-format)
- [`VAG`](https://github.com/nachotacos69/WikiEater/edit/main/File%20Format%20List.md#vag-format)
- [`AT3`](https://github.com/nachotacos69/WikiEater/edit/main/File%20Format%20List.md#at3-format)
- [`PMF`](https://github.com/nachotacos69/WikiEater/edit/main/File%20Format%20List.md#pmf-format)
- [`CONF`](https://github.com/nachotacos69/WikiEater/edit/main/File%20Format%20List.md#conf-format)
- [`BIN/SPRX/PRX`](https://github.com/nachotacos69/WikiEater/edit/main/File%20Format%20List.md#binsprxprx-format)
- [`TBL/STBL`](https://github.com/nachotacos69/WikiEater/edit/main/File%20Format%20List.md#tblstbl-format)
- [`PGF`](https://github.com/nachotacos69/WikiEater/edit/main/File%20Format%20List.md#pgf-format)
- [`SSQ`](https://github.com/nachotacos69/WikiEater/edit/main/File%20Format%20List.md#ssq-format)
- [`DAT`](https://github.com/nachotacos69/WikiEater/edit/main/File%20Format%20List.md#dat-format)
- [`ACT`](https://github.com/nachotacos69/WikiEater/edit/main/File%20Format%20List.md#act-format)
- [`FPTH`](https://github.com/nachotacos69/WikiEater/edit/main/File%20Format%20List.md#fpth-format)
- [`SPS`](https://github.com/nachotacos69/WikiEater/edit/main/File%20Format%20List.md#sps-format)
- [`BLT`](https://github.com/nachotacos69/WikiEater/edit/main/File%20Format%20List.md#blt-format)
- [`TR2`](https://github.com/nachotacos69/WikiEater/edit/main/File%20Format%20List.md#tr2-format)
- [`KST`](https://github.com/nachotacos69/WikiEater/edit/main/File%20Format%20List.md#kst-format-god-eater-2)
- [`NAS`](https://github.com/nachotacos69/WikiEater/edit/main/File%20Format%20List.md#nas-format)
- [`ML/GMVL`](https://github.com/nachotacos69/WikiEater/edit/main/File%20Format%20List.md#mlgmvl-format)




# NO FILE FORMAT
- Files with no format, usually contains nothing or certain values by viewing on hex or containing wacky text here and there.

# RDP Format
- Signature/Header: (GE)-> `7F 45 4C 46 (ELF)` / (GE2)-> `72 64 70 (rdp)` (note: inside of `INSDIR`, the RDP there isn't a RDP but has a PGD Signature/Header)
- Usually contains a lot of important files for the main game.


# EDAT Format
[Source: https://www.psdevwiki.com/ps3/EDAT_files]
- Stored a encrypted information and needed to be decrypted by [npdecrypter](https://github.com/codestation/npdecrypter), usually for the DLC contents and such more, all games usually uses this for special/additional content for games like Downloadable Contents. GOD EATER uses this to store somekind of `EntryKey`, `DLC Content`, and much more. (note: `EntryKey` is important to unlock certain things like costume, extra mission, and etc.)

# PRES Format
- Signature/Header: `50 72 65 73 (Pres)`
- A specialized compression, which is like a virtual storage that has tons of structures/directories and a lot more, usually in a GZip or any other compression system.

# BLZ2 Format (GOD EATER 2)
- Signature/Header: `62 6C 7A 32 (blz2)`
- a ZLIB compression with header information. If i remember correctly, it's maximum size is on 0xFFFF or UINT16 maximum value (65535).

# STR Format
- This is usually a string file, contains a few or more texts, Sometimes for Layout and Spawnpoints/Spawn Area and more.

# GIM Format
[Source: https://www.psdevwiki.com/ps3/Graphic_Image_Map_(GIM)]
- A image that only support in PSP, PS3. this image format is used in many ways in game. This image has different color index and other stuff

# GMO Format
[Source: https://wiki.ffrtt.ru/index.php/PSP/GMO_Format]
- A model file format, Used in character/enemy models, camera, death and other hitbox.

# VAG Format
[Source: https://en.wikipedia.org/wiki/Adaptive_differential_pulse-code_modulation]
- Signature/Header: `56 41 47 70 (VAGp)`
- A Compressed audio file uses `ADPCM` and used in PSX, PS2, and PSP. You can hear them being used in some sound effects (click noises as an example). The file contains the name of the file too. Some audio frequency in GOD EATER uses somewhere `11000` Hz to `22000` Hz, samples is only `16`, as the channel is only `1` (mono).

# AT3 Format
[Source: https://en.wikipedia.org/wiki/ATRAC]
- Signature/Header: `52 49 46 46 (RIFF)`
- AT3 or ATRAC3, used a lot on game cutscenes, game background music and much more. although in some cases, some are small sized for looping audio for game BGM.

# PMF Format
[Source: https://www.psdevwiki.com/psp/PMF]
- Signature/Header: Can vary but GOD EATER has this signature, `50 53 4D 46 30 30 31 35 (PSMF0015)`
- Playstation Movie Format or PMF is a video file, can be played on `VLC` and can be used on `FFMPEG`, it's a video file, used in Game Opening, Tutorial Videos, and Credits.

# CONF Format
- it's a configuration file, you can pretty much modify the values if you know what you're doing.

# BIN/SPRX/PRX Format
[Source: https://en.wikipedia.org/wiki/Executable_and_Linkable_Format]
- `Executable and Linkable Format` or `ELF`. are files that is important in game. by default, they are encrypted sometimes in a `~PSP` signature or something, so you will need to decrypt them. ELFs are important in the game, i can't explain much since they are very long. So you will need to do some deep research.

# TBL/STBL Format
- Signature/Header: `53 74 52 74 41 62 4C 65 (StRtAbLe)`
- `TBL` consist in between important values that can only bee seen on HEX/Binary Editors, this usually has no headers. as for `STBL`, it has its own special header, consists of `Enemy Entry` related texts.

# PGF Format
- Signature/Header: `50 47 46 30 (PGF0)`
- This is a font format, GOD EATER uses it's own font instead of the PSP built in fonts.

# SSQ Format
- Signature/Header: `73 73 71 64 (ssqd)`
- they seem to have multiple functions, like KeyFrames or Parts, something like that.

# DAT Format
- Usually contains a few important Binary data, atleast on what i see on Binary Editors, or sometimes just completely empty

# ACT Format
- Signature/Header: `41 63 54 69 4F (AcTiOn)`
- This files are separated in two, `meta_motion` and `meta_effect`.
- First is `meta_motion`, which has another signature which is `4D 65 74 61 4D 6F 74 69 6F 6E (MetaMotion)`. This has connection betweeen `enemy_Hit.gmo` and the `model.gmo` or `motion.gmo`?.
- Second is `meta_effect`, which has another signature as well which is `45 6E 45 4D 79 45 66 46 65 43 74 (EnEMyEfFeCt)`. This has connection betweeen `enemy_Effect.gmo` and the `.sps` files?

# FPTH Format
- Signature/Header: `50 61 54 68 4D 61 54 72 49 78 (PaThMaTrIx)`
- This is a Field Path. Each Enemy has their own `.fpth` files, each will be different in every mission field, let's say there's a enemy on a bit big map, the `.fpth` file size will change size to match with that map, the size will change based on the maps being used, so they can be big or small, sometimes there will be duplicates which i don't know why.

# SPS Format
Signature/Header: `2E 53 50 53 (.SPS)` + `50 53 50 20 (PSP )`
- SPS or Shift Particle System is made by Shift, their functions (based on `EBOOT.BIN`) is in the following:
    + Creates/Summons Particles
    + Handle Particles any way
    + Manages Enemy Bullet Effects
    + Manages Enemy Effects (ex: smoke while walking/running, during enraged state like caligula's red evil eyes)
- There isn't any official tool for it to be modified.

# BLT Format
- A bullet for bot player and enemy, there's also `.obc` and `.obcf` for player/npc bullets, their purpose is to summon bullets based on their values given, some have names (usually in offset 0x10). Also you can modify them through HEX/Binary Editor, but be warned that you will experienced a lot of crashing if you put incorrect values.

# TR2 Format
- Signature: `2E 74 72 32 (.tr2)`
- These files are like special tables that contains a lot of text, important values, certain floats, and much more.


# KST Format (GOD EATER 2)
- Signature: `6B 73 74 31 (kst1)`
- Seems to be a like a semi-replacement for the `tr2` files, used only on some parts of the game.

# NAS Format
- unknown, but probably a sequence for NPCs.

# ML/GMVL Format
- This two are important for mission fields, `col.ml` is a collision manager, while the `GMVL` or sometimes `geometry_volume`, is somekind of volumes for the geometrys in the field, i suppose. contains some texts i suppose.



End.
