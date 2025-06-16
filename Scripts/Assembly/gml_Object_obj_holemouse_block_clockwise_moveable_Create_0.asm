.localvar 2 arguments

:[0]
pushi.e 1
pop.v.b self.pushable
pushi.e 0
pop.v.i self.image_speed
push.v self.x
pop.v.v self.xpos
push.v self.y
pop.v.v self.ypos
pushi.e 0
pop.v.i self.reset
pushi.e 0
pop.v.i self.con
push.s "left"@5994
pop.v.s self.orientation
pushi.e 0
pop.v.i self.movecourse
pushi.e 0
pop.v.i self.movetimer
pushi.e 0
pop.v.i self.myinteract
pushi.e 2
pop.v.i self.image_xscale
pushi.e 2
pop.v.i self.image_yscale
pushi.e 0
pop.v.i self.flash
pushi.e 0
pop.v.i self.flashtimer
pushi.e 0
pop.v.i self.flashalpha
pushbltn.v builtin.room
pushi.e 134
cmp.i.v EQ
bf [end]

:[1]
pushi.e 0
pop.v.b self.pushable

:[end]