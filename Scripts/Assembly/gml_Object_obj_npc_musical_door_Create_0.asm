.localvar 2 arguments

:[0]
pushi.e -1
pop.v.i self.con
pushi.e 0
pop.v.i self.fade_timer
pushi.e 0
pop.v.b self.sold_out
pushi.e 103
conv.i.v
pushi.e 304
conv.i.v
pushi.e 142
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.plugboynpc
pushi.e 1244
push.v self.plugboynpc
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushglb.v global.plot
pushi.e 60
cmp.i.v LT
bf [2]

:[1]
pushi.e 110
conv.i.v
pushi.e 137
conv.i.v
pushi.e 195
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.capnnpc
pushi.e 1259
push.v self.capnnpc
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushi.e 110
conv.i.v
pushi.e 113
conv.i.v
pushi.e 355
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.kknpc
pushi.e 1260
push.v self.kknpc
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushi.e 103
conv.i.v
pushi.e 310
conv.i.v
pushi.e 430
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.rebelnpc
pushi.e 1251
push.v self.rebelnpc
pushi.e -9
pop.v.i [stacktop]self.sprite_index
b [end]

:[2]
pushi.e -5
pushi.e 416
push.v [array]self.flag
pushi.e 0
cmp.i.v EQ
bf [4]

:[3]
push.i 231204
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 416
pop.v.v [array]self.flag
call.i gml_Script_scr_tempsave(argc=0)
popz.v

:[4]
call.i instance_destroy(argc=0)
popz.v

:[end]