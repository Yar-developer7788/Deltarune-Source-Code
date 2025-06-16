.localvar 2 arguments

:[0]
push.v self.dir
pop.v.v self.image_angle
push.v self.f
push.d 1.4
add.d.v
pop.v.v self.f
push.v self.x
push.v self.dir
push.v self.f
call.i lengthdir_x(argc=2)
add.v.v
pop.v.v self.x
push.v self.y
push.v self.dir
push.v self.f
call.i lengthdir_y(argc=2)
add.v.v
pop.v.v self.y
pushglb.v global.turntimer
pushi.e 1
cmp.i.v LT
bf [end]

:[1]
call.i instance_destroy(argc=0)
popz.v

:[end]