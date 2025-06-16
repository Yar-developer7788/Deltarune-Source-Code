.localvar 2 arguments

:[0]
push.v self.init
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
pushi.e 0
push.v self.source
pushi.e -9
pop.v.i [stacktop]self.image_alpha
pushi.e 1
pop.v.i self.init

:[2]
push.v self.animdone
conv.v.b
bf [end]

:[3]
push.v self.timer
push.e 1
add.i.v
pop.v.v self.timer
push.v self.timer
push.v self.endtime
cmp.v.v GTE
bf [end]

:[4]
push.v self.source
pushi.e -4
cmp.i.v NEQ
bf [6]

:[5]
pushi.e 1
push.v self.source
pushi.e -9
pop.v.i [stacktop]self.image_alpha

:[6]
call.i instance_destroy(argc=0)
popz.v

:[end]