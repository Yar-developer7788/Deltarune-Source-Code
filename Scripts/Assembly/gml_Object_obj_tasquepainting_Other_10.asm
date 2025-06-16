.localvar 2 arguments

:[0]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.v self.extflag
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
push.v self.image_index
pushi.e 0
cmp.i.v EQ
b [3]

:[2]
push.e 0

:[3]
bf [5]

:[4]
push.s "obj_tasquepainting_slash_Other_10_gml_5_0"@38016
conv.s.v
push.s "* (The painting is labelled \"Task\".)/%"@38017
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[5]
push.v self.extflag
pushi.e 2
cmp.i.v EQ
bf [7]

:[6]
push.v self.image_index
pushi.e 0
cmp.i.v EQ
b [8]

:[7]
push.e 0

:[8]
bf [10]

:[9]
push.s "obj_tasquepainting_slash_Other_10_gml_10_0"@38018
conv.s.v
push.s "* (The painting is labelled \"Timberly\".)/%"@38019
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[10]
push.v self.extflag
pushi.e 3
cmp.i.v EQ
bf [12]

:[11]
push.v self.image_index
pushi.e 0
cmp.i.v EQ
b [13]

:[12]
push.e 0

:[13]
bf [15]

:[14]
push.s "obj_tasquepainting_slash_Other_10_gml_15_0"@38020
conv.s.v
push.s "* (The painting is labelled \"Tasq\".)/%"@38021
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[15]
push.v self.extflag
pushi.e 4
cmp.i.v EQ
bf [17]

:[16]
push.v self.image_index
pushi.e 0
cmp.i.v EQ
b [18]

:[17]
push.e 0

:[18]
bf [20]

:[19]
push.s "obj_tasquepainting_slash_Other_10_gml_20_0"@38022
conv.s.v
push.s "* (The painting is labelled \"Tasc\".)/%"@38023
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[20]
push.v self.image_index
pushi.e 1
cmp.i.v EQ
bf [22]

:[21]
push.s "obj_tasquepainting_slash_Other_10_gml_25_0"@38024
conv.s.v
push.s "* (The painting is empty.)/%"@38025
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[22]
call.i gml_Script_d_make(argc=0)
pop.v.v self.d
pushi.e 1
pop.v.i global.interact
pushi.e 1
pop.v.i self.myinteract
push.v self.talked
push.e 1
add.i.v
pop.v.v self.talked

:[end]