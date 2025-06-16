.localvar 2 arguments

:[0]
pushi.e 2
pop.v.i self.f
pushi.e 359
conv.i.v
call.i irandom(argc=1)
pop.v.v self.image_angle
pushi.e 359
conv.i.v
call.i irandom(argc=1)
pop.v.v self.direction
pushi.e 16
conv.i.d
push.v self.f
div.v.d
pop.v.v self.speed

:[end]