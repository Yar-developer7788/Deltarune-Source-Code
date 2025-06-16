.localvar 2 arguments
.localvar 22791 floory 14511

:[0]
pushi.e 240
pop.v.i local.floory
push.v self.x
pushi.e -20
cmp.i.v LT
bf [2]

:[1]
call.i instance_destroy(argc=0)
popz.v

:[2]
push.v self.state
pushi.e 1
cmp.i.v EQ
bf [end]

:[3]
push.v self.image_angle
pushi.e 4
sub.i.v
pop.v.v self.image_angle
push.v self.throw_yspeed
push.v self.grav
add.v.v
pop.v.v self.throw_yspeed
push.v self.throw_yspeed
push.v self.max_yspeed
cmp.v.v GT
bf [5]

:[4]
push.v self.max_syspeed
pop.v.v self.throw_yspeed

:[5]
push.v self.x
pop.v.v self.prevx
push.v self.throw_xspeed
pushi.e 0
cmp.i.v LT
bf [10]

:[6]
push.v self.throw_xspeed
pop.v.v self.i

:[7]
push.v self.i
pushi.e 0
cmp.i.v LT
bf [10]

:[8]
push.v self.x
push.v self.i
add.v.v
pop.v.v self.x
b [10]

:[9]
push.v self.i
push.e 1
add.i.v
pop.v.v self.i
b [7]

:[10]
push.v self.throw_yspeed
pushi.e 0
cmp.i.v LT
bf [16]

:[11]
push.v self.throw_yspeed
pop.v.v self.i

:[12]
push.v self.i
pushi.e 0
cmp.i.v LT
bf [16]

:[13]
push.v self.y
push.v self.i
add.v.v
pushloc.v local.floory
cmp.v.v LT
bf [15]

:[14]
push.v self.y
push.v self.i
add.v.v
pop.v.v self.y
b [16]

:[15]
push.v self.i
push.e 1
add.i.v
pop.v.v self.i
b [12]

:[16]
push.v self.throw_yspeed
pushi.e 0
cmp.i.v GT
bf [22]

:[17]
push.v self.throw_yspeed
pop.v.v self.i

:[18]
push.v self.i
pushi.e 0
cmp.i.v GT
bf [22]

:[19]
push.v self.y
push.v self.i
add.v.v
pushloc.v local.floory
cmp.v.v LT
bf [21]

:[20]
push.v self.y
push.v self.i
add.v.v
pop.v.v self.y
b [22]

:[21]
push.v self.i
push.e 1
sub.i.v
pop.v.v self.i
b [18]

:[22]
push.v self.y
pushi.e 1
add.i.v
pushloc.v local.floory
cmp.v.v GT
bf [end]

:[23]
push.v self.throw_yspeed
pushi.e 0
cmp.i.v GT
bf [end]

:[24]
push.v self.throw_yspeed
pushi.e 0
cmp.i.v GT
bf [26]

:[25]
push.v self.throw_yspeed
neg.v
push.d 0.5
mul.d.v
pop.v.v self.throw_yspeed

:[26]
push.v self.throw_xspeed
pushi.e 0
cmp.i.v GT
bf [28]

:[27]
push.v self.throw_xspeed
push.v self.throw_xspeed
push.d 0.5
conv.d.v
call.i min(argc=2)
sub.v.v
pop.v.v self.throw_xspeed
b [end]

:[28]
push.v self.throw_xspeed
pushi.e 0
cmp.i.v LT
bf [end]

:[29]
push.v self.throw_xspeed
push.v self.throw_xspeed
call.i abs(argc=1)
push.d 0.5
conv.d.v
call.i min(argc=2)
add.v.v
pop.v.v self.throw_xspeed

:[end]