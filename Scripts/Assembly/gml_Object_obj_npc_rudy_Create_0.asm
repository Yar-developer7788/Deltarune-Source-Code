.localvar 2 arguments

:[0]
call.i event_inherited(argc=0)
popz.v
pushi.e -1
pop.v.i self.coughcon
pushi.e -1
pop.v.i self.laughcon
pushi.e 0
pop.v.i self.talked
pushi.e -5
pushi.e 316
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
bf [end]

:[1]
pushi.e 1036
pop.v.i self.sprite_index
pushi.e 0
pop.v.i self.image_speed
push.v self.x
pushi.e 5
add.i.v
pop.v.v self.x

:[end]