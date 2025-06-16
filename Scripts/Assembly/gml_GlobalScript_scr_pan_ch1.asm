.localvar 2 arguments

:[0]
b [2]

> gml_Script_scr_pan_ch1 (locals=0, argc=3)
:[1]
pushi.e 1463
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create_ch1(argc=3)
pop.v.v self.panner
push.v arg.argument2
push.v self.panner
pushi.e -9
pop.v.v [stacktop]self.panmax
push.v arg.argument0
push.v self.panner
pushi.e -9
pop.v.v [stacktop]self.panx
push.v arg.argument1
push.v self.panner
pushi.e -9
pop.v.v [stacktop]self.pany
exit.i

:[2]
push.i [function]gml_Script_scr_pan_ch1
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_pan_ch1
popz.v

:[end]