.localvar 2 arguments

:[0]
push.v self.con
pushi.e 0
cmp.i.v EQ
bf [3]

:[1]
push.v self.timer
push.e 1
add.i.v
pop.v.v self.timer
push.v self.timer
pushi.e 14
conv.i.d
div.d.v
push.v self.ystart
pushi.e 140
add.i.v
push.v self.ystart
call.i lerp(argc=3)
pop.v.v self.y
push.v self.timer
pushi.e 14
cmp.i.v EQ
bf [3]

:[2]
pushi.e 1
pop.v.i self.con
pushi.e 0
pop.v.i self.timer

:[3]
push.v self.con
pushi.e 2
cmp.i.v EQ
bf [end]

:[4]
push.v self.timer
push.e 1
add.i.v
pop.v.v self.timer
push.v self.timer
pushi.e 7
conv.i.d
div.d.v
push.v self.ystart
push.v self.ystart
pushi.e 140
add.i.v
call.i lerp(argc=3)
pop.v.v self.y
push.v self.timer
pushi.e 7
cmp.i.v EQ
bf [end]

:[5]
call.i instance_destroy(argc=0)
popz.v

:[end]