.localvar 2 arguments

:[0]
call.i event_inherited(argc=0)
popz.v
push.s "$"@13512
pop.v.s self.bulletletter
push.v self.ystart
push.v 872.y
sub.v.v
call.i abs(argc=1)
pop.v.v self.sinesize
push.v 872.y
push.v self.ystart
sub.v.v
call.i sign(argc=1)
pop.v.v self.sinesign
pushi.e 0
pop.v.i self.mouthx
pushi.e 0
pop.v.i self.creator
pushi.e 0
pop.v.i self.type
pushi.e 1
pop.v.i self.scale
pushi.e 0
pop.v.i self.init
pushi.e 0
pop.v.i self.rawspeed
push.v 631.x
pushi.e 8
add.i.v
pop.v.v self.targetx
push.v 631.y
pushi.e 8
add.i.v
pop.v.v self.targety
pushi.e 0
pop.v.i self.timer
push.v self.y
pop.v.v self.truey
pushi.e 180
pop.v.i self.fauxdirection
pushi.e 0
pop.v.b self.tracked

:[end]