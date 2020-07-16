clear all
clc

ms.metal=['aluminium ';'copper    ';'iron      ';'molybdenum';'vanadium  ']
ms.symbol=['Al ';'Cu ';'Fe ';'Mo '; 'Co ';'V  ']
ms.atomic_number=[12;29;26;42;27;23]
ms.atomic_weight=[26.98;63.55;55.85;94.95;58.93;50.94]
ms.density=[2.71;8.94;7.87;10.22;8.9;6]
ms.crystal_structure=['FCC';'FCC';'BCC';'BCC';'HCP';'BCC']
max_len=1;
comp=ms.density(1,1);
for i=2:length(ms.density)
    if comp<ms.density(i,1)
        comp=ms.density(i,1);
        max_len=i;
    end
end
disp(ms.density(max_len,1))
disp(ms.metal(max_len,:))