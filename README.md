# RefinedClothingOutfits
a project zomboid mod

Add modified clothing outfits.

Most items in this mod is combine form other MODs.
I may did some Organize, Re-Texture, Re-Modeling, Re-Balance.

Credit to: `ahz clothing`, `Ellie's Clothing Shop`, `Boots Expanded`, `Ponchos`.



## Develop

All masks for Shoes is used for fixing broken texture when other Clothes use `m_UnderlayMasksFolder`.
it't not happen with all clothes, only few, such as Winter Coat. 
The head part texture will broken, if Shoes masked head part. see the screen shot in `_assets`.
to fix that, just covered (show) the broken part in Shoes's mask with `m_UnderlayMasksFolder`.

still don't clear how the Masks work. 
`m_UnderlayMasksFolder` can cover (show) the part by the mask image,
such as make instep, like the `Masks/heels`,
`m_UnderlayMasksFolder` can cover parts even masked by `<m_Masks>`.
if `<m_Masks>` masked 8, 10, but the image `Head.png` in `<m_UnderlayMasksFolder>` covered feet part.
the feet will show. 

*it might only work with clothing with model. not sure*

`m_UnderlayMasksFolder` can cause conflict with different clothes.
The `Winter Coat` (MOD:Spongie Clothing) with hoodie Up will see some broken texture at the side of head part.
that's might be the coat uv cross the feet part, so become masked, I guess. 
the MOD developer did't see the problem because the vanilla shoes is not a model.
when combine with `Boots Expaneds Vanilla` MOD, the prolbem will show.
(but the `Boots Expaneds` MOD is fine, that's because they move `Shoes` before others in BodyLocations.lua, 
which is not recommand override Vanilla coding like this. might conflict with other mods in other way.)

it's not passable to fix in `Winter Coat`'s mask, can be override the mask image in Shoes's masks.
but that will cause the feet parts unmasked when wearing other clothing.

*see the screenshot in `_assets`.*


DON't know what is the `<m_MasksFolder></m_MasksFolder>` use for.
it seems will effect texture.
see `BlackBoots` texture change a little bit, but I thing that's because clothingItems XML file reloaded.


for the masks, `Jacket/Masks` is patch for Vanilla mask bugs.
the original `Head` mask is too much extands to covered right feet,
seems is not did on purpose. because original shoes is big and fat, 
but custom shoes will see the problem. fix it by modified the mask.

if with instep mask (like the feet part in `Shoes/masks/heels`) on some clothingItem (bodylocation before `Shoes`).
the instep will show. but it will cause many other problems. such as masks 8 and 10 will show instep anyway.

anyway, if move `Shoes` before others, 
that's most easy way to mask shoes but show instep and mask other part of feets.