.localvar 2 arguments

:[0]
b [70]

> gml_Script_scr_fusion_queue (locals=0, argc=1)
:[1]
push.v arg.argument0
call.i gml_Script_scr_fusion_info(argc=1)
popz.v
push.i 33262592
setowner.e
pushi.e -1
pushi.e 0
push.v [array]self.ingredient
pushi.e -1
push.v self.fusioncount
conv.v.i
pop.v.v [array]self.fusionIngredient1
push.i 33262594
setowner.e
pushi.e -1
pushi.e 1
push.v [array]self.ingredient
pushi.e -1
push.v self.fusioncount
conv.v.i
pop.v.v [array]self.fusionIngredient2
push.i 33262595
setowner.e
push.s "--"@10726
conv.s.v
pushi.e -1
push.v self.fusioncount
conv.v.i
pop.v.v [array]self.fusionIngredientName1
push.i 33262596
setowner.e
push.s "--"@10726
conv.s.v
pushi.e -1
push.v self.fusioncount
conv.v.i
pop.v.v [array]self.fusionIngredientName2
push.i 33262597
setowner.e
pushi.e -1
pushi.e 0
push.v [array]self.ingredienttype
pushi.e -1
push.v self.fusioncount
conv.v.i
pop.v.v [array]self.fusionIngredientType1
push.i 33262598
setowner.e
pushi.e -1
pushi.e 1
push.v [array]self.ingredienttype
pushi.e -1
push.v self.fusioncount
conv.v.i
pop.v.v [array]self.fusionIngredientType2
push.i 33262599
setowner.e
push.v self.resultdesc
pushi.e -1
push.v self.fusioncount
conv.v.i
pop.v.v [array]self.fusionDesc
push.i 33262600
setowner.e
push.v self.result
pushi.e -1
push.v self.fusioncount
conv.v.i
pop.v.v [array]self.fusionResult
push.i 33262601
setowner.e
push.v self.resulttype
pushi.e -1
push.v self.fusioncount
conv.v.i
pop.v.v [array]self.fusionResultType
push.i 33262602
setowner.e
push.s "--"@10726
conv.s.v
pushi.e -1
push.v self.fusioncount
conv.v.i
pop.v.v [array]self.fusionResultName
push.i 33262603
setowner.e
push.s "--"@10726
conv.s.v
pushi.e -1
push.v self.fusioncount
conv.v.i
pop.v.v [array]self.fusionResultTopComment
push.i 33262604
setowner.e
pushi.e 0
conv.i.v
pushi.e -1
push.v self.fusioncount
conv.v.i
pop.v.v [array]self.fusionHaveIngredient1
push.i 33262605
setowner.e
pushi.e 0
conv.i.v
pushi.e -1
push.v self.fusioncount
conv.v.i
pop.v.v [array]self.fusionHaveIngredient2
push.i 33262606
setowner.e
pushi.e 0
conv.i.v
pushi.e -1
push.v self.fusioncount
conv.v.i
pop.v.v [array]self.fusionCanMake
pushi.e -1
push.v self.fusioncount
conv.v.i
push.v [array]self.fusionIngredientType1
push.s "item"@229
cmp.s.v EQ
bf [4]

:[2]
pushi.e -1
push.v self.fusioncount
conv.v.i
push.v [array]self.fusionIngredient1
call.i gml_Script_scr_iteminfo(argc=1)
popz.v
push.i 33262595
setowner.e
push.v self.itemnameb
pushi.e -1
push.v self.fusioncount
conv.v.i
pop.v.v [array]self.fusionIngredientName1
pushi.e -1
push.v self.fusioncount
conv.v.i
push.v [array]self.fusionIngredient1
call.i gml_Script_scr_itemcheck(argc=1)
conv.v.b
bf [4]

:[3]
push.i 33262604
setowner.e
pushi.e 1
conv.i.v
pushi.e -1
push.v self.fusioncount
conv.v.i
pop.v.v [array]self.fusionHaveIngredient1

:[4]
pushi.e -1
push.v self.fusioncount
conv.v.i
push.v [array]self.fusionIngredientType1
push.s "weapon"@231
cmp.s.v EQ
bf [7]

