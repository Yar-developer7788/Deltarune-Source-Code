.localvar 2 arguments

:[0]
push.v other.block
pushi.e 0
cmp.i.v EQ
bf [8]

:[1]
push.v self.hitted
pushi.e 0
cmp.i.v EQ
bf [7]

:[2]
call.i @@Other@@(argc=0)
pushi.e -9
pushenv [4]

:[3]
push.v self.hits
push.e 1
add.i.v
pop.v.v self.hits

:[4]
popenv [3]
pushi.e 0
pop.v.i self.image_speed
pushi.e 1
pop.v.i self.image_index
pushi.e 1
pop.v.i self.hitted
pushi.e 12
pop.v.i self.hspeed
pushi.e -12
pop.v.i self.vspeed
push.i 231204
setowner.e
pushi.e -5
pushi.e 462
dup.i 1
push.v [array]self.flag
dup.v 0
dup.i 4 48
push.e 1
add.i.v
pop.i.v [array]global.flag
popz.v
push.v self.small
pushi.e 1
cmp.i.v EQ
bf [6]

:[5]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 281
conv.i.v
call.i audio_play_sound(argc=3)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 280
conv.i.v
call.i audio_play_sound(argc=3)
popz.v
b [7]

:[6]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 282
conv.i.v
call.i audio_play_sound(argc=3)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 279
conv.i.v
call.i audio_play_sound(argc=3)
popz.v

:[7]
b [end]

:[8]
call.i @@Other@@(argc=0)
pushi.e -9
pushenv [10]

:[9]
pushi.e 1
pop.v.i self.blockeffectcon

:[10]
popenv [9]
push.v self.x
pushi.e 6
add.i.v
pop.v.v self.x
pushi.e 12
pop.v.i self.hspeed
pushi.e 180
pop.v.i self.gravity_direction
push.d 0.5
pop.v.d self.gravity

:[end]