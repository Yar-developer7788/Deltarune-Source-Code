.localvar 2 arguments

:[0]
push.v self.con
pushi.e 3
cmp.i.v EQ
bf [2]

:[1]
exit.i

:[2]
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
bf [4]

:[3]
push.v global.turntimer
push.v 697.heart_hurt_timer_reduction_bigshot
sub.v.v
pop.v.v global.turntimer
b [5]

:[4]
push.v global.turntimer
push.v 697.heart_hurt_timer_reduction
sub.v.v
pop.v.v global.turntimer

:[5]
pushi.e 167
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
call.i @@Other@@(argc=0)
pushi.e -9
pushenv [7]

:[6]
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v

:[7]
popenv [6]
push.v self.heart_health
pushi.e 1
cmp.i.v LT
bf [end]

:[8]
pushi.e 3
pop.v.i self.con
pushi.e 0
pop.v.i self.shootcon
pushi.e 0
pop.v.i self.speed
pushglb.v global.turntimer
pushi.e 2
cmp.i.v GT
bf [end]

:[9]
pushi.e 37
pop.v.i global.turntimer

:[end]