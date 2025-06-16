.localvar 2 arguments

:[0]
pushi.e 600
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [2]

:[1]
call.i instance_destroy(argc=0)
popz.v
b [3]

:[2]
push.v 600.y
pop.v.v self.y
push.v 600.x
pop.v.v self.x

:[3]
push.v self.invincible
push.e 1
sub.i.v
pop.v.v self.invincible
push.v self.invincible
pushi.e 0
cmp.i.v GT
bf [5]

:[4]
push.i 8421504
pop.v.i self.image_blend
b [end]

:[5]
push.i 15245824
pop.v.i self.image_blend

:[end]