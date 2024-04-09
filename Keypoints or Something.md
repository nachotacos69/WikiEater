# This will cover all of the related stuff you can find on some of these scripts


I. Texts Files with Indexes

- they are rather important since they are for the `.tr2`, `.xml` and `kst`? from what i could understand
![Screenshot (69)](https://github.com/nachotacos69/WikiEater/assets/99103531/7e4954fe-fcce-4cd7-bbeb-ecd1e0cc18df)

  1. here's an example for the GEBCS version of text index
- from the GEBCS version, its pretty simple i suppose, not much of a problem


2. this here is for the GE2 Script
![Screenshot (70)](https://github.com/nachotacos69/WikiEater/assets/99103531/41e6eb77-248e-4f99-b01a-7f2dc3395133)
- same as GEBCS but rather a bit complex on that first part above
- it displays total counts to strings/index, [CRLF](https://en.wikipedia.org/wiki/Newline), and the name of the text file itself, then its type and encoding



II. Types of Decompression/Compression/Deflation Methods?
- from what i can understand, the tools uses a blz4, zlib methods to to deflate/decompress the files within
  `package.rdp` and possibly it works the same for the dlc contents?. Im just guessing


III. `.TR2` and it's structure
- Here's an image on how the .tr2 works and its structure
 ![TR2 modding (useful for GEB, GE2, GER, GE2RB)](https://github.com/nachotacos69/WikiEater/assets/99103531/f3419b80-ad05-4780-a67b-27976f67b8dd)

- You can find some related values/stuff there:
 **Uint8, Uint16, Uint32
  Int8, Int16, Int32
  ASCII, UTF-8, UTF16LE, FLOAT32**
 i commonly find these on Aragami Health Points and their status for other things

IV. `vag` and `at3` audio formats
- `.at3` is commonly used from cutscenes and BGM during combat, and BGM for anagura (DEN in english version),
  field environment BGM (during non combat state), they are replaceable with custom BGM or replacement audio from cutscenes
  **IF** you don't overlapse the file size of the original `.at3`
- `vag` is commonly used for sound effects from:
  - Aragamis
  - NPC & Player
  - Other Sound Effects from the game
  Like `.at3` they are replaceable **IF** you don't overlapse the file size of the original `.vag`





  
