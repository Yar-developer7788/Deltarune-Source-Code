.localvar 2 arguments

:[0]
pushi.e 0
pop.v.i self.buffer
pushi.e 0
pop.v.i self.saved
pushi.e 0
pop.v.i self.selnoise
pushi.e 0
pop.v.i self.movenoise
pushi.e 10
pop.v.i self.depth
pushi.e 0
pop.v.i self.threebuffer
pushi.e 0
pop.v.b self.hasitems
pushglb.v global.chapter
pushi.e 2
cmp.i.v EQ
bf [end]

:[1]
pushi.e 2
conv.i.v
call.i gml_Script_scr_havechar(argc=1)
conv.v.b
bf [end]

:[2]
push.i 231651
setowner.e
pushi.e 276
conv.i.v
push.v 82.y
pushi.e 6
sub.i.v
push.v 82.x
pushi.e 3
sub.i.v
call.i gml_Script_instance_create(argc=3)
pushi.e -5
pushi.e 0
pop.v.v [array]self.cinstance

:[end]