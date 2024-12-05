# Exploring GOD EATER 2 [PSP] - archives
- all informations are samples, some structure might be different for each .res archives, or nested .res archives
- you might do your own research if you want to though to be honest


Made By: Yamato Nagasaki


## Based in between C# code provided by SkyBladeCloud and some random knowledge of mine



Hierarchy/Master: `system.res` and `system_update.res`
File contents required:
1. data.rdp *not the data install version*
2. package.rdp
3. patch.rdp


# PRES
File Format: .res

|      Type     |                Value                |                                                                                    Description                                                                                    |
|:-------------:|:-----------------------------------:|:---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------:|
| Header        | ASCII: `Pres`<br>HEX: `50 72 65 73` | (takes 4 bytes): Header. int32                                                                                                                                                    |
| Group Offset  | HEX: `20 00 00 00`                  | (takes 4 bytes): Offset. int32, where **EntryGroup** begins to do its stuff offset `0x20`.<br>`0x10` is avoided for i don't know reasons. but i guess you can try to mess around. |
| Group Count   | HEX: `08`                           | (takes 4 bytes): Group Count. ¯\_(ツ)_/¯                                                                                                                                          |
| Group Version | HEX: `03`                           | (takes 1 byte): likely version number. but probably would change on other `res` archives?.                                                                                        |
| unknown       | HEX: `6E 7C`                        | (takes 2 bytes): unknown field, Int16. I don't know either.                                                                                                                       |
| Version       | HEX: `03 00 00 00`                  | (takes 4 bytes): Version number. int32. (major version?)                                                                                                                          |


# EntryGroups
this counts groups for each files or like a total file count, but im not sure?

|     Type     |        Value       |                                                                         Description                                                                         |
|:------------:|:------------------:|:-----------------------------------------------------------------------------------------------------------------------------------------------------------:|
| Entry Offset | HEX: `00 15 00 00` | (takes 4 bytes): UINT32 hexadecimal. little endian. convert it to Big Endian to get accurate offset address to go to that specific section. example: 0x1500 |
| Entry Count  | HEX: `03 00 00 00` | (takes 4 bytes): UINT32 hexadecimal. some kind of entry count<br>for each files seen in a .res file?. im not really sure lol.                               |
- im not sure aboout the rest of the bytes, but assume we can consider them as EntryGroups?

# HEX Data Sample for Both PRES and EntryGroup:
![Pres 1](https://github.com/user-attachments/assets/68c0b118-8952-4ded-b42a-bd1de327c590)



# FileEntry

|Address Mode Type	|Input	|
|:------------------|:-------|
| **0x40** 			|PACKAGE. *Based on package.rdp input file*|
| **0x50** 			|DATA. *Based on data.rdp input file*|
| **0x60** 			|PATCH. *Based on patch.rdp input file*|
| **0xC0 or 0xD0?**|CURRENT.*Based on the file being currently reading which means,<br>no changes and no hopping to other files)*<br>*but im not really sure about the 0xD0 part so yeah.*|


#  Information
|        Type       |        Value         |                       Description                                                                                                                                                                                                                                                                                                                                |
|:-----------------:|----------------------|--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| File Offset       | HEX(UINT24): `00 35 00`<br>HEX(UINT32): `00 35 00 C0`      | (takes 4 or 3 bytes): UINT24/UINT32. Depends on what you like to choose.<br>Little Endian hexadecimal address. Convert it to *Big Endian* to make it readable. <br>`Example: 0x003500C0 (LE) -> 0xC0003500 (BE)`                                                                                                                               |
| Address Mode      | HEX: `C0`            | (takes one byte): INT8 Little Endian, it's an Identification for the `Address Mode Type`. So it doesn't need for it to be Big Endian.<br>Take for example, if `Address Mode Type = 0x4 or 0x40 ` *to whatever you want it to be interpreted*.<br><br>The game will attempt to go to a specific RDP file based on that `Address Mode Type`. |
| Compressed Size   | HEX: `4F AF 0E 00`   | (takes 4 bytes): UINT32 value. Chunk/File Size of that `File Offset`.<br>The game starts using `File Offset's` offset from the start of that data to<br>start gathering until Compressed Size is satisfied reaching the correct size.                                                                                                      |
| File Name Offset  | HEX: `60 15 00 00`   | (takes 4 bytes): UINT32 value or `00001560` in Big Endian if sorted correctly. Offset filename for `File Offset` contents.                                                                                                                                                                                                                 |
| File Name Count   | HEX: `03 00 00 00`   | (takes 4 bytes): UINT32 value or `3`. related to File Name. Based on the total values on that section.<br>related to filename + extension  kind of stuff.                                                                                                                                                                                  |
| zeroes            | HEX in length: `0xC` | (takes 12 bytes): just some padding i suppose.                                                                                                                                                                                                                                                                                             |
| Decompressed Size | HEX: `C0 7F 13 00`   | (takes 4 bytes): Expected Size if that `Compressed Size` is decompressed.<br>this is only related to **ZLIB** compression type with header information, which is **blz2**.                                                                                                                                                                 |

- For the *Compression*, the game uses **ZLIB**. Decompression should be easy by doing some research on ZLIB Decompression.

- Next is formula for offset calculation: `FileOffset * 800 = [true offset]`
- Formula Example: `40000006` then replace 4 with 0. or completely ignore it, that's a package.rdp content related file: `00000006 * 800 = 3000 or (0x3000)` as the true offset and where the file content located at based on addressMode. and this mean, this file comes from package.rdp

#### HEX Data Samples for FileEntry but will be different to other files so use only this as a example:
![fileentry](https://github.com/user-attachments/assets/f2e39c3a-b426-4b5e-b196-0632399d73f1)



# FileInfo

- This part mostly gathers that file's name. Based on **File Name Offset**

|      Type      |        Value       |                                                     Description                                                     |
|:--------------:|:-------------------|:-------------------------------------------------------------------------------------------------------------------:|
| File Name      | HEX: `6C 15 00 00` | (takes 4 bytes). UINT32 Little Endian. start of the filename. UTF-8 as their default text encoding.                 |
| File Extension | HEX: `7A 15 00 00` | (takes 4 bytes). UINT32. file extension of that filename. trim the zero.                                            |
| File Padding   | Hex: `7E 15`       | (takes 2/4 bytes). in between UINT16/UINT32. padding, full zeroes.<br>not necessary to add for your generated file. |

- if `FileEXT` and `FilePadding` doesn't exists. rely on `FileName`. still trim zeroes at the end.

#### HEX sample code but will be different to other files so use only this as a example:
![fileinfo](https://github.com/user-attachments/assets/765a362a-15ad-4721-8d9c-b2d73f373fb3)




