.localvar 2 arguments

:[0]
b [9]

> gml_Script_scr_movetowards (locals=0, argc=3)
:[1]
push.v arg.argument0
push.v arg.argument1
cmp.v.v EQ
bf [4]

:[2]
push.v arg.argument0
ret.v

:[3]
b [8]

:[4]
push.v arg.argument0
push.v arg.argument1
cmp.v.v GT
bf [7]

:[5]
push.v arg.argument1
push.v arg.argument0
push.v arg.argument2
sub.v.v
call.i max(argc=2)
ret.v

:[6]
b [8]

:[7]
push.v arg.argument1
push.v arg.argument0
push.v arg.argument2
add.v.v
call.i min(argc=2)
ret.v

:[8]
exit.i

:[9]
push.i [function]gml_Script_scr_movetowards
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_movetowards
popz.v

:[end]