.localvar 2 arguments

:[0]
b [20]

> gml_Script_scr_phonename (locals=0, argc=0)
:[1]
pushi.e 0
pop.v.i self.i

:[2]
push.v self.i
pushi.e 8
cmp.i.v LT
bf [4]

:[3]
push.i 4294479
setowner.e
push.s "scr_phonename_slash_scr_phonename_gml_3_0"@352
conv.s.v
push.s " "@353
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]self.phonename
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [2]

:[4]
pushi.e 0
pop.v.i self.i

:[5]
push.v self.i
pushi.e 8
cmp.i.v LT
bf [19]

:[6]
pushi.e -5
push.v self.i
conv.v.i
push.v [array]self.phone
pop.v.v self.itemid
push.v self.itemid
dup.v 0
pushi.e 201
cmp.i.v EQ
bt [9]

:[7]
dup.v 0
pushi.e 202
cmp.i.v EQ
bt [15]

:[8]
b [18]

:[9]
push.i 4294479
setowner.e
push.s "scr_phonename_slash_scr_phonename_gml_17_0"@357
conv.s.v
push.s "Call Home"@358
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]self.phonename
pushglb.v global.chapter
pushi.e 2
cmp.i.v EQ
bf [11]

:[10]
pushglb.v global.plot
pushi.e 9
cmp.i.v EQ
b [12]

:[11]
push.e 0

:[12]
bf [14]

:[13]
push.s "scr_phonename_slash_scr_phonename_gml_18_0"@359
conv.s.v
push.s "Call Toriel"@360
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]self.phonename

:[14]
b [18]

:[15]
push.i 4294479
setowner.e
push.s "scr_phonename_slash_scr_phonename_gml_21_0"@361
conv.s.v
push.s "Sans's Number"@362
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]self.phonename
pushi.e -5
pushi.e 274
push.v [array]self.flag
pushi.e 2
cmp.i.v GTE
bf [17]

:[16]
push.s "scr_phonename_slash_scr_phonename_gml_22_0"@363
conv.s.v
push.s "Not Sans's Number"@364
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]self.phonename

:[17]
b [18]

:[18]
popz.v
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [5]

:[19]
exit.i

:[20]
push.i [function]gml_Script_scr_phonename
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_phonename
popz.v

:[end]