.localvar 2 arguments

:[0]
pushi.e 2
pop.v.i self.image_xscale
pushi.e 2
pop.v.i self.image_yscale
pushi.e 0
pop.v.i self.con
pushi.e 0
pop.v.i self.image_speed
pushi.e 0
pop.v.i self.shotcounter
pushi.e 0
pop.v.i self.shoot
pushi.e 2
pop.v.i self.multiplier
pushi.e -1
pop.v.i self.vspeed
pushi.e 0
pop.v.i self.steptimer
pushi.e 0
pop.v.i self.desx
pushi.e 0
pop.v.i self.timer
pushi.e 60
conv.i.v
pushi.e 45
conv.i.v
pushi.e 30
conv.i.v
call.i choose(argc=3)
pop.v.v self.timer1
push.v self.timer1
pushi.e 60
conv.i.v
pushi.e 45
conv.i.v
pushi.e 30
conv.i.v
call.i choose(argc=3)
add.v.v
pop.v.v self.timer2
push.v self.timer2
pushi.e 60
conv.i.v
pushi.e 45
conv.i.v
pushi.e 30
conv.i.v
call.i choose(argc=3)
add.v.v
pop.v.v self.timer3
pushi.e 160
pushi.e 120
conv.i.v
pushi.e 4
conv.i.v
call.i irandom_range(argc=2)
add.v.i
pop.v.v self.startTarget

:[end]