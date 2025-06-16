.localvar 2 arguments

:[0]
pushglb.v global.turntimer
pushi.e 150
cmp.i.v LT
bf [13]

:[1]
pushi.e 0
pop.v.i self.hp
push.v self.type
pushi.e 0
cmp.i.v EQ
bt [7]

:[2]
push.v self.type
pushi.e 1
cmp.i.v EQ
bf [5]

:[3]
push.v 697.difficulty
pushi.e 2
cmp.i.v GT
bf [5]

:[4]
pushglb.v global.turntimer
pushi.e 20
cmp.i.v GT
b [6]

:[5]
push.e 0

:[6]
b [8]

:[7]
push.e 1

:[8]
bf [12]

:[9]
pushi.e 20
pop.v.i global.turntimer
pushi.e 635
pushenv [11]

:[10]
pushi.e 0
pop.v.i self.hp
pushi.e 1
pop.v.i self.destroyed

:[11]
popenv [10]

:[12]
b [22]

:[13]
push.v self.type
pushi.e 0
cmp.i.v EQ
bt [18]

:[14]
push.v self.type
pushi.e 1
cmp.i.v EQ
bf [16]

:[15]
push.v 697.difficulty
pushi.e 2
cmp.i.v GT
b [17]

:[16]
push.e 0

:[17]
b [19]

:[18]
push.e 1

:[19]
bf [21]

:[20]
push.v global.turntimer
pushi.e 5
sub.i.v
pop.v.v global.turntimer
b [22]

:[21]
push.v self.hp
push.d 0.25
sub.d.v
pop.v.v self.hp

:[22]
call.i @@Other@@(argc=0)
pushi.e -9
pushenv [24]

:[23]
call.i instance_destroy(argc=0)
popz.v

:[24]
popenv [23]
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

:[25]
pushi.e 1
pop.v.i self.destroyed

:[end]