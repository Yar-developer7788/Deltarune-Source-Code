.localvar 2 arguments

:[0]
push.v self.extflag
push.s "goal"@14177
cmp.s.v EQ
bf [7]

:[1]
pushi.e 82
conv.i.v
push.v self.y
push.v self.x
call.i place_meeting(argc=3)
conv.v.b
bf [4]

:[2]
pushi.e 1260
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [4]

:[3]
push.v self.con
pushi.e 0
cmp.i.v EQ
b [5]

:[4]
push.e 0

:[5]
bf [7]

:[6]
pushi.e 1
pop.v.i self.con
push.i 231204
setowner.e
pushi.e 2
conv.i.v
pushi.e -5
pushi.e 385
pop.v.v [array]self.flag

:[7]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [9]

:[8]
push.v 1261.con
pushi.e 0
cmp.i.v EQ
b [10]

:[9]
push.e 0

:[10]
bf [end]

:[11]
pushi.e 1
pop.v.i 1261.con
push.v self.con
push.e 1
add.i.v
pop.v.v self.con

:[end]