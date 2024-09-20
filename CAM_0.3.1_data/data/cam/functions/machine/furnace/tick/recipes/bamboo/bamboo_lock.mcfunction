data modify block ~ ~ ~ CookTime set value 0s
execute if data block ~ ~ ~ {BurnTime:1s} if data block ~ ~ ~ {Items:[{Slot:1b}]} run data modify block ~ ~ ~ BurnTime set value 2s
execute if data block ~ ~ ~ {BurnTime:0s} if data block ~ ~ ~ {Items:[{Slot:1b}]} run data modify block ~ ~ ~ BurnTime set value 1s