.localvar 2 arguments

:[0]
call.i event_inherited(argc=0)
popz.v
pushi.e 6
pop.v.i self.element
pushi.e 0
pop.v.i self.flashtimer
pushi.e 0
pop.v.i self.grazed
pushi.e 2
pop.v.i self.grazepoints
pushi.e 1
pop.v.i self.timepoints
pushi.e -1
pop.v.i self.target
pushi.e 0
pop.v.i self.grazetimer
pushi.e 6
pop.v.i self.element
pushi.e 1
pop.v.i self.dont
pushi.e 120
pop.v.i self.inv
pushi.e 406
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [end]

:[1]
pushi.e -5
push.v 406.myself
conv.v.i
push.v [array]self.monsterat
pushi.e 5
mul.i.v
pop.v.v self.damage

:[end]