.localvar 2 arguments

:[0]
b [8]

> gml_Script_scr_windowcaption (locals=0, argc=1)
:[1]
pushi.e -5
pushi.e 10
push.v [array]self.tempflag
pushi.e 1
cmp.i.v NEQ
bf [3]

:[2]
pushglb.v global.chapter
pushi.e 1
cmp.i.v EQ
b [4]

:[3]
push.e 0

:[4]
bf [6]

:[5]
push.v arg.argument0
call.i window_set_caption(argc=1)
popz.v
b [7]

:[6]
push.s "DELTARUNE Chapter "@6190
pushglb.v global.chapter
call.i string(argc=1)
add.v.s
call.i window_set_caption(argc=1)
popz.v

:[7]
exit.i

:[8]
push.i [function]gml_Script_scr_windowcaption
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_windowcaption
popz.v

:[end]