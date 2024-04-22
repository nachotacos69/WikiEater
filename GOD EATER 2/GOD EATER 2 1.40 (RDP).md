# Contents
1. **package.rdp**
2. **data.rdp** (soon)

Note: I am using 1.40 ISO, This is just some findings that i only post, i suggest view the entire .rdp in HxD by yourself if you want to learn about this alone

# PACKAGE
- RDP header???: `72 64 70 20 20 20 20 20 20 20 20 20 20 20 20 20 D1 EB 6D CA 90 9F 4C EA 81 35 EB 5A 14 D7 1A 4E` -> `rdp             ÑëmÊŸLê5ëZ×N`
![Screenshot (139)](https://github.com/nachotacos69/WikiEater/assets/99103531/d716be58-70a6-44dc-9289-acdcb816f4ec)

- Block `20-7FF` is empty or just full of `00`
- ELF: `7F 45 4C 46 01 01 01` -> `ELF`
![Screenshot (141)](https://github.com/nachotacos69/WikiEater/assets/99103531/4df92978-eeae-4b1c-89df-3ad898d7f1ef)

- BLZ2: `62 6C 7A 32` -> `blz2` (really important and it uses this a lot by the way)
![Screenshot (142)](https://github.com/nachotacos69/WikiEater/assets/99103531/7692cf3a-be6a-4216-8d3a-80e51da45959)


- Pres: `50 72 65 73 20` -> `Pres ` (really important and it uses this a lot by the way)
![Screenshot (143)](https://github.com/nachotacos69/WikiEater/assets/99103531/6086e119-c0db-4324-bad3-b3ce91be9745)

- bin: `00 62 69 6E` -> `�bin`
![Screenshot (144)](https://github.com/nachotacos69/WikiEater/assets/99103531/8263947f-9294-4098-87de-71779d0313eb)


- gim: `00 67 69 6D` -> `�gim`
![Screenshot (145)](https://github.com/nachotacos69/WikiEater/assets/99103531/565526fd-f7e0-4951-ab38-a2922d9308f8)

- gmo: `00 67 6D 6F` -> `�gmo`
![Screenshot (146)](https://github.com/nachotacos69/WikiEater/assets/99103531/78b86752-50d7-4d9a-aa97-4e1e0b23fa73)

- ssq: `00 73 73 71` -> `�ssq`
![Screenshot (147)](https://github.com/nachotacos69/WikiEater/assets/99103531/0f65f2dd-d4c4-4c5d-b746-b30df4298fca)








