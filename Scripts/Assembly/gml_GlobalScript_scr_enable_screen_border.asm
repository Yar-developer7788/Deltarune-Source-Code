.localvar 2 arguments
.localvar 262 flag 3606

:[0]
b [4]

> gml_Script_scr_enable_screen_border (locals=1, argc=1)
:[1]
push.v arg.argument0
pop.v.v local.flag
pushloc.v local.flag
pushi.e 0
cmp.i.v NEQ
pop.v.b local.flag
pushloc.v local.flag
pushglb.v global.screen_border_active
cmp.v.v NEQ
bf [3]

:[2]
pushloc.v local.flag
pushi.e 0
cmp.i.v NEQ
pop.v.b global.screen_border_active
pushi.e 0
pop.v.i global.screen_border_state
pushi.e 0
pop.v.i global.screen_border_dynamic_fade_id
pushi.e 0
pop.v.i global.screen_border_dynamic_fade_level

:[3]
exit.i

:[4]
push.i [function]gml_Script_scr_enable_screen_border
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_enable_screen_border
popz.v

:[end]