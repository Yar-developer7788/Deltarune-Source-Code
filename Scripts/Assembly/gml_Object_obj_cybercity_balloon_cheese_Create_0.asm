.localvar 2 arguments

:[0]
pushi.e 0
pop.v.i self.siner
pushi.e 0
pop.v.i self.mode
call.i gml_Script_cameray(argc=0)
pop.v.v self.remcameray
pushi.e 1
pop.v.i self.blend
call.i gml_Script_scr_depth(argc=0)
popz.v
pushi.e 0
pop.v.i self.broken
pushi.e 0
pop.v.i self.image_index
pushi.e 0
pop.v.i self.image_speed
pushi.e 0
pop.v.i self.breakable
pushi.e -5
pushi.e 447
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
bf [end]

:[1]
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 6
conv.i.v
pushi.e 2
conv.i.v
pushi.e 280
conv.i.v
pushi.e 3960
conv.i.v
call.i gml_Script_scr_forcefield(argc=6)
popz.v
call.i instance_destroy(argc=0)
popz.v

:[end]