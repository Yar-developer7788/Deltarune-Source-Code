.localvar 2 arguments

:[0]
push.v self.visibiliytimer
push.e 1
add.i.v
pop.v.v self.visibiliytimer
push.v self.visibiliytimer
pushi.e 2
cmp.i.v LT
bf [2]

:[1]
exit.i

:[2]
push.v self.image_alpha
pushi.e 1
cmp.i.v LT
bf [4]

:[3]
push.v self.image_alpha
push.d 0.1
add.d.v
pop.v.v self.image_alpha

:[4]
push.v self.image_alpha
call.i draw_set_alpha(argc=1)
popz.v
call.i draw_self(argc=0)
popz.v
pushi.e 1
conv.i.v
call.i draw_set_alpha(argc=1)
popz.v

:[end]