:[5]
pushi.e -1
push.v self.fusioncount
conv.v.i
push.v [array]self.fusionIngredient1
call.i gml_Script_scr_weaponinfo(argc=1)
popz.v
push.i 33262595
setowner.e
push.v self.weaponnametemp
pushi.e -1
push.v self.fusioncount
conv.v.i
pop.v.v [array]self.fusionIngredientName1
pushi.e -1
push.v self.fusioncount
conv.v.i
push.v [array]self.fusionIngredient1
call.i gml_Script_scr_weaponcheck_inventory(argc=1)
conv.v.b
bf [7]

:[6]
push.i 33262604
setowner.e
pushi.e 1
conv.i.v
pushi.e -1
push.v self.fusioncount
conv.v.i
pop.v.v [array]self.fusionHaveIngredient1

:[7]
pushi.e -1
push.v self.fusioncount
conv.v.i
push.v [array]self.fusionIngredientType1
push.s "armor"@232
cmp.s.v EQ
bf [10]

:[8]
pushi.e -1
push.v self.fusioncount
conv.v.i
push.v [array]self.fusionIngredient1
call.i gml_Script_scr_armorinfo(argc=1)
popz.v
push.i 33262595
setowner.e
push.v self.armornametemp
pushi.e -1
push.v self.fusioncount
conv.v.i
pop.v.v [array]self.fusionIngredientName1
pushi.e -1
push.v self.fusioncount
conv.v.i
push.v [array]self.fusionIngredient1
call.i gml_Script_scr_armorcheck_inventory(argc=1)
conv.v.b
bf [10]

:[9]
push.i 33262604
setowner.e
pushi.e 1
conv.i.v
pushi.e -1
push.v self.fusioncount
conv.v.i
pop.v.v [array]self.fusionHaveIngredient1

:[10]
pushi.e -1
push.v self.fusioncount
conv.v.i
push.v [array]self.fusionIngredientType1
push.s "key"@39
cmp.s.v EQ
bf [13]

:[11]
pushi.e -1
push.v self.fusioncount
conv.v.i
push.v [array]self.fusionIngredient1
call.i gml_Script_scr_keyiteminfo(argc=1)
popz.v
push.i 33262595
setowner.e
push.v self.tempkeyitemname
pushi.e -1
push.v self.fusioncount
conv.v.i
pop.v.v [array]self.fusionIngredientName1
pushi.e -1
push.v self.fusioncount
conv.v.i
push.v [array]self.fusionIngredient1
call.i gml_Script_scr_keyitemcheck(argc=1)
conv.v.b
bf [13]

:[12]
push.i 33262604
setowner.e
pushi.e 1
conv.i.v
pushi.e -1
push.v self.fusioncount
conv.v.i
pop.v.v [array]self.fusionHaveIngredient1

:[13]
pushi.e 0
pop.v.i self.identicalcheck
pushi.e -1
push.v self.fusioncount
conv.v.i
push.v [array]self.fusionIngredientType2
pushi.e -1
push.v self.fusioncount
conv.v.i
push.v [array]self.fusionIngredientType2
cmp.v.v EQ
bf [16]

:[14]
pushi.e -1
push.v self.fusioncount
conv.v.i
push.v [array]self.fusionIngredient1
pushi.e -1
push.v self.fusioncount
conv.v.i
push.v [array]self.fusionIngredient2
cmp.v.v EQ
bf [16]

:[15]
pushi.e 1
pop.v.i self.identicalcheck

:[16]
pushi.e -1
push.v self.fusioncount
conv.v.i
push.v [array]self.fusionIngredientType2
push.s "item"@229
cmp.s.v EQ
bf [26]

:[17]
pushi.e -1
push.v self.fusioncount
conv.v.i
push.v [array]self.fusionIngredient2
call.i gml_Script_scr_iteminfo(argc=1)
popz.v
push.i 33262596
setowner.e
push.v self.itemnameb
pushi.e -1
push.v self.fusioncount
conv.v.i
pop.v.v [array]self.fusionIngredientName2
pushi.e -1
push.v self.fusioncount
conv.v.i
push.v [array]self.fusionIngredient2
call.i gml_Script_scr_itemcheck(argc=1)
conv.v.b
bf [26]

:[18]
push.v self.identicalcheck
pushi.e 0
cmp.i.v EQ
bt [23]

:[19]
push.v self.identicalcheck
pushi.e 1
cmp.i.v EQ
bf [21]

