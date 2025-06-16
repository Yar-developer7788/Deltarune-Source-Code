.localvar 2 arguments

:[0]
b [10]

> gml_Script_scr_turn_skip (locals=0, argc=0)
:[1]
push.i [function]gml_Script_scr_debug
conv.i.b
bf [6]

:[2]
pushi.e 86
conv.i.v
call.i gml_Script_scr_debug_keycheck(argc=1)
conv.v.b
bf [6]

:[3]
pushglb.v global.turntimer
pushi.e 0
cmp.i.v GT
bf [6]

:[4]
pushi.e 872
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [6]

:[5]
push.s "bullets"@6393
conv.s.v
call.i gml_Script_scr_isphase(argc=1)
conv.v.b
b [7]

:[6]
push.e 0

:[7]
bf [9]

:[8]
pushi.e 0
pop.v.i global.turntimer
push.s "Attack skipped"@11855
conv.s.v
call.i gml_Script_scr_debug_print(argc=1)
popz.v

:[9]
exit.i

:[10]
push.i [function]gml_Script_scr_turn_skip
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_turn_skip
popz.v

:[end]