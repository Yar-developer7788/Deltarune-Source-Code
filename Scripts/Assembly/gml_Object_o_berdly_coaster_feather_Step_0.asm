.localvar 2 arguments

:[0]
push.v self.speed
push.d 0.94
mul.d.v
pop.v.v self.speed
push.v self.con
pushi.e 0
cmp.i.v EQ
bf [3]

:[1]
push.v self.speed
pushi.e 2
cmp.i.v LT
bf [3]

:[2]
pushi.e 1
pop.v.i self.con

:[3]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [9]

:[4]
push.v self.timer
push.e 1
add.i.v
pop.v.v self.timer
push.v self.y
push.v self.timer
pushi.e 10
conv.i.d
div.d.v
add.v.v
pop.v.v self.y
pushi.e 2
dup.i 0
push.i 0
cmp.i.i LTE
bt [6]

:[5]
push.v self.life
push.e 1
sub.i.v
pop.v.v self.life
push.i 1
sub.i.i
dup.i 0
conv.i.b
bt [5]

:[6]
popz.i
push.v self.life
pushi.e 0
cmp.i.v LTE
bf [8]

:[7]
call.i instance_destroy(argc=0)
popz.v

:[8]
push.v self.life
push.v self.lifeD
div.v.v
pop.v.v self.image_alpha

:[9]
push.v self.image_angle
push.v self.rot
add.v.v
pop.v.v self.image_angle
push.v self.rot
push.d 0.95
mul.d.v
pop.v.v self.rot

:[end]