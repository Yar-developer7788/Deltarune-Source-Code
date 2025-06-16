.localvar 2 arguments

:[0]
b [15]

> gml_Script_scr_fusion_info (locals=0, argc=1)
:[1]
push.i 33197051
setowner.e
pushi.e 8
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.ingredient
push.i 33197052
setowner.e
push.s "item"@229
conv.s.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.ingredienttype
push.i 33197051
setowner.e
pushi.e 8
conv.i.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.ingredient
push.i 33197052
setowner.e
push.s "item"@229
conv.s.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.ingredienttype
pushi.e 22
pop.v.i self.result
push.s "item"@229
pop.v.s self.resulttype
push.s "scr_fusion_info_slash_scr_fusion_info_gml_11_0"@10708
conv.s.v
push.s "Heal 60 HPx2"@10709
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.resultdesc
push.v arg.argument0
dup.v 0
pushi.e 1
cmp.i.v EQ
bt [8]

:[2]
dup.v 0
pushi.e 2
cmp.i.v EQ
bt [9]

:[3]
dup.v 0
pushi.e 3
cmp.i.v EQ
bt [10]

:[4]
dup.v 0
pushi.e 4
cmp.i.v EQ
bt [11]

:[5]
dup.v 0
pushi.e 5
cmp.i.v EQ
bt [12]

:[6]
dup.v 0
pushi.e 6
cmp.i.v EQ
bt [13]

:[7]
b [14]

:[8]
push.i 33197051
setowner.e
pushi.e 8
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.ingredient
push.i 33197052
setowner.e
push.s "item"@229
conv.s.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.ingredienttype
push.i 33197051
setowner.e
pushi.e 8
conv.i.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.ingredient
push.i 33197052
setowner.e
push.s "item"@229
conv.s.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.ingredienttype
pushi.e 22
pop.v.i self.result
push.s "item"@229
pop.v.s self.resulttype
push.s "scr_fusion_info_slash_scr_fusion_info_gml_23_0"@10711
conv.s.v
push.s "Heal 60 HPx2"@10709
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.resultdesc
b [14]

:[9]
push.i 33197051
setowner.e
pushi.e 1
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.ingredient
push.i 33197052
setowner.e
push.s "armor"@232
conv.s.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.ingredienttype
push.i 33197051
setowner.e
pushi.e 1
conv.i.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.ingredient
push.i 33197052
setowner.e
push.s "armor"@232
conv.s.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.ingredienttype
pushi.e 8
pop.v.i self.result
push.s "armor"@232
pop.v.s self.resulttype
push.s "scr_fusion_info_slash_scr_fusion_info_gml_34_0"@10712
conv.s.v
push.s "$ Gained +5%"@10713
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.resultdesc
b [14]

:[10]
push.i 33197051
setowner.e
pushi.e 3
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.ingredient
push.i 33197052
setowner.e
push.s "armor"@232
conv.s.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.ingredienttype
push.i 33197051
setowner.e
pushi.e 4
conv.i.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.ingredient
push.i 33197052
setowner.e
push.s "armor"@232
conv.s.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.ingredienttype
pushi.e 9
pop.v.i self.result
push.s "armor"@232
pop.v.s self.resulttype
push.s "scr_fusion_info_slash_scr_fusion_info_gml_56_0"@10714
conv.s.v
push.s "Graze Area+"@10715
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.resultdesc
b [14]

:[11]
push.i 33197051
setowner.e
pushi.e 10
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.ingredient
push.i 33197052
setowner.e
push.s "armor"@232
conv.s.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.ingredienttype
push.i 33197051
setowner.e
pushi.e 5
conv.i.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.ingredient
push.i 33197052
setowner.e
push.s "armor"@232
conv.s.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.ingredienttype
pushi.e 13
pop.v.i self.result
push.s "armor"@232
pop.v.s self.resulttype
push.s "scr_fusion_info_slash_scr_fusion_info_gml_56_0_b"@10716
conv.s.v
push.s "Attack+"@10717
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.resultdesc
b [14]

:[12]
push.i 33197051
setowner.e
pushi.e 12
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.ingredient
push.i 33197052
setowner.e
push.s "armor"@232
conv.s.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.ingredienttype
push.i 33197051
setowner.e
pushi.e 27
conv.i.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.ingredient
push.i 33197052
setowner.e
push.s "item"@229
conv.s.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.ingredienttype
pushi.e 15
pop.v.i self.result
push.s "armor"@232
pop.v.s self.resulttype
push.s "scr_fusion_info_slash_scr_fusion_info_gml_67_0"@10718
conv.s.v
push.s "Graze TP+"@10719
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.resultdesc
b [14]

:[13]
push.i 33197051
setowner.e
pushi.e 13
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.ingredient
push.i 33197052
setowner.e
push.s "weapon"@231
conv.s.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.ingredienttype
push.i 33197051
setowner.e
pushi.e 15
conv.i.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.ingredient
push.i 33197052
setowner.e
push.s "key"@39
conv.s.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.ingredienttype
pushi.e 11
pop.v.i self.result
push.s "weapon"@231
pop.v.s self.resulttype
push.s "scr_fusion_info_slash_scr_fusion_info_gml_45_0"@10720
conv.s.v
push.s "Trance"@8762
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.resultdesc
b [14]

:[14]
popz.v
exit.i

:[15]
push.i [function]gml_Script_scr_fusion_info
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_fusion_info
popz.v

:[end]