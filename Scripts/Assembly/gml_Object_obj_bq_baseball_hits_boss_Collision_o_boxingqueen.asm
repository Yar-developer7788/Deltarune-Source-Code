.localvar 2 arguments

:[0]
push.v 789.baseball_hit_boss_number
pushi.e 0
cmp.i.v GT
bf [2]

:[1]
exit.i

:[2]
push.v self.state
pushi.e 0
cmp.i.v EQ
bf [4]

:[3]
push.v self.y
pushi.e 80
cmp.i.v GT
b [5]

:[4]
push.e 0

:[5]
bf [7]

:[6]
pushi.e 1
pop.v.i self.state
pushi.e 0
pop.v.i self.vspeed

:[7]
pushi.e 293
conv.i.v
call.i audio_is_playing(argc=1)
conv.v.b
bf [end]

:[8]
pushi.e 293
conv.i.v
call.i audio_stop_sound(argc=1)
popz.v

:[end]