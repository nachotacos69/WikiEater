***[GEBUtils](https://github.com/nyirsh/GEBUtils) by nyirsh***

# YOU NEED TO COMPILE THIS BY THE WAY
- use a latest version of Visual Studip


**Good Things**
- Supports only GOD EATER BURST (USA, JP, EUR)
- supports DLC 1.0 to 1.61
- can extract slightly on package.rdp and the dlc contents

**Bad Things**
- Limits your modification by notifying you if a specific file is big or a few bytes free during repacking.
- DLC modification corrupts pretty easily.


# Usage
- extract `package.rdp`from your GEB ISO
- type `GEBExtractor` from the command prompt since you can only use it there
  one you type it, you will get a selection of features of what the script does
  ![Screenshot (63)](https://github.com/nachotacos69/WikiEater/assets/99103531/4fb49213-516f-4173-932e-58c67e365a0d)
- type `GEBExtractor -gen-index`, this will index `package.rdp`'s contents, although
  it takes some time, also same to QuickBMS God Eater 2 script, it has numbered files making it hard to read which one is either the file you need to edit..
 but they organized the file formats like the example below:
![Screenshot (65)](https://github.com/nachotacos69/WikiEater/assets/99103531/ed9fc612-b0cb-4cbd-a3f2-aa59a2267e23)

- after indexing, you can unpack the `package.rdp` by typing `GEBExtractor -unpack all` to extract `package.rdp` contents
  (this takes time by the way)
- after extraction, you can now check inside the `package` folder, where all the contents are extracted from
![Screenshot (66)](https://github.com/nachotacos69/WikiEater/assets/99103531/13b17df2-c19a-4b8a-a04b-5c3c03a995ef)


Notes:
- Compiling the tool is needed
- Although it works, chances of corruption is kind of somewhere in the middle of good and bad
- this method works as well with the dlc content, but i guess around which file to use but i only got
  `4a92f06c65fd9bc1536e36e89a065222.edat` as a perfect candidate for it
