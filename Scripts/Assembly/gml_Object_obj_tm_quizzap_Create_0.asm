.localvar 2 arguments

:[0]
call.i event_inherited(argc=0)
popz.v
pushi.e 0
pop.v.i self.destroyonhit
pushi.e -1
pop.v.i self.letter
push.v self.x
pop.v.v self.xx
push.v self.y
pop.v.v self.yy
pushi.e 0
pop.v.i self.active
pushi.e 0
pop.v.i self.image_alpha
pushi.e 0
pop.v.b self.rotated

:[end]