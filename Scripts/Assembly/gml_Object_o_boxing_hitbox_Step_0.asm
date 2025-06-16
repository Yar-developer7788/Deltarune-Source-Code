.localvar 2 arguments

:[0]
push.v self.timer
pushi.e 1
sub.i.v
pop.v.v self.timer
push.v self.timer
pushi.e 0
cmp.i.v LTE
bf [8]

:[1]
call.i instance_destroy(argc=0)
popz.v
push.v self.kick
pushi.e 1
cmp.i.v EQ
bf [5]

:[2]
push.v 777.wireframe_boxing
pushi.e 1
cmp.i.v EQ
bf [5]

:[3]
push.v self.has_tutorial_kick_hit_player
pushi.e 0
cmp.i.v EQ
bf [5]

:[4]
push.v 777.succeeded_kick_tutorial
pushi.e 0
cmp.i.v EQ
b [6]

:[5]
push.e 0

:[6]
bf [8]

:[7]
pushi.e 1
pop.v.i 777.failed_kick_tutorial_counter
pushi.e 1
pop.v.i 777.succeeded_kick_tutorial

:[8]
pushi.e 255
pop.v.i self.image_blend
push.v self.hit_dodging
pushi.e 1
cmp.i.v EQ
bf [10]

:[9]
push.i 32768
pop.v.i self.image_blend

:[10]
push.v self.hit_ducking
pushi.e 0
cmp.i.v EQ
bf [12]

:[11]
push.i 16776960
pop.v.i self.image_blend

:[12]
push.v self.hit_jumping
pushi.e 0
cmp.i.v EQ
bf [14]

:[13]
push.i 65535
pop.v.i self.image_blend

:[14]
push.v self.graze_only
pushi.e 1
cmp.i.v EQ
bf [end]

:[15]
push.i 8421504
pop.v.i self.image_blend

:[end]