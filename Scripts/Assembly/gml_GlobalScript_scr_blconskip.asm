.localvar 2 arguments

:[0]
b [24]

> gml_Script_scr_blconskip (locals=0, argc=1)
:[1]
push.v arg.argument0
pushi.e 0
cmp.i.v GTE
bf [12]

:[2]
call.i gml_Script_button1_p(argc=0)
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
pushi.e 64
pushenv [10]

:[9]
call.i instance_destroy(argc=0)
popz.v

:[10]
popenv [9]
pushi.e 2
pop.v.i global.mnfight

:[11]
b [23]

:[12]
push.v arg.argument0
pushi.e -1
cmp.i.v EQ
bf [16]

:[13]
pushi.e 64
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.b.v EQ
bf [15]

:[14]
pushi.e 2
pop.v.i global.mnfight

:[15]
b [23]

:[16]
push.v arg.argument0
pushi.e -2
cmp.i.v EQ
bf [23]

:[17]
push.v self.talktimer
pushi.e 1
add.i.v
pop.v.v self.talktimer
push.v self.talktimer
pushi.e 15
cmp.i.v GT
bf [19]

:[18]
push.v self.talkmax
pop.v.v self.talktimer

:[19]
push.v self.talktimer
push.v self.talkmax
cmp.v.v GTE
bf [23]

:[20]
pushi.e 64
pushenv [22]

:[21]
call.i instance_destroy(argc=0)
popz.v

:[22]
popenv [21]
pushi.e 2
pop.v.i global.mnfight

:[23]
exit.i

:[24]
push.i [function]gml_Script_scr_blconskip
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_blconskip
popz.v

:[end]