.localvar 2 arguments

:[0]
push.v self.init
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
exit.i

:[2]
push.v self.endtime
pushi.e 0
cmp.i.v EQ
bf [4]

:[3]
call.i instance_destroy(argc=0)
popz.v
b [end]

:[4]
pushi.e 0
pop.v.i self.image_alpha

:[end]