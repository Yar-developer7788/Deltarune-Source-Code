.localvar 2 arguments

:[0]
b [2]

> gml_Script_scr_rotatearoundpoint (locals=0, argc=3)
:[1]
push.v arg.argument2
push.v arg.argument1
push.v arg.argument0
call.i gml_Script_scr_orbitaroundpoint(argc=3)
popz.v
push.v self.direction
push.v arg.argument2
add.v.v
pop.v.v self.direction
exit.i

:[2]
push.i [function]gml_Script_scr_rotatearoundpoint
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_rotatearoundpoint
popz.v

:[end]