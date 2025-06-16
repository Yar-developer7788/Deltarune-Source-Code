.localvar 2 arguments
.localvar 11616 _val 3219
.localvar 11617 _range 3220

:[0]
b [10]

> gml_Script_scr_wrap (locals=2, argc=3)
:[1]
push.v arg.argument0
pop.v.v local._val
push.v arg.argument2
push.v arg.argument1
sub.v.v
call.i abs(argc=1)
pop.v.v local._range
push.v arg.argument2
push.v arg.argument1
cmp.v.v LTE
bf [4]

:[2]
push.s "wrap error, min higher than max!"@11618
conv.s.v
call.i show_debug_message(argc=1)
popz.v
push.v arg.argument0
ret.v

:[3]
b [9]

:[4]
pushloc.v local._val
push.v arg.argument1
cmp.v.v LT
bf [6]

:[5]
push.v local._val
pushloc.v local._range
add.v.v
pop.v.v local._val
b [4]

:[6]
pushloc.v local._val
push.v arg.argument2
cmp.v.v GT
bf [8]

:[7]
push.v local._val
pushloc.v local._range
sub.v.v
pop.v.v local._val
b [6]

:[8]
pushloc.v local._val
ret.v

:[9]
exit.i

:[10]
push.i [function]gml_Script_scr_wrap
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_wrap
popz.v

:[end]