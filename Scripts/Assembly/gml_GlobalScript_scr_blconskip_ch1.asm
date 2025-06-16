.localvar 2 arguments

:[0]
b [15]

> gml_Script_scr_blconskip_ch1 (locals=0, argc=1)
:[1]
push.v arg.argument0
pushi.e -1
cmp.i.v NEQ
bf [11]

:[2]
call.i gml_Script_button1_p_ch1(argc=0)
conv.v.b
bf [4]

:[3]
push.v self.talktimer
push.v arg.argument0
cmp.v.v GT
b [5]

:[4]
push.e 0

:[5]
bf [7]

:[6]
push.v self.talkmax
pop.v.v self.talktimer

:[7]
push.v self.talktimer
pushi.e 1
add.i.v
pop.v.v self.talktimer
push.v self.talktimer
push.v self.talkmax
cmp.v.v GTE
bf [11]

:[8]
pushi.e 1331
pushenv [10]

:[9]
call.i instance_destroy(argc=0)
popz.v

:[10]
popenv [9]
pushi.e 2
pop.v.i global.mnfight

:[11]
push.v arg.argument0
pushi.e -1
cmp.i.v EQ
bf [14]

:[12]
pushi.e 1331
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.b.v EQ
bf [14]

:[13]
pushi.e 2
pop.v.i global.mnfight

:[14]
exit.i

:[15]
push.i [function]gml_Script_scr_blconskip_ch1
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_blconskip_ch1
popz.v

:[end]