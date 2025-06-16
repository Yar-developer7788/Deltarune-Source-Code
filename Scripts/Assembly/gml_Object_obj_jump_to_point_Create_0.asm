.localvar 2 arguments

:[0]
pushi.e -10
pop.v.i self.target
pushi.e -32322
pop.v.i self.body_obj
pushi.e 0
pop.v.i self.init
push.v self.x
pop.v.v self.startx
push.v self.y
pop.v.v self.starty
push.v self.x
pop.v.v self.endx
push.v self.y
pop.v.v self.endy
pushi.e 30
pop.v.i self.jumptime
pushi.e 0
pop.v.i self.jumpspeed
pushi.e 0
pop.v.i self.fakegravity
pushi.e 0
pop.v.i self.jumpy
pushi.e 0
pop.v.i self.timer
pushi.e 0
pop.v.i self.nowy
pushi.e 0
pop.v.i self.drawshadow
pushglb.v global.darkzone
pushi.e 1
add.i.v
pop.v.v self.dark
pushi.e 0
pop.v.i self.usesprites
pushi.e 0
pop.v.i self.usespritestimer
pushi.e 0
pop.v.i self.con
pushi.e 0
pop.v.i self.jumpsprite
pushi.e 0
pop.v.i self.landsprite

:[end]