:[20]
push.v self.itemcount
pushi.e 2
cmp.i.v GTE
b [22]

:[21]
push.e 0

:[22]
b [24]

:[23]
push.e 1

:[24]
bf [26]

:[25]
push.i 33262605
setowner.e
pushi.e 1
conv.i.v
pushi.e -1
push.v self.fusioncount
conv.v.i
pop.v.v [array]self.fusionHaveIngredient2

:[26]
pushi.e -1
push.v self.fusioncount
conv.v.i
push.v [array]self.fusionIngredientType2
push.s "weapon"@231
cmp.s.v EQ
bf [36]

:[27]
pushi.e -1
push.v self.fusioncount
conv.v.i
push.v [array]self.fusionIngredient2
call.i gml_Script_scr_weaponinfo(argc=1)
popz.v
push.i 33262596
setowner.e
push.v self.weaponnametemp
pushi.e -1
push.v self.fusioncount
conv.v.i
pop.v.v [array]self.fusionIngredientName2
pushi.e -1
push.v self.fusioncount
conv.v.i
push.v [array]self.fusionIngredient2
call.i gml_Script_scr_weaponcheck_inventory(argc=1)
conv.v.b
bf [36]

:[28]
push.v self.identicalcheck
pushi.e 0
cmp.i.v EQ
bt [33]

:[29]
push.v self.identicalcheck
pushi.e 1
cmp.i.v EQ
bf [31]

:[30]
push.v self.itemcount
pushi.e 2
cmp.i.v GTE
b [32]

:[31]
push.e 0

:[32]
b [34]

:[33]
push.e 1

:[34]
bf [36]

:[35]
push.i 33262605
setowner.e
pushi.e 1
conv.i.v
pushi.e -1
push.v self.fusioncount
conv.v.i
pop.v.v [array]self.fusionHaveIngredient2

:[36]
pushi.e -1
push.v self.fusioncount
conv.v.i
push.v [array]self.fusionIngredientType2
push.s "armor"@232
cmp.s.v EQ
bf [46]

:[37]
pushi.e -1
push.v self.fusioncount
conv.v.i
push.v [array]self.fusionIngredient2
call.i gml_Script_scr_armorinfo(argc=1)
popz.v
push.i 33262596
setowner.e
push.v self.armornametemp
pushi.e -1
push.v self.fusioncount
conv.v.i
pop.v.v [array]self.fusionIngredientName2
pushi.e -1
push.v self.fusioncount
conv.v.i
push.v [array]self.fusionIngredient2
call.i gml_Script_scr_armorcheck_inventory(argc=1)
conv.v.b
bf [46]

:[38]
push.v self.identicalcheck
pushi.e 0
cmp.i.v EQ
bt [43]

:[39]
push.v self.identicalcheck
pushi.e 1
cmp.i.v EQ
bf [41]

:[40]
push.v self.itemcount
pushi.e 2
cmp.i.v GTE
b [42]

:[41]
push.e 0

:[42]
b [44]

:[43]
push.e 1

:[44]
bf [46]

:[45]
push.i 33262605
setowner.e
pushi.e 1
conv.i.v
pushi.e -1
push.v self.fusioncount
conv.v.i
pop.v.v [array]self.fusionHaveIngredient2

:[46]
pushi.e -1
push.v self.fusioncount
conv.v.i
push.v [array]self.fusionIngredientType2
push.s "key"@39
cmp.s.v EQ
bf [56]

:[47]
pushi.e -1
push.v self.fusioncount
conv.v.i
push.v [array]self.fusionIngredient2
call.i gml_Script_scr_keyiteminfo(argc=1)
popz.v
push.i 33262596
setowner.e
push.v self.tempkeyitemname
pushi.e -1
push.v self.fusioncount
conv.v.i
pop.v.v [array]self.fusionIngredientName2
pushi.e -1
push.v self.fusioncount
conv.v.i
push.v [array]self.fusionIngredient2
call.i gml_Script_scr_keyitemcheck(argc=1)
conv.v.b
bf [56]

:[48]
push.v self.identicalcheck
pushi.e 0
cmp.i.v EQ
bt [53]

:[49]
push.v self.identicalcheck
pushi.e 1
cmp.i.v EQ
bf [51]

