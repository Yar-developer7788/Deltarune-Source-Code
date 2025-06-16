.localvar 2 arguments
.localvar 9263 _peeker 1646

:[0]
b [8]

> gml_Script_scr_guardpeek (locals=1, argc=1)
:[1]
pushi.e -5
push.v arg.argument0
pushi.e -9
push.v [stacktop]self.myself
conv.v.i
push.v [array]self.faceaction
pushi.e 4
cmp.i.v EQ
bf [7]

:[2]
pushi.e 0
pop.v.i local._peeker
push.v arg.argument0
pushi.e 374
cmp.i.v EQ
bf [4]

:[3]
pushi.e 0
pop.v.i 374.image_alpha
pushi.e 1522
conv.i.v
push.v 374.y
push.v 374.x
call.i gml_Script_scr_battle_marker(argc=3)
pop.v.v local._peeker
push.v 374.depth
pushloc.v local._peeker
pushi.e -9
pop.v.v [stacktop]self.depth
pushi.e 374
pushloc.v local._peeker
pushi.e -9
pop.v.i [stacktop]self.sourceobject
pushi.e 3313
pushloc.v local._peeker
pushi.e -9
pop.v.i [stacktop]self.endanimation
b [6]

:[4]
push.v arg.argument0
pushi.e 373
cmp.i.v EQ
bf [6]

:[5]
pushi.e 0
pop.v.i 373.image_alpha
pushi.e 1480
conv.i.v
push.v 373.y
push.v 373.x
call.i gml_Script_scr_battle_marker(argc=3)
pop.v.v local._peeker
push.v 373.depth
pushloc.v local._peeker
pushi.e -9
pop.v.v [stacktop]self.depth
pushi.e 373
pushloc.v local._peeker
pushi.e -9
pop.v.i [stacktop]self.sourceobject

:[6]
pushloc.v local._peeker
ret.v

:[7]
exit.i

:[8]
push.i [function]gml_Script_scr_guardpeek
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_guardpeek
popz.v

:[end]