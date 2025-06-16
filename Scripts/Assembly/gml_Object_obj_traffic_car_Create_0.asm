.localvar 2 arguments

:[0]
pushi.e 18
pop.v.i self.myspeed
push.v self.myspeed
pop.v.v self.remspeed
pushi.e 1
pop.v.i self.active
pushi.e 0
pop.v.i self.walking
pushi.e 0
pop.v.i self.walklerp
pushi.e 0
pop.v.i self.animsiner
pushi.e 0
pop.v.i self.downframetimer
pushi.e 0
pop.v.i self.downframe
pushi.e 0
pop.v.i self.walky
pushi.e 0
pop.v.i self.walkx
pushi.e 0
pop.v.i self.groupcheck
pushi.e 0
pop.v.i self.touchcon
pushi.e 0
pop.v.i self.buffer
pushi.e 0
pop.v.i self.endme
pushi.e 0
pop.v.i self.touchtimer
pushi.e 0
pop.v.i self.myblock
pushi.e 0
pop.v.i self.alwayswalking
pushi.e 2
pop.v.i self.image_xscale
pushi.e 2
pop.v.i self.image_yscale
pushi.e 0
pop.v.i self.madeblock
push.s "down"@25524
pop.v.s self.walkdir
pushi.e 0
pop.v.i self.spintimer
pushi.e 0
pop.v.i self.speedadjust
pushi.e 0
pop.v.i self.freshness
pushi.e 1115
pushenv [2]

:[1]
push.v self.freshness
push.e 1
add.i.v
pop.v.v self.freshness

:[2]
popenv [1]
pushi.e 0
pop.v.i self.turned

:[end]