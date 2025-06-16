.localvar 2 arguments

:[0]
b [10]

> gml_Script_scr_lweaponeq_ch1 (locals=0, argc=2)
:[1]
push.v arg.argument0
pushi.e 0
cmp.i.v GTE
bf [3]

:[2]
push.i 103515938
setowner.e
pushglb.v global.lweapon
pushi.e -5
push.v arg.argument0
conv.v.i
pop.v.v [array]self.litem

:[3]
push.v arg.argument1
pop.v.v global.lweapon
pushglb.v global.lweapon
pushi.e 2
cmp.i.v EQ
bf [5]

:[4]
pushi.e 1
pop.v.i global.lwstrength

:[5]
pushglb.v global.lweapon
pushi.e 6
cmp.i.v EQ
bf [7]

:[6]
pushi.e 1
pop.v.i global.lwstrength

:[7]
pushglb.v global.lweapon
pushi.e 7
cmp.i.v EQ
bf [9]

:[8]
pushi.e 1
pop.v.i global.lwstrength

:[9]
push.i [function]gml_Script_scr_litemname_ch1
conv.i.v
call.i script_execute(argc=1)
popz.v
exit.i

:[10]
push.i [function]gml_Script_scr_lweaponeq_ch1
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_lweaponeq_ch1
popz.v

:[end]