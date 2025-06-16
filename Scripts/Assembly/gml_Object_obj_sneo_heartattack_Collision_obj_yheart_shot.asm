.localvar 2 arguments

:[0]
push.v self.con
pushi.e 3
cmp.i.v EQ
bf [2]

:[1]
exit.i

:[2]
push.v self.visible
pushi.e 0
cmp.b.v EQ
bf [4]

:[3]
exit.i

:[4]
pushi.e 6
pop.v.i self.shakex
pushi.e 6
pop.v.i self.shakey
push.v self.heart_health
push.v other.damage
sub.v.v
pop.v.v self.heart_health
push.v other.damage
pushi.e 2
cmp.i.v GT
bf [6]

:[5]
push.v global.turntimer
push.v 697.heart_hurt_timer_reduction_bigshot
sub.v.v
pop.v.v global.turntimer
b [7]

:[6]
push.v global.turntimer
push.v 697.heart_hurt_timer_reduction
sub.v.v
pop.v.v global.turntimer

:[7]
pushi.e 167
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
call.i @@Other@@(argc=0)
pushi.e -9
pushenv [9]

:[8]
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v

:[9]
popenv [8]
push.v self.heart_health
pushi.e 1
cmp.i.v LT
bf [25]

:[10]
pushi.e 3
pop.v.i self.con
pushi.e 0
pop.v.i self.shootcon
pushi.e 0
pop.v.i self.speed
pushi.e 1
pop.v.i 697.partmode
pushi.e 999
pop.v.i self.bustertimer
pushglb.v global.turntimer
pushi.e 2
cmp.i.v GT
bf [12]

:[11]
pushi.e 37
pop.v.i global.turntimer

:[12]
pushi.e 599
pushenv [14]

:[13]
call.i instance_destroy(argc=0)
popz.v

:[14]
popenv [13]
pushi.e 603
pushenv [16]

:[15]
call.i instance_destroy(argc=0)
popz.v

:[16]
popenv [15]
pushi.e 611
pushenv [18]

:[17]
call.i instance_destroy(argc=0)
popz.v

:[18]
popenv [17]
pushi.e 594
pushenv [20]

:[19]
call.i instance_destroy(argc=0)
popz.v

:[20]
popenv [19]
pushi.e 632
pushenv [22]

:[21]
call.i instance_destroy(argc=0)
popz.v

:[22]
popenv [21]
pushi.e 753
pushenv [24]

:[23]
call.i instance_destroy(argc=0)
popz.v

:[24]
popenv [23]

:[25]
pushglb.v global.turntimer
pushi.e 51
cmp.i.v LT
bf [end]

:[26]
pushi.e 50
pop.v.i global.turntimer
pushi.e 0
pop.v.i self.attackcount

:[end]