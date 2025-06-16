.localvar 2 arguments

:[0]
push.v self.con
pushi.e 0
cmp.i.v EQ
bf [end]

:[1]
pushbltn.v builtin.room
pushi.e 317
cmp.i.v EQ
bf [5]

:[2]
push.v self.x
pushi.e 0
conv.i.v
push.l 0
conv.l.v
call.i gml_Script___view_get(argc=2)
pushi.e 630
add.i.v
cmp.v.v LT
bf [5]

:[3]
pushi.e -8
pop.v.i self.vspeed
push.d 0.2
pop.v.d self.image_speed
pushi.e 1
pop.v.i self.con
pushglb.v global.plot
pushi.e 12
cmp.i.v LT
bf [5]

:[4]
pushi.e 12
pop.v.i global.plot

:[5]
pushbltn.v builtin.room
pushi.e 318
cmp.i.v EQ
bf [end]

:[6]
push.v self.x
pushi.e 0
conv.i.v
push.l 0
conv.l.v
call.i gml_Script___view_get(argc=2)
pushi.e 610
add.i.v
cmp.v.v LT
bf [end]

:[7]
pushi.e 8
pop.v.i self.hspeed
push.d 0.2
pop.v.d self.image_speed
pushi.e 1
pop.v.i self.con
pushglb.v global.plot
pushi.e 13
cmp.i.v LT
bf [end]

:[8]
pushi.e 13
pop.v.i global.plot

:[end]