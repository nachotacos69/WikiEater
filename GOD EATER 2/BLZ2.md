# TOPIC - BLZ2

# BLZ 2 Data information (atleast for now)
#### Source: GECV by [HaoJun0823](https://github.com/HaoJun0823)
##### i tried my best to retranslate the structure, since originally it was chinese documented. so either most of these parts are my own understanding on the BLZ2 structure.

```
=Start=
Magic: blz2 (0x327a6c62)
==Start Block==
Chunk Size: usually at 0xffff, by that means that the file is UINT16, 65535 by maximum.
Chunk Data: File's Stored data, Compressed by the Zlib.Deflate.
==Block End==

==Packing Process (AI translation)==
If there is a file size less than or equal to 0xff,
then this file will not be compressed by BLZ2,
so such a file will always have only one block with
chunk_size equal to the file size.
- zlib configuration reference: ((9, zlib.DEFLATED, -15)) (Python)

==Unpacking Process?? (AI translation)==
Suppose there are 8 blocks, 01234567.
according to 12345670 respectively zlib decompression and then extracted.
```
##### Original Text Document:[噬神者PC版本文件结构1.6.txt](https://github.com/user-attachments/files/16245326/PC.1.6.txt)

##### AI Translation: [God Eater PC Version File Structure 1.6.txt](https://github.com/user-attachments/files/16245330/God.Eater.PC.Version.File.Structure.1.6.txt)


**Heads Up!**: currently i have no brains to do this documentation, but for now all i can say is that blz2 contains usually important and compressed assets in game
`gmo` format

- header: `blz2` / `62 6C 7A 32`
![Screenshot (158)](https://github.com/nachotacos69/WikiEater/assets/99103531/388a3052-0139-4dd1-a787-54b255bbc190)


when unpacked using **[GECV BLZ Tool](https://github.com/HaoJun0823/GECV)**
we will have a different view of the file

- header: `gmo` / `4F 4D 47 2E 30 30 2E 31 50 53 50` -> `OMG.00.1PSP`
![Screenshot (159)](https://github.com/nachotacos69/WikiEater/assets/99103531/0446ced0-566f-413c-993e-336b5b826d13)

I apparently extracted the Amaterasu Motion since the only way to identify the file is to search for `.gim` atleast for me
![Screenshot (160)](https://github.com/nachotacos69/WikiEater/assets/99103531/f6bf3084-f818-4c0c-b559-e69f96c2e667)
