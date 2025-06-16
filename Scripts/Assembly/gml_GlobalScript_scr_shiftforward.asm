.localvar 2 arguments

:[0]
b [2]

> gml_Script_scr_shiftforward (locals=0, argc=2)
:[1]
push.v self.x
push.v arg.argument1
push.v arg.argument0
call.i lengthdir_x(argc=2)
add.v.v
pop.v.v self.x
push.v self.y
push.v arg.argument1
push.v arg.argument0
call.i lengthdir_y(argc=2)
add.v.v
pop.v.v self.y
exit.i

:[2]
push.i [function]gml_Script_scr_shiftforward
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_shiftforward
popz.v

:[end]