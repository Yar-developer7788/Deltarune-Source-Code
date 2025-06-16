.localvar 2 arguments

:[0]
push.v self.activeDecay
pushi.e 1
cmp.i.v EQ
bf [3]

:[1]
pushi.e 1169
conv.i.v
push.v self.y
push.v self.x
call.i place_meeting(argc=3)
conv.v.b
not.b
bf [3]

:[2]
pushi.e 2
pop.v.i self.activeDecay

:[3]
push.v self.activeDecay
pushi.e 2
cmp.i.v EQ
bf [end]

:[4]
push.v self.image_alpha
push.d 0.9
mul.d.v
pop.v.v self.image_alpha
push.v self.image_alpha
push.d 0.01
cmp.d.v LT
bf [end]

:[5]
call.i instance_destroy(argc=0)
popz.v

:[end]