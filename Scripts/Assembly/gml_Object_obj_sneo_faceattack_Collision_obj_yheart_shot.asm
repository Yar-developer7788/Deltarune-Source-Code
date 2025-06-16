.localvar 2 arguments
.localvar 25656 takedamageamount 12683

:[0]
push.v self.type
pushi.e 0
cmp.i.v EQ
bt [2]

:[1]
push.v self.image_alpha
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
push.v self.broken
pushi.e 1
cmp.i.v EQ
bf [9]

:[6]
pushi.e 40
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
call.i @@Other@@(argc=0)
pushi.e -9
pushenv [8]

:[7]
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v

:[8]
popenv [7]
exit.i

:[9]
push.v self.invincibilitytimer
pushi.e 0
cmp.i.v GT
bf [11]

:[10]
push.v other.big
pushi.e 0
cmp.i.v EQ
b [12]

:[11]
push.e 0

:[12]
bf [16]

:[13]
call.i @@Other@@(argc=0)
pushi.e -9
pushenv [15]

:[14]
call.i instance_destroy(argc=0)
popz.v

:[15]
popenv [14]
exit.i

:[16]
pushi.e 6
pop.v.i self.shake
push.v other.big
pushi.e 0
cmp.i.v EQ
bf [24]

:[17]
push.v self.type
pushi.e 1
cmp.i.v EQ
bf [19]

:[18]
push.v 697.eyeshp
pushi.e 1
sub.i.v
pop.v.v 697.eyeshp

:[19]
push.v self.type
pushi.e 2
cmp.i.v EQ
bf [21]

:[20]
push.v 697.nosehp
pushi.e 1
sub.i.v
pop.v.v 697.nosehp

:[21]
push.v self.type
pushi.e 3
cmp.i.v EQ
bf [23]

:[22]
push.v 697.mouthhp
pushi.e 1
sub.i.v
pop.v.v 697.mouthhp

:[23]
b [32]

:[24]
pushi.e 4
pop.v.i local.takedamageamount
push.v 697.hellmode
pushi.e 1
cmp.i.v EQ
bf [26]

:[25]
pushi.e 2
pop.v.i local.takedamageamount

:[26]
push.v self.type
pushi.e 1
cmp.i.v EQ
bf [28]

:[27]
push.v 697.eyeshp
pushloc.v local.takedamageamount
sub.v.v
pop.v.v 697.eyeshp

:[28]
push.v self.type
pushi.e 2
cmp.i.v EQ
bf [30]

:[29]
push.v 697.nosehp
pushloc.v local.takedamageamount
sub.v.v
pop.v.v 697.nosehp

:[30]
push.v self.type
pushi.e 3
cmp.i.v EQ
bf [32]

:[31]
push.v 697.mouthhp
pushloc.v local.takedamageamount
sub.v.v
pop.v.v 697.mouthhp

:[32]
pushi.e 167
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
pushi.e 10
pop.v.i self.invincibilitytimer
pushi.e 3
pop.v.i self.hurtflashtimer
push.v self.type
pushi.e 1
cmp.i.v EQ
bf [34]

:[33]
push.v 697.eyeshp
pushi.e 0
cmp.i.v LTE
b [35]

:[34]
push.e 0

:[35]
bt [44]

:[36]
push.v self.type
pushi.e 2
cmp.i.v EQ
bf [38]

:[37]
push.v 697.nosehp
pushi.e 0
cmp.i.v LTE
b [39]

:[38]
push.e 0

:[39]
bt [44]

:[40]
push.v self.type
pushi.e 3
cmp.i.v EQ
bf [42]

:[41]
push.v 697.mouthhp
pushi.e 0
cmp.i.v LTE
b [43]

:[42]
push.e 0

:[43]
b [45]

:[44]
push.e 1

:[45]
bf [47]

:[46]
pushi.e 1
pop.v.i self.broken
pushi.e 2
pop.v.i self.image_index
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 221
conv.i.v
call.i gml_Script_snd_volume(argc=3)
popz.v
pushi.e 221
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
pushi.e 16
pop.v.i self.explodetimer

:[47]
call.i @@Other@@(argc=0)
pushi.e -9
pushenv [49]

:[48]
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v

:[49]
popenv [48]

:[end]