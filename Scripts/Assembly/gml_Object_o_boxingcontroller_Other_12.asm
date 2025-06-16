.localvar 2 arguments

:[0]
push.v self.invincible
pushi.e 0
cmp.i.v EQ
bf [end]

:[1]
pushi.e 1
conv.i.v
call.i event_user(argc=1)
popz.v
pushi.e 1
pop.v.i self.hurtcon
pushi.e 0
pop.v.i self.hurttimer
pushi.e 7
pop.v.i self.image_index

:[end]