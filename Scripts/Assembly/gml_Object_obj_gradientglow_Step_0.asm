.localvar 2 arguments

:[0]
push.v self.timer
push.e 1
add.i.v
pop.v.v self.timer
push.v self.timer
pushi.e 10
conv.i.d
div.d.v
call.i sin(argc=1)
push.d 0.5
mul.d.v
push.d 1.5
add.d.v
pop.v.v self.image_yscale

:[end]