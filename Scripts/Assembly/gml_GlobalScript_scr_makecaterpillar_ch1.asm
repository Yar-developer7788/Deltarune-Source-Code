.localvar 2 arguments

:[0]
b [7]

> gml_Script_scr_makecaterpillar_ch1 (locals=0, argc=4)
:[1]
push.i 125274339
setowner.e
pushi.e 1493
conv.i.v
push.v arg.argument1
push.v arg.argument0
call.i gml_Script_instance_create_ch1(argc=3)
pushi.e -5
push.v arg.argument3
conv.v.i
pop.v.v [array]self.cinstance
push.i 125274152
setowner.e
pushi.e 12
push.v arg.argument3
pushi.e 12
mul.i.v
add.v.i
pushi.e -5
push.v arg.argument3
conv.v.i
push.v [array]self.cinstance
pushi.e -9
pop.v.v [stacktop]self.target
push.v arg.argument2
pushi.e 3
cmp.i.v EQ
bf [5]

:[2]
pushi.e -5
push.v arg.argument3
conv.v.i
push.v [array]self.cinstance
pushi.e -9
pushenv [4]

:[3]
pushi.e 3572
pop.v.i self.usprite
pushi.e 3570
pop.v.i self.dsprite
pushi.e 3575
pop.v.i self.rsprite
pushi.e 3573
pop.v.i self.lsprite

:[4]
popenv [3]

:[5]
pushi.e -5
push.v arg.argument3
conv.v.i
push.v [array]self.cinstance
ret.v

:[6]
exit.i

:[7]
push.i [function]gml_Script_scr_makecaterpillar_ch1
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_makecaterpillar_ch1
popz.v

:[end]