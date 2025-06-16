.localvar 2 arguments

:[0]
pushi.e 1
pop.v.i self.con
pushi.e 2
pop.v.i self.image_xscale
pushi.e 2
pop.v.i self.image_yscale
pushi.e -5
pushi.e 229
push.v [array]self.flag
pushi.e 1
cmp.i.v GTE
bf [2]

:[1]
pushglb.v global.plot
pushi.e 150
cmp.i.v LT
b [3]

:[2]
push.e 0

:[3]
bf [end]

:[4]
pushi.e 1412
conv.i.v
push.v self.y
pushi.e 80
sub.i.v
push.v self.x
call.i gml_Script_instance_create_ch1(argc=3)
pop.v.v self.npc
pushi.e 3578
push.v self.npc
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushi.e 999
pop.v.i self.con
call.i instance_destroy(argc=0)
popz.v

:[end]