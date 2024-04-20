# Requirements
to be honest, i suggest having:
- [GECV](https://github.com/HaoJun0823/GECV) tool already extracted
- TR2 Editor
- HxD
- Text Editor (i recommend Notepad++)
- an Excel App (MS Excel would do
- A good computer (sadly im on low end pc... but i still performed everything without problems *i think*)


# Notes
- always check around missing files, if you have one.. you gonna have to unpack everything again



# Basics - Extraction

1. grab your `bin.qpck` and move it inside `GECV-30_CHS` folder
2. Open `cmd` on the address bar of windows explorer, then change the code page by typing `chcp 936` so you can see the chinese texts later on
3. type `CODEEATER.exe bin.qpck ***(or whatever qpck that you want to mess around)*** [output directory name that you desir without these brackets]`
- Example: `CODEATER bin.qpck bin_output` [we will use `bin_output` folder as an example for now]
4. Afterwards, you will be greeted with some options in chinese texts and some other things and it will generate 10 folders in the main directory, i suggest you translate them.. but i will give my current knowledge on what they do:
    - First the **QPCK** method. What it does is extract `.qpck` contents then outputs them into `bin_output_BASE`, this will under an hour for the extraction to complete.
    - Second is the **PRES** method. This part Extracts `.pres` contents inside `bin_output_BASE` to `bin_output_UNPACK`, this will take hours to be completed since it will use a lot of RAM/Memory (depends if your computer is high end or low end)
    - Third is the **BLZ4** method. This will deflate? all the contents of `bin_output_UNPACK` then the output will be into `bin_output_UNPACK_PRES_REAL`, this doesnt use a lot of memory but still takes under an hour or minutes (depends if your computer is high end or low end)
    - Fourth is **GNF** method. this on only converts `.gnf` to `.dds` since they are textures for the game.


**-END OF PAGE-**