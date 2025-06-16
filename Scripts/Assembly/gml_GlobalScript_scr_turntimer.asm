.localvar 2 arguments

:[0]
b [4]

> gml_Script_scr_turntimer (locals=0, argc=1)
:[1]
pushglb.v global.turntimer
push.v arg.argument0
cmp.v.v LT
bf [3]

:[2]
push.v arg.argument0
pop.v.v global.turntimer

:[3]
exit.i

:[4]
push.i [function]gml_Script_scr_turntimer
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_turntimer
popz.v

:[end]