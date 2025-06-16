.localvar 2 arguments

:[0]
call.i event_inherited(argc=0)
popz.v
pushi.e 0
pop.v.i self.active
pushi.e 0
pop.v.i self.destroyonhit
pushi.e 0
pop.v.i self.initialspeed
pushi.e 0
pop.v.i self.eyetimer
pushi.e 0
pop.v.i self.init
pushi.e 0
pop.v.b self.big
pushi.e 0
pop.v.b self.stuck
pushi.e 761
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [end]

:[1]
pushi.e -5
push.v 761.myself
conv.v.i
push.v [array]self.monsterat
pushi.e 5
mul.i.v
pop.v.v self.damage
pushi.e 3
pop.v.i self.grazepoints

:[end]