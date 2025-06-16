.localvar 2 arguments
.localvar 11637 a4 3244

:[0]
b [3]

> gml_Script_scr_wave (locals=1, argc=4)
:[1]
push.v arg.argument1
push.v arg.argument0
sub.v.v
push.d 0.5
mul.d.v
pop.v.v local.a4
push.v arg.argument0
pushloc.v local.a4
add.v.v
pushbltn.v builtin.current_time
push.d 0.001
mul.d.v
push.v arg.argument2
push.v arg.argument3
mul.v.v
add.v.v
push.v arg.argument2
div.v.v
push.d 6.283185307179586
mul.d.v
call.i sin(argc=1)
pushloc.v local.a4
mul.v.v
add.v.v
ret.v

:[2]
exit.i

:[3]
push.i [function]gml_Script_scr_wave
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_wave
popz.v

:[end]