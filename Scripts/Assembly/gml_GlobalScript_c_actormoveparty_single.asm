.localvar 2 arguments

:[0]
b [6]

> gml_Script_c_actormoveparty_single (locals=0, argc=2)
:[1]
push.v arg.argument0
pushi.e 0
cmp.i.v EQ
bf [3]

:[2]
push.v arg.argument0
call.i gml_Script_c_sel(argc=1)
popz.v
push.v arg.argument1
push.v 82.y
push.v 82.x
call.i gml_Script_c_walkdirect(argc=3)
popz.v
b [5]

:[3]
pushi.e -5
push.v arg.argument0
pushi.e 1
sub.i.v
conv.v.i
push.v [array]self.cinstance
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [5]

:[4]
push.v arg.argument0
call.i gml_Script_c_sel(argc=1)
popz.v
push.v arg.argument1
pushi.e -5
push.v arg.argument0
pushi.e 1
sub.i.v
conv.v.i
push.v [array]self.cinstance
pushi.e -9
push.v [stacktop]self.y
pushi.e -5
push.v arg.argument0
pushi.e 1
sub.i.v
conv.v.i
push.v [array]self.cinstance
pushi.e -9
push.v [stacktop]self.x
call.i gml_Script_c_walkdirect(argc=3)
popz.v

:[5]
exit.i

:[6]
push.i [function]gml_Script_c_actormoveparty_single
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.c_actormoveparty_single
popz.v

:[end]