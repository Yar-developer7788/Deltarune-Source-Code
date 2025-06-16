.localvar 2 arguments

:[0]
pushi.e 1
pop.v.i self.con
push.v self.x
pop.v.v self.xx
pushi.e 0
pop.v.i self.yy
pushi.e 1412
conv.i.v
push.v self.yy
pushi.e 160
add.i.v
push.v self.xx
pushi.e 500
add.i.v
call.i gml_Script_instance_create_ch1(argc=3)
pop.v.v self.dummy
pushglb.v global.plot
pushi.e 31
cmp.i.v GTE
bf [2]

:[1]
pushi.e 400
pop.v.i self.con

:[2]
pushglb.v global.plot
pushi.e 6
cmp.i.v LT
bf [end]

:[3]
pushi.e 3
conv.i.v
call.i gml_Script_scr_getchar_ch1(argc=1)
popz.v
push.i 231651
setowner.e
pushi.e 1493
conv.i.v
push.v 1351.y
pushi.e 16
sub.i.v
push.v 1351.x
pushi.e 6
sub.i.v
call.i gml_Script_instance_create_ch1(argc=3)
pushi.e -5
pushi.e 0
pop.v.v [array]self.cinstance
push.i 231464
setowner.e
pushi.e 12
pushi.e -5
pushi.e 0
push.v [array]self.cinstance
pushi.e -9
pop.v.i [stacktop]self.target
pushi.e -5
pushi.e 0
push.v [array]self.cinstance
pushi.e -9
pushenv [5]

:[4]
pushi.e 3572
pop.v.i self.usprite
pushi.e 3570
pop.v.i self.dsprite
pushi.e 3575
pop.v.i self.rsprite
pushi.e 3573
pop.v.i self.lsprite

:[5]
popenv [4]

:[end]