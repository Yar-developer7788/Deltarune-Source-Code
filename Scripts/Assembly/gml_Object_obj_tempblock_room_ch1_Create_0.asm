.localvar 2 arguments

:[0]
pushi.e 1660
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create_ch1(argc=3)
pop.v.v self.block
push.v self.image_xscale
push.v self.block
pushi.e -9
pop.v.v [stacktop]self.image_xscale
push.v self.image_yscale
push.v self.block
pushi.e -9
pop.v.v [stacktop]self.image_yscale
pushi.e 0
pop.v.i self.destroymarker
pushbltn.v builtin.room
pushi.e 370
cmp.i.v EQ
bf [end]

:[1]
pushi.e 1409
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create_ch1(argc=3)
pop.v.v self.talkto
push.v self.image_xscale
push.v self.talkto
pushi.e -9
pop.v.v [stacktop]self.image_xscale
push.v self.image_yscale
push.v self.talkto
pushi.e -9
pop.v.v [stacktop]self.image_yscale
pushi.e 1473
conv.i.v
push.v self.y
pushi.e 120
sub.i.v
push.v self.x
pushi.e 40
sub.i.v
call.i gml_Script_instance_create_ch1(argc=3)
pop.v.v self.tree
push.v self.tree
pushi.e -9
pushenv [3]

:[2]
call.i gml_Script_scr_depth_ch1(argc=0)
popz.v

:[3]
popenv [2]
pushi.e -5
pushi.e 237
push.v [array]self.flag
pushi.e 0
cmp.i.v GT
bf [end]

:[4]
push.v self.tree
pushi.e -9
pushenv [6]

:[5]
call.i instance_destroy(argc=0)
popz.v

:[6]
popenv [5]
push.v self.block
pushi.e -9
pushenv [8]

:[7]
call.i instance_destroy(argc=0)
popz.v

:[8]
popenv [7]

:[end]