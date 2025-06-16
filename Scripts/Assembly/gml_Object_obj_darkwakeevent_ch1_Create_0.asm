.localvar 2 arguments

:[0]
pushi.e 0
pop.v.i self.con
pushglb.v global.plot
pushi.e 11
cmp.i.v LT
bf [6]

:[1]
call.i gml_Script_scr_losechar_ch1(argc=0)
popz.v
pushi.e 1493
pushenv [3]

:[2]
call.i instance_destroy(argc=0)
popz.v

:[3]
popenv [2]
pushi.e 1
pop.v.i self.con
pushi.e 1
pop.v.i global.interact
pushi.e 1351
pushenv [5]

:[4]
pushi.e 0
pop.v.i self.visible

:[5]
popenv [4]
pushi.e 4138
conv.i.v
push.v 1351.y
push.v 1351.x
call.i gml_Script_scr_dark_marker_ch1(argc=3)
pop.v.v self.k
pushi.e -50
pop.v.i self.waketimer
b [end]

:[6]
call.i instance_destroy(argc=0)
popz.v

:[end]