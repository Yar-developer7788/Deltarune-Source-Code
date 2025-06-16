.localvar 2 arguments
.localvar 11827 __angle 3473

:[0]
b [3]

> gml_Script_scr_directionsnap (locals=1, argc=2)
:[1]
pushi.e 360
conv.i.d
push.v arg.argument1
div.v.d
pop.v.v local.__angle
push.v arg.argument0
pushloc.v local.__angle
pushi.e 2
conv.i.d
div.d.v
add.v.v
pushloc.v local.__angle
mod.v.v
pushloc.v local.__angle
pushi.e 2
conv.i.d
div.d.v
sub.v.v
ret.v

:[2]
exit.i

:[3]
push.i [function]gml_Script_scr_directionsnap
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_directionsnap
popz.v

:[end]