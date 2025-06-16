.localvar 2 arguments

:[0]
pushi.e 2
pop.v.i self.image_xscale
pushi.e 2
pop.v.i self.image_yscale
push.d 0.2
pop.v.d self.image_speed
pushi.e 1
pop.v.i self.good
pushi.e 0
pop.v.i self.offing
pushi.e 1
pop.v.i self.con
push.v self.x
pop.v.v self.xPos
push.v self.y
pop.v.v self.yPos
push.v self.y
pushi.e 120
sub.i.v
pop.v.v self.y
pushi.e 0
pop.v.i self.moveY
pushi.e 0
pop.v.i self.moveAmount
pushi.e 0
pop.v.i self.collided
pushi.e 0
pop.v.i self.timer
pushi.e 360
conv.i.v
call.i random(argc=1)
pop.v.v self.t
push.v self.y
pop.v.v self.yy
push.d 4.2
conv.d.v
push.d 3.8
conv.d.v
call.i random_range(argc=2)
pop.v.v self.increment
pushi.e 75
pop.v.i self.amplitude
push.v self.t
push.v self.increment
add.v.v
pushi.e 360
mod.i.v
pop.v.v self.t
push.v self.amplitude
push.v self.t
call.i dsin(argc=1)
mul.v.v
pop.v.v self.shift
push.v self.yy
push.v self.shift
add.v.v
pop.v.v self.y
push.v self.t
push.v self.increment
add.v.v
pushi.e 360
mod.i.v
pop.v.v self.t
push.v self.amplitude
push.v self.t
call.i dsin(argc=1)
mul.v.v
pop.v.v self.shift
push.v self.yy
push.v self.shift
add.v.v
pop.v.v self.y
push.v self.xstart
push.v self.y
call.i gml_Script_cameray(argc=0)
sub.v.v
push.d 0.1
add.d.v
push.d 3.375
div.d.v
sub.v.v
pushi.e 18
add.i.v
pop.v.v self.x

:[end]