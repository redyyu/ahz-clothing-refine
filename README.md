# RefinedClothingOutfits
a project zomboid mod

Add modified clothing outfits.

Most items in this mod is combine form other MODs.
I may did some Organize, Re-Texture, Re-Modeling, Re-Balance.

Credit to: `ahz clothing`, `Ellie's Clothing Shop`, `Boots Expanded`.



## Develop

All masks for Shoes is used for fixing broken texture when other Clothes use `m_UnderlayMasksFolder`.
it't not happen with all clothes, only few, such as Winter Coat. 
The head part texture will broken, if Shoes masked head part. see the screen shot in `_assets`.
to fix that, just covered (show) the broken part in Shoes's mask with `m_UnderlayMasksFolder`.
still don't clear how the Masks work. 
`m_UnderlayMasksFolder` can cover (show) the part by the mask image,
such as make instep, like the `Masks/heels`

DON't know what is the `<m_MasksFolder></m_MasksFolder>` for, changed and nothing happen.


for the masks, `Jacket/Masks` is patch for Vanilla mask bugs.
the original `Head` mask is too much extands to covered right feet,
seems is not did on purpose. because original shoes is big and fat, 
but custom shoes will see the problem. fix it by modified the mask.

if with instep mask (like the feet part in `Shoes/masks/heels`) on some clothingItem (bodylocation before `Shoes`).
the instep will show. but it will cause many other problems. such as masks 8 and 10 will show instep anyway.

anyway, if move `Shoes` before others, 
that's most easy way to mask shoes but show instep and mask other part of feets.