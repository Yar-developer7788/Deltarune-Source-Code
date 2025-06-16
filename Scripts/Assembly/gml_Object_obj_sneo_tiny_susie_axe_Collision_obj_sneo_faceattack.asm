.localvar 2 arguments

:[0]
push.v other.type
pushi.e 0
cmp.i.v EQ
bt [2]

:[1]
push.v other.image_alpha
push.d 0.9
cmp.d.v LT
b [3]

:[2]
push.e 1

:[3]
bf [5]

:[4]
exit.i

:[5]
push.v other.broken
pushi.e 1
cmp.i.v EQ
bf [7]

:[6]
call.i instance_destroy(argc=0)
popz.v
exit.i

:[7]
pushi.e 6
pop.v.i other.shake
push.v other.type
pushi.e 1
cmp.i.v EQ
bf [9]

:[8]
push.v 697.eyeshp
pushi.e 1
sub.i.v
pop.v.v 697.eyeshp

:[9]
push.v other.type
pushi.e 2
cmp.i.v EQ
bf [11]

:[10]
push.v 697.nosehp
pushi.e 1
sub.i.v
pop.v.v 697.nosehp

:[11]
push.v other.type
pushi.e 3
cmp.i.v EQ
bf [13]

:[12]
push.v 697.mouthhp
pushi.e 1
sub.i.v
pop.v.v 697.mouthhp

:[13]
pushi.e 167
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
pushi.e 10
pop.v.i other.invincibilitytimer
pushi.e 3
pop.v.i other.hurtflashtimer
push.v other.type
pushi.e 1
cmp.i.v EQ
bf [15]

:[14]
push.v 697.eyeshp
pushi.e 0
cmp.i.v LTE
b [16]

:[15]
push.e 0

:[16]
bt [25]

:[17]
push.v other.type
pushi.e 2
cmp.i.v EQ
bf [19]

:[18]
push.v 697.nosehp
pushi.e 0
cmp.i.v LTE
b [20]

:[19]
push.e 0

:[20]
bt [25]

:[21]
push.v other.type
pushi.e 3
cmp.i.v EQ
bf [23]

:[22]
push.v 697.mouthhp
pushi.e 0
cmp.i.v LTE
b [24]

:[23]
push.e 0

:[24]
b [26]

:[25]
push.e 1

:[26]
bf [28]

:[27]
pushi.e 1
pop.v.i other.broken
pushi.e 2
pop.v.i other.image_index
pushi.e 221
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
pushi.e 16
pop.v.i other.explodetimer

:[28]
call.i instance_destroy(argc=0)
popz.v

:[end]