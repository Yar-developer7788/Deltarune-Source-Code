.localvar 2 arguments
.localvar 11691 __invLerp 3303
.localvar 11697 __remapped_value 3306

:[0]
b [5]

> gml_Script_scr_remapvalue (locals=1, argc=5)
:[1]
push.v arg.argument1
push.v arg.argument0
cmp.v.v EQ
bf [3]

:[2]
push.v arg.argument3
ret.v

:[3]
push.v arg.argument2
push.v arg.argument0
sub.v.v
push.v arg.argument1
push.v arg.argument0
sub.v.v
div.v.v
pop.v.v local.__invLerp
pushloc.v local.__invLerp
push.v arg.argument4
push.v arg.argument3
call.i lerp(argc=3)
ret.v

:[4]
exit.i

:[5]
push.i [function]gml_Script_scr_remapvalue
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_remapvalue
popz.v
b [8]

> gml_Script_remap (locals=1, argc=5)
:[6]
push.v arg.argument0
push.v arg.argument2
push.v arg.argument1
call.i gml_Script_scr_inverselerp(argc=3)
pop.v.v local.__invLerp
pushloc.v local.__invLerp
push.v arg.argument4
push.v arg.argument3
call.i lerp(argc=3)
ret.v

:[7]
exit.i

:[8]
push.i [function]gml_Script_remap
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -6
pop.v.v [stacktop]self.remap
popz.v
b [11]

> gml_Script_remap_clamped (locals=1, argc=5)
:[9]
push.v arg.argument4
push.v arg.argument3
push.v arg.argument2
push.v arg.argument1
push.v arg.argument0
call.i gml_Script_remap(argc=5)
pop.v.v local.__remapped_value
push.v arg.argument4
push.v arg.argument3
pushloc.v local.__remapped_value
call.i clamp(argc=3)
ret.v

:[10]
exit.i

:[11]
push.i [function]gml_Script_remap_clamped
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -6
pop.v.v [stacktop]self.remap_clamped
popz.v

:[end]