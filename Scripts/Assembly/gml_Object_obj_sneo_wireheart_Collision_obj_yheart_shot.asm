.localvar 2 arguments

:[0]
push.v self.invincibility_timer
pushi.e 0
cmp.i.v GT
bf [2]

:[1]
push.v other.big
pushi.e 0
cmp.i.v EQ
b [3]

:[2]
push.e 0

:[3]
bf [7]

:[4]
call.i @@Other@@(argc=0)
pushi.e -9
pushenv [6]

:[5]
call.i instance_destroy(argc=0)
popz.v

:[6]
popenv [5]
exit.i

:[7]
pushi.e 10
pop.v.i self.invincibility_timer
pushglb.v global.turntimer
pushi.e 150
cmp.i.v LT
bf [20]

:[8]
pushi.e 0
pop.v.i self.hp
push.v self.type
pushi.e 0
cmp.i.v EQ
bt [14]

:[9]
push.v self.type
pushi.e 1
cmp.i.v EQ
bf [12]

:[10]
push.v 697.difficulty
pushi.e 2
cmp.i.v GT
bf [12]

:[11]
pushglb.v global.turntimer
pushi.e 20
cmp.i.v GT
b [13]

:[12]
push.e 0

:[13]
b [15]

:[14]
push.e 1

:[15]
bf [19]

:[16]
pushi.e 20
pop.v.i global.turntimer
pushi.e 635
pushenv [18]

:[17]
pushi.e 0
pop.v.i self.hp
pushi.e 1
pop.v.i self.destroyed

:[18]
popenv [17]

:[19]
b [39]

:[20]
push.v self.type
pushi.e 0
cmp.i.v EQ
bt [25]

:[21]
push.v self.type
pushi.e 1
cmp.i.v EQ
bf [23]

:[22]
push.v 697.difficulty
pushi.e 2
cmp.i.v GT
b [24]

:[23]
push.e 0

:[24]
b [26]

:[25]
push.e 1

:[26]
bf [34]

:[27]
push.v other.big
pushi.e 1
cmp.i.v EQ
bf [31]

:[28]
push.v global.turntimer
pushi.e 80
push.v self.chargeshothitcount
pushi.e 10
mul.i.v
sub.v.i
sub.v.v
pop.v.v global.turntimer
push.v self.chargeshothitcount
pushi.e 3
cmp.i.v LT
bf [30]

:[29]
push.v self.chargeshothitcount
push.e 1
add.i.v
pop.v.v self.chargeshothitcount

:[30]
b [33]

:[31]
push.v global.turntimer
pushi.e 20
push.v self.normalshothitcount
sub.v.i
sub.v.v
pop.v.v global.turntimer
push.v self.normalshothitcount
pushi.e 10
cmp.i.v LT
bf [33]

:[32]
push.v self.normalshothitcount
push.e 1
add.i.v
pop.v.v self.normalshothitcount

:[33]
b [37]

:[34]
push.v other.big
pushi.e 1
cmp.i.v EQ
bf [36]

:[35]
push.v self.hp
pushi.e 5
sub.i.v
pop.v.v self.hp
b [37]

:[36]
push.v self.hp
push.e 1
sub.i.v
pop.v.v self.hp

:[37]
call.i gml_Script_scr_debug(argc=0)
conv.v.b
bf [39]

:[38]
push.v self.type
call.i show_debug_message(argc=1)
popz.v
push.v self.hp
call.i show_debug_message(argc=1)
popz.v

:[39]
call.i @@Other@@(argc=0)
pushi.e -9
pushenv [41]

:[40]
call.i instance_destroy(argc=0)
popz.v

:[41]
popenv [40]
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

:[42]
pushi.e 1
pop.v.i self.destroyed

:[end]