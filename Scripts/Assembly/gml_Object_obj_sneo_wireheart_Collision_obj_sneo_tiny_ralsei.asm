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
bf [4]

:[3]
exit.i

:[4]
pushi.e 10
pop.v.i self.invincibility_timer
pushglb.v global.turntimer
pushi.e 150
cmp.i.v LT
bf [17]

:[5]
pushi.e 0
pop.v.i self.hp
push.v self.type
pushi.e 0
cmp.i.v EQ
bt [11]

:[6]
push.v self.type
pushi.e 1
cmp.i.v EQ
bf [9]

:[7]
push.v 697.difficulty
pushi.e 2
cmp.i.v GT
bf [9]

:[8]
pushglb.v global.turntimer
pushi.e 20
cmp.i.v GT
b [10]

:[9]
push.e 0

:[10]
b [12]

:[11]
push.e 1

:[12]
bf [16]

:[13]
pushi.e 20
pop.v.i global.turntimer
pushi.e 635
pushenv [15]

:[14]
pushi.e 0
pop.v.i self.hp
pushi.e 1
pop.v.i self.destroyed

:[15]
popenv [14]

:[16]
b [27]

:[17]
push.v self.type
pushi.e 0
cmp.i.v EQ
bt [22]

:[18]
push.v self.type
pushi.e 1
cmp.i.v EQ
bf [20]

:[19]
push.v 697.difficulty
pushi.e 2
cmp.i.v GT
b [21]

:[20]
push.e 0

:[21]
b [23]

:[22]
push.e 1

:[23]
bf [25]

:[24]
push.v global.turntimer
pushi.e 80
sub.i.v
pop.v.v global.turntimer
b [27]

:[25]
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
bf [27]

:[26]
pushi.e 171
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v

:[27]
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

:[28]
pushi.e 1
pop.v.i self.destroyed

:[end]