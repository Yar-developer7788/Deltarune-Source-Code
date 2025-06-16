.localvar 2 arguments

:[0]
pushi.e 2
pop.v.i self.image_xscale
pushi.e 2
pop.v.i self.image_yscale
pushi.e 0
pop.v.i self.siner
push.i 68097
setowner.e
pushi.e 2
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.alarm
pushi.e 0
pop.v.i self.bust
pushi.e 1
pop.v.i self.con
pushglb.v global.plot
pushi.e 14
cmp.i.v GTE
bf [2]

:[1]
call.i instance_destroy(argc=0)
popz.v
b [end]

:[2]
pushi.e 1493
conv.i.v
pushi.e 500
conv.i.v
pushi.e 500
conv.i.v
call.i gml_Script_instance_create_ch1(argc=3)
pop.v.v self.partysus
push.v self.partysus
pushi.e -9
pushenv [4]

:[3]
pushi.e 0
pop.v.i self.visible

:[4]
popenv [3]

:[end]