:[50]
push.v self.itemcount
pushi.e 2
cmp.i.v GTE
b [52]

:[51]
push.e 0

:[52]
b [54]

:[53]
push.e 1

:[54]
bf [56]

:[55]
push.i 33262605
setowner.e
pushi.e 1
conv.i.v
pushi.e -1
push.v self.fusioncount
conv.v.i
pop.v.v [array]self.fusionHaveIngredient2

:[56]
pushi.e -1
push.v self.fusioncount
conv.v.i
push.v [array]self.fusionResultType
push.s "item"@229
cmp.s.v EQ
bf [58]

:[57]
pushi.e -1
push.v self.fusioncount
conv.v.i
push.v [array]self.fusionResult
call.i gml_Script_scr_iteminfo(argc=1)
popz.v
push.i 33262602
setowner.e
push.v self.itemnameb
pushi.e -1
push.v self.fusioncount
conv.v.i
pop.v.v [array]self.fusionResultName
push.i 33262603
setowner.e
pushi.e -1
push.v self.fusioncount
conv.v.i
push.v [array]self.fusionResult
call.i gml_Script_scr_itemdesc_single(argc=1)
pushi.e -1
push.v self.fusioncount
conv.v.i
pop.v.v [array]self.fusionResultTopComment

:[58]
pushi.e -1
push.v self.fusioncount
conv.v.i
push.v [array]self.fusionResultType
push.s "weapon"@231
cmp.s.v EQ
bf [60]

:[59]
pushi.e -1
push.v self.fusioncount
conv.v.i
push.v [array]self.fusionResult
call.i gml_Script_scr_weaponinfo(argc=1)
popz.v
push.i 33262602
setowner.e
push.v self.weaponnametemp
pushi.e -1
push.v self.fusioncount
conv.v.i
pop.v.v [array]self.fusionResultName
push.i 33262603
setowner.e
push.v self.weapondesctemp
pushi.e -1
push.v self.fusioncount
conv.v.i
pop.v.v [array]self.fusionResultTopComment

:[60]
pushi.e -1
push.v self.fusioncount
conv.v.i
push.v [array]self.fusionResultType
push.s "armor"@232
cmp.s.v EQ
bf [62]

:[61]
pushi.e -1
push.v self.fusioncount
conv.v.i
push.v [array]self.fusionResult
call.i gml_Script_scr_armorinfo(argc=1)
popz.v
push.i 33262602
setowner.e
push.v self.armornametemp
pushi.e -1
push.v self.fusioncount
conv.v.i
pop.v.v [array]self.fusionResultName
push.i 33262603
setowner.e
push.v self.armordesctemp
pushi.e -1
push.v self.fusioncount
conv.v.i
pop.v.v [array]self.fusionResultTopComment

:[62]
pushi.e -1
push.v self.fusioncount
conv.v.i
push.v [array]self.fusionResultType
push.s "key"@39
cmp.s.v EQ
bf [64]

:[63]
pushi.e -1
push.v self.fusioncount
conv.v.i
push.v [array]self.fusionResult
call.i gml_Script_scr_keyiteminfo(argc=1)
popz.v
push.i 33262602
setowner.e
push.v self.tempkeyitemname
pushi.e -1
push.v self.fusioncount
conv.v.i
pop.v.v [array]self.fusionResultName
push.i 33262603
setowner.e
push.v self.tempkeyitemdesc
pushi.e -1
push.v self.fusioncount
conv.v.i
pop.v.v [array]self.fusionResultTopComment

:[64]
pushi.e -1
push.v self.fusioncount
conv.v.i
push.v [array]self.fusionHaveIngredient1
conv.v.b
bf [66]

:[65]
pushi.e -1
push.v self.fusioncount
conv.v.i
push.v [array]self.fusionHaveIngredient2
conv.v.b
b [67]

:[66]
push.e 0

:[67]
bf [69]

:[68]
push.i 33262606
setowner.e
pushi.e 1
conv.i.v
pushi.e -1
push.v self.fusioncount
conv.v.i
pop.v.v [array]self.fusionCanMake

:[69]
push.v self.fusioncount
push.e 1
add.i.v
pop.v.v self.fusioncount
exit.i

:[70]
push.i [function]gml_Script_scr_fusion_queue
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_fusion_queue
popz.v

:[end]