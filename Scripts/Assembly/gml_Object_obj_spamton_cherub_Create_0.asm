.localvar 2 arguments

:[0]
pushi.e 0
pop.v.i self.timer
push.v self.x
pushi.e 200
add.i.v
pop.v.v self.x
push.v self.y
pushi.e 150
sub.i.v
pop.v.v self.y
push.v self.x
pop.v.v self.xspawn
push.v self.y
pop.v.v self.yspawn
push.d 6.283185307179586
conv.d.v
call.i random(argc=1)
pop.v.v self.offset
pushi.e 0
pop.v.b self.healer
pushi.e 0
pop.v.i self.heal_state
pushi.e 2
pop.v.i self.image_xscale
pushi.e 2
pop.v.i self.image_yscale
push.d 0.5
pop.v.d self.image_speed
pushi.e 8
push.v self.offset
add.v.i
call.i cos(argc=1)
neg.v
pushi.e 20
mul.i.v
pop.v.v self.xoff
pushi.e 8
push.v self.offset
add.v.i
call.i sin(argc=1)
neg.v
pushi.e 20
mul.i.v
pop.v.v self.yoff
pushi.e 0
pop.v.i self.target

:[end]