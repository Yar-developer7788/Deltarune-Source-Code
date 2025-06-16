.localvar 2 arguments

:[0]
pushi.e -1
pop.v.i self.con
pushglb.v global.plot
pushi.e 200
cmp.i.v GTE
bf [2]

:[1]
pushi.e -5
pushi.e 387
push.v [array]self.flag
pushi.e 0
cmp.i.v EQ
b [3]

:[2]
push.e 0

:[3]
bf [11]

:[4]
pushi.e 1
pop.v.i self.con
call.i gml_Script_scr_losechar(argc=0)
popz.v
pushi.e 276
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [6]

:[5]
pushi.e 276
conv.i.v
call.i instance_destroy(argc=1)
popz.v

:[6]
pushi.e 2
conv.i.v
call.i gml_Script_scr_getchar(argc=1)
popz.v
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
pushi.e 8
conv.i.v
call.i gml_Script_scr_keyitemcheck(argc=1)
conv.v.b
not.b
bf [8]

:[7]
pushi.e 8
conv.i.v
call.i gml_Script_scr_keyitemget(argc=1)
popz.v

:[8]
pushi.e 9
conv.i.v
call.i gml_Script_scr_keyitemcheck(argc=1)
conv.v.b
not.b
bf [10]

:[9]
pushi.e 9
conv.i.v
call.i gml_Script_scr_keyitemget(argc=1)
popz.v

:[10]
pushi.e 0
pop.v.b self.trashy_release
pushi.e 0
pop.v.b self.trashy_leave

:[11]
pushglb.v global.plot
pushi.e 7
cmp.i.v LTE
bf [end]

:[12]
pushi.e 10
pop.v.i self.con

:[end]