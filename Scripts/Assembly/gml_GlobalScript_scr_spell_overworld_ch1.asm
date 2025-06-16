.localvar 2 arguments

:[0]
b [7]

> gml_Script_scr_spell_overworld_ch1 (locals=0, argc=1)
:[1]
push.v arg.argument0
pop.v.v self.w
pushi.e 0
pop.v.i self.usable
push.v arg.argument0
dup.v 0
pushi.e 0
cmp.i.v EQ
bt [4]

:[2]
dup.v 0
pushi.e 2
cmp.i.v EQ
bt [5]

:[3]
b [6]

:[4]
b [6]

:[5]
pushi.e 100
conv.i.v
pushglb.v global.charselect
call.i gml_Script_scr_healitem_ch1(argc=2)
popz.v
b [6]

:[6]
popz.v
exit.i

:[7]
push.i [function]gml_Script_scr_spell_overworld_ch1
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_spell_overworld_ch1
popz.v

:[end]