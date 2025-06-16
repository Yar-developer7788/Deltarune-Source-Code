.localvar 2 arguments

:[0]
pushi.e -1
pop.v.i self.con
pushi.e 1
pop.v.b self.visible
pushi.e 0
pop.v.i self.exitcollider
pushglb.v global.chapter
pushi.e 2
cmp.i.v NEQ
bf [2]

:[1]
call.i instance_destroy(argc=0)
popz.v
b [end]

:[2]
pushi.e -5
pushi.e 340
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
bf [4]

:[3]
pushi.e 0
conv.b.v
push.s "TILES_Secret"@35992
conv.s.v
call.i layer_set_visible(argc=2)
popz.v
b [end]

:[4]
pushi.e 1149
conv.i.v
pushi.e 320
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.exitcollider
pushi.e 1
push.v self.exitcollider
pushi.e -9
pop.v.i [stacktop]self.image_xscale
pushi.e 2
push.v self.exitcollider
pushi.e -9
pop.v.i [stacktop]self.image_yscale

:[end]