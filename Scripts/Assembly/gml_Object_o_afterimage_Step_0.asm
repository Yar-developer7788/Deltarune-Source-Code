.localvar 2 arguments

:[0]
push.v self.image_alpha
push.v self.rate
sub.v.v
pop.v.v self.image_alpha
push.v self.image_alpha
pushi.e 0
cmp.i.v LTE
bf [2]

:[1]
call.i instance_destroy(argc=0)
popz.v

:[2]
push.v self.hasboss
pushi.e 1
cmp.i.v EQ
bf [4]

:[3]
push.v self.boss
pushi.e -9
push.v [stacktop]self.x
pop.v.v self.x
push.v self.boss
pushi.e -9
push.v [stacktop]self.y
pop.v.v self.y

:[4]
push.v self.image_alpha
pushi.e 1
cmp.i.v GT
bf [6]

:[5]
push.v self.punch_telegraph
pushi.e 1
cmp.i.v EQ
b [7]

:[6]
push.e 0

:[7]
bf [end]

:[8]
pushi.e 1
pop.v.i self.punch_telegraph
push.d -0.4
pop.v.d self.rate

:[end]