.localvar 2 arguments

:[0]
pushi.e 0
pop.v.i self.con
pushi.e 0
pop.v.i self.timer
pushi.e 0
pop.v.i self.shottimer
pushi.e 0
pop.v.i self.siner
push.d 0.1
conv.d.v
call.i random(argc=1)
push.d 0.95
add.d.v
pop.v.v self.sineradd
pushi.e 0
pop.v.i self.vsiner
pushi.e 0
pop.v.i self.destroytimer
pushi.e 0
pop.v.i self.grazed
pushi.e 1
pop.v.i self.grazepoints
pushi.e 1
pop.v.i self.timepoints
pushi.e -1
pop.v.i self.target
pushi.e 0
pop.v.i self.grazetimer
push.s "none"@562
pop.v.s self.element
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