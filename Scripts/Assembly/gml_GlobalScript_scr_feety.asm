.localvar 2 arguments

:[0]
b [7]

> gml_Script_scr_feety (locals=0, argc=2)
:[1]
push.v arg.argument0
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [3]

:[2]
push.v arg.argument1
call.i gml_Script_i_ex(argc=1)
conv.v.b
b [4]

:[3]
push.e 0

:[4]
bf [6]

:[5]
push.v arg.argument1
pushi.e -9
push.v [stacktop]self.y
push.v arg.argument1
pushi.e -9
push.v [stacktop]self.sprite_height
add.v.v
push.v arg.argument0
pushi.e -9
push.v [stacktop]self.sprite_height
sub.v.v
ret.v

:[6]
exit.i

:[7]
push.i [function]gml_Script_scr_feety
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_feety
popz.v

:[end]