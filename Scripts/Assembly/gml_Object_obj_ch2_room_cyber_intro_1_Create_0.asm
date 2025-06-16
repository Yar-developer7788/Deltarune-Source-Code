.localvar 2 arguments

:[0]
pushi.e -1
pop.v.i self.con
pushglb.v global.plot
pushi.e 50
cmp.i.v LT
bf [7]

:[1]
call.i gml_Script_scr_losechar(argc=0)
popz.v
pushi.e 276
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [3]

:[2]
pushi.e 276
conv.i.v
call.i instance_destroy(argc=1)
popz.v

:[3]
pushi.e 2
conv.i.v
call.i gml_Script_scr_getchar(argc=1)
popz.v
pushi.e -5
pushi.e 38
push.v [array]self.tempflag
pushi.e 0
cmp.i.v EQ
bf [5]

:[4]
pushi.e 1
pop.v.i self.con
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
push.v 82.y
push.v 82.x
pushi.e 40
sub.i.v
call.i gml_Script_scr_makecaterpillar(argc=4)
popz.v
b [6]

:[5]
pushi.e 50
pop.v.i global.plot
pushi.e 0
pop.v.i global.interact

:[6]
b [end]

:[7]
call.i instance_destroy(argc=0)
popz.v

:[end]