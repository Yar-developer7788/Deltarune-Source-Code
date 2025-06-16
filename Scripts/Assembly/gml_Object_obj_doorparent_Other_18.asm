.localvar 2 arguments

:[0]
call.i gml_Script_button3_h(argc=0)
conv.v.b
bf [2]

:[1]
call.i gml_Script_button2_h(argc=0)
conv.v.b
b [3]

:[2]
push.e 0

:[3]
bf [5]

:[4]
b [8]

:[5]
pushi.e 82
pushenv [7]

:[6]
pushi.e 1
pop.v.i self.roomenterfreezeend

:[7]
popenv [6]

:[8]
push.v self.doorPreset
pushi.e 0
cmp.i.v GT
bf [13]

:[9]
push.v self.doorPreset
pushi.e 1
cmp.i.v EQ
bf [11]

:[10]
pushi.e 14
pop.v.i self.doorDelay
pushi.e 6
pop.v.i self.doorPostDelay
pushi.e 64
pop.v.i self.doorSound
pushi.e 63
pop.v.i self.doorSound2
b [13]

:[11]
push.v self.doorPreset
pushi.e 2
cmp.i.v EQ
bf [13]

:[12]
pushi.e 16
pop.v.i self.doorDelay
pushi.e 6
pop.v.i self.doorPostDelay
pushi.e 219
pop.v.i self.doorSound

:[13]
push.v self.doorFadeMusic
conv.v.b
bf [16]

:[14]
push.i 68097
setowner.e
push.v self.doorFadeMusicTime
pushi.e -1
pushi.e 3
pop.v.v [array]self.alarm
pushi.e -1
pushi.e 3
push.v [array]self.alarm
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 1
push.v [array]self.currentsong
call.i gml_Script_mus_volume(argc=3)
popz.v
push.v self.doorDelay
push.v self.doorFadeMusicTime
cmp.v.v LTE
bf [16]

:[15]
push.v self.doorFadeMusicTime
pushi.e 1
add.i.v
pop.v.v self.doorDelay

:[16]
push.v self.doorDelay
pushi.e 0
cmp.i.v GT
bf [18]

:[17]
push.v self.doorDelay
pushi.e -1
pushi.e 2
pop.v.v [array]self.alarm

:[18]
push.v self.doorSound
pushi.e -1
cmp.i.v NEQ
bf [20]

:[19]
push.v self.doorSound
call.i gml_Script_snd_play(argc=1)
popz.v

:[20]
pushi.e 190
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [23]

:[21]
pushi.e -1
pushi.e 2
push.v [array]self.alarm
pushi.e 0
cmp.i.v GT
bf [23]

:[22]
pushi.e 1
conv.i.d
pushi.e -1
pushi.e 2
push.v [array]self.alarm
div.v.d
pop.v.v 190.fadespeed

:[23]
pushi.e 255
pushenv [25]

:[24]
pushi.e 0
pop.v.i self.active

:[25]
popenv [24]

:[end]