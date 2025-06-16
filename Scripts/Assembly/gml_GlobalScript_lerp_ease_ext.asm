.localvar 2 arguments

:[0]
b [20]

> gml_Script_lerp_ease_ext (locals=0, argc=6)
:[1]
push.v arg.argument2
conv.v.b
bf [3]

:[2]
push.v arg.argument3
conv.v.b
not.b
b [4]

:[3]
push.e 0

:[4]
bf [7]

:[5]
push.v arg.argument5
push.v arg.argument4
call.i gml_Script_scr_ease_in(argc=2)
push.v arg.argument1
push.v arg.argument0
call.i lerp(argc=3)
ret.v

:[6]
b [18]

:[7]
push.v arg.argument2
conv.v.b
not.b
bf [9]

:[8]
push.v arg.argument3
conv.v.b
b [10]

:[9]
push.e 0

:[10]
bf [13]

:[11]
push.v arg.argument5
push.v arg.argument4
call.i gml_Script_scr_ease_out(argc=2)
push.v arg.argument1
push.v arg.argument0
call.i lerp(argc=3)
ret.v

:[12]
b [18]

:[13]
push.v arg.argument2
conv.v.b
bf [15]

:[14]
push.v arg.argument3
conv.v.b
b [16]

:[15]
push.e 0

:[16]
bf [18]

:[17]
push.v arg.argument5
push.v arg.argument4
call.i gml_Script_scr_ease_inout(argc=2)
push.v arg.argument1
push.v arg.argument0
call.i lerp(argc=3)
ret.v

:[18]
push.v arg.argument4
push.v arg.argument1
push.v arg.argument0
call.i lerp(argc=3)
ret.v

:[19]
exit.i

:[20]
push.i [function]gml_Script_lerp_ease_ext
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.lerp_ease_ext
popz.v

:[end]