.localvar 2 arguments

:[0]
push.v self.image_alpha
pushi.e 0
cmp.i.v GT
bf [5]

:[1]
push.v self.image_alpha
push.d 0.2
sub.d.v
pop.v.v self.image_alpha
push.v self.rotate_timer
push.e 1
sub.i.v
pop.v.v self.rotate_timer
push.v self.rotate_timer
pushi.e 0
cmp.i.v LTE
bf [3]

:[2]
push.v self.image_angle
pushi.e 90
add.i.v
pop.v.v self.image_angle
b [4]

:[3]
push.v self.rotate_time
pop.v.v self.rotate_timer

:[4]
b [end]

:[5]
call.i instance_destroy(argc=0)
popz.v

:[end]