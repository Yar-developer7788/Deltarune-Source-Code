.localvar 2 arguments

:[0]
pushi.e -1
pop.v.i self.con
pushi.e 0
pop.v.i self.customcon
pushi.e -1
pop.v.i self.su_actor
pushi.e 0
pop.v.b self.disable_face
pushglb.v global.chapter
pushi.e 2
cmp.i.v NEQ
bt [2]

:[1]
pushi.e -5
pushi.e 309
push.v [array]self.flag
pushi.e 9
cmp.i.v EQ
b [3]

:[2]
push.e 1

:[3]
bf [5]

:[4]
call.i instance_destroy(argc=0)
popz.v
b [end]

:[5]
pushi.e -5
pushi.e 358
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
bf [11]

:[6]
pushi.e 496
conv.i.v
pushi.e 275
conv.i.v
pushi.e 575
conv.i.v
call.i gml_Script_scr_dark_marker(argc=3)
pop.v.v self.nise_susie
push.d 0.25
push.v self.nise_susie
pushi.e -9
pop.v.d [stacktop]self.image_speed
push.v self.nise_susie
pushi.e -9
pushenv [8]

:[7]
call.i gml_Script_scr_depth(argc=0)
popz.v

:[8]
popenv [7]
pushi.e 494
conv.i.v
pushi.e 280
conv.i.v
pushi.e 660
conv.i.v
call.i gml_Script_scr_dark_marker(argc=3)
pop.v.v self.nise_ralsei
push.d 0.25
push.v self.nise_ralsei
pushi.e -9
pop.v.d [stacktop]self.image_speed
push.v self.nise_ralsei
pushi.e -9
pushenv [10]

:[9]
call.i gml_Script_scr_depth(argc=0)
popz.v

:[10]
popenv [9]
b [end]

:[11]
pushi.e -5
pushi.e 358
push.v [array]self.flag
pushi.e 1
cmp.i.v GT
bf [end]

:[12]
pushi.e 2
conv.i.v
call.i gml_Script_scr_havechar(argc=1)
conv.v.b
not.b
bf [14]

:[13]
pushi.e 2
conv.i.v
call.i gml_Script_scr_getchar(argc=1)
popz.v

:[14]
pushi.e 3
conv.i.v
call.i gml_Script_scr_havechar(argc=1)
conv.v.b
not.b
bf [end]

:[15]
pushi.e 3
conv.i.v
call.i gml_Script_scr_getchar(argc=1)
popz.v

:[end]