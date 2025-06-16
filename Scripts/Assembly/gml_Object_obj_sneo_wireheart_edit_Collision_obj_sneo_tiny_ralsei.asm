.localvar 2 arguments

:[0]
push.v other.active
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
exit.i

:[2]
push.v self.invincibility_timer
pushi.e 0
cmp.i.v GT
bf [6]

:[3]
call.i @@Other@@(argc=0)
pushi.e -9
pushenv [5]

:[4]
call.i instance_destroy(argc=0)
popz.v

:[5]
popenv [4]
exit.i

:[6]
pushi.e 10
pop.v.i self.invincibility_timer
pushglb.v global.turntimer
pushi.e 150
cmp.i.v LT
bf [19]

:[7]
pushi.e 0
pop.v.i self.hp
push.v self.type
pushi.e 0
cmp.i.v EQ
bt [13]

:[8]
push.v self.type
pushi.e 1
cmp.i.v EQ
bf [11]

:[9]
push.v 697.difficulty
pushi.e 2
cmp.i.v GT
bf [11]

:[10]
pushglb.v global.turntimer
pushi.e 20
cmp.i.v GT
b [12]

:[11]
push.e 0

:[12]
b [14]

:[13]
push.e 1

:[14]
bf [18]

:[15]
pushi.e 20
pop.v.i global.turntimer
pushi.e 635
pushenv [17]

:[16]
pushi.e 0
pop.v.i self.hp
pushi.e 1
pop.v.i self.destroyed

:[17]
popenv [16]

:[18]
b [29]

:[19]
push.v self.type
pushi.e 0
cmp.i.v EQ
bt [24]

:[20]
push.v self.type
pushi.e 1
cmp.i.v EQ
bf [22]

:[21]
push.v 697.difficulty
pushi.e 2
cmp.i.v GT
b [23]

:[22]
push.e 0

:[23]
b [25]

:[24]
push.e 1

:[25]
bf [27]

:[26]
push.v global.turntimer
pushi.e 80
sub.i.v
pop.v.v global.turntimer
b [29]

:[27]
push.v self.hp
pushi.e 5
sub.i.v
pop.v.v self.hp
push.v other.hp
pushi.e 10
sub.i.v
pop.v.v other.hp
push.i 133633
setowner.e
pushi.e 10
conv.i.v
call.i @@Other@@(argc=0)
pushi.e -9
pushi.e 0
pop.v.v [array]self.alarm
pushi.e 171
conv.i.v
call.i audio_is_playing(argc=1)
conv.v.b
not.b
bf [29]

:[28]
pushi.e 171
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v

:[29]
pushi.e 5
pop.v.i self.damagetimer
pushi.e 167
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
push.v self.hp
pushi.e 0
cmp.i.v LTE
bf [end]

:[30]
pushi.e 1
pop.v.i self.destroyed

:[end]