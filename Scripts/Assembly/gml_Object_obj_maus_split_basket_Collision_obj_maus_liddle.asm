.localvar 2 arguments

:[0]
push.v other.con
pushi.e 5
cmp.i.v EQ
bf [2]

:[1]
push.v other.captured
pushi.e 0
cmp.i.v EQ
b [3]

:[2]
push.e 0

:[3]
bf [end]

:[4]
push.v self.caught
push.e 1
add.i.v
pop.v.v self.caught
push.v self.depth
pushi.e 1
add.i.v
pop.v.v other.depth
pushi.e 1
pop.v.i other.captured
pushi.e 1
pop.v.i self.draw_in
push.v self.draw_in_timer
pushi.e 10
cmp.i.v GT
bf [6]

:[5]
pushi.e 0
pop.v.i self.draw_in_timer

:[6]
pushi.e 768
pushenv [8]

:[7]
push.v self.mousecount
push.e 1
sub.i.v
pop.v.v self.mousecount

:[8]
popenv [7]
push.v self.vspeed
pop.v.v other.vspeed
push.v self.friction
pop.v.v other.friction
pushi.e 768
pushenv [10]

:[9]
push.v self.mercycount
pushi.e 2
add.i.v
pop.v.v self.mercycount

:[10]
popenv [9]
pushi.e 761
pushenv [12]

:[11]
pushi.e 0
pop.v.i self.actfailure

:[12]
popenv [11]
pushi.e 57
conv.i.v
call.i gml_Script_snd_stop(argc=1)
popz.v
pushi.e 57
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
pushi.e 0
conv.i.v
push.v self.noisevol
pushi.e 57
conv.i.v
call.i gml_Script_snd_volume(argc=3)
popz.v

:[end]