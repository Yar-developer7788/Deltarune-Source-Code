.localvar 2 arguments

:[0]
push.v self.init
pushi.e 0
cmp.i.v EQ
bf [5]

:[1]
push.v self.hspeed
pop.v.v self.remhspeed
push.v self.y
pop.v.v self.remy
pushi.e 872
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [3]

:[2]
push.v 872.y
push.v self.sprite_height
push.v self.howfar
mul.v.v
add.v.v
pop.v.v self.yspot
b [4]

:[3]
pushi.e 240
pop.v.i self.yspot

:[4]
pushi.e 1
pop.v.i self.init

:[5]
push.v self.con
pushi.e 0
cmp.i.v EQ
bf [8]

:[6]
push.v self.timer
push.e 1
add.i.v
pop.v.v self.timer
push.v self.timer
push.v self.howlong
div.v.v
pushi.e 1
conv.i.v
call.i min(argc=2)
push.v self.yspot
push.v self.remy
call.i lerp(argc=3)
pop.v.v self.y
push.v self.timer
push.v self.howlong
div.v.v
pushi.e 1
conv.i.v
call.i min(argc=2)
push.v self.maxhspeed
push.v self.remhspeed
call.i lerp(argc=3)
pop.v.v self.hspeed
push.v self.timer
push.v self.howlong
cmp.v.v GTE
bf [8]

:[7]
pushi.e 1
pop.v.i self.con
pushi.e 0
pop.v.i self.timer

:[8]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [end]

:[9]
push.v self.hspeed
push.v self.hspeed
call.i sign(argc=1)
push.d 0.25
mul.d.v
add.v.v
pop.v.v self.hspeed
push.v self.timer
push.e 1
add.i.v
pop.v.v self.timer
push.v self.timer
pushi.e 30
cmp.i.v GTE
bf [11]

:[10]
pushi.e 0
pop.v.i self.active
push.v self.image_alpha
push.d 0.1
sub.d.v
pop.v.v self.image_alpha

:[11]
push.v self.image_alpha
pushi.e 0
cmp.i.v LTE
bf [end]

:[12]
call.i instance_destroy(argc=0)
popz.v

:[end]