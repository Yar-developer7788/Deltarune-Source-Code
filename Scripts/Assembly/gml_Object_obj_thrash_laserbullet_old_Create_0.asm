.localvar 2 arguments

:[0]
push.i 166317
setowner.e
push.v self.x
pushi.e -1
pushi.e 0
push.v [arraypopaf]self.points
pushi.e 0
popaf.e
push.v self.y
pushi.e -1
pushi.e 0
push.v [arraypopaf]self.points
pushi.e 1
popaf.e
pushi.e 0
pop.v.i self.init
pushi.e 0
pop.v.i self.attackdirection
pushi.e 10
pop.v.i self.laserwidth
pushi.e 3
pop.v.i self.finalpoint
pushi.e 1
pop.v.i self.nextpoint

:[end]