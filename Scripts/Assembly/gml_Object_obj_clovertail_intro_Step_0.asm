.localvar 2 arguments

:[0]
push.v self.con
pushi.e 0
cmp.i.v EQ
bf [3]

:[1]
push.v self.image_xscale
push.d 0.5
add.d.v
pop.v.v self.image_xscale
push.v self.timer
push.e 1
add.i.v
pop.v.v self.timer
push.v self.timer
pushi.e 10
cmp.i.v EQ
bf [3]

:[2]
pushi.e 410
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_camerax(argc=0)
pushi.e 320
add.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.tail
push.v self.damage
push.v self.tail
pushi.e -9
pop.v.v [stacktop]self.damage
push.v self.target
push.v self.tail
pushi.e -9
pop.v.v [stacktop]self.target
pushi.e 1
pop.v.i self.con
pushi.e 0
pop.v.i self.timer

:[3]
pushglb.v global.turntimer
pushi.e 5
cmp.i.v LTE
bf [6]

:[4]
pushi.e 410
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [6]

:[5]
push.v 410.con
pushi.e 1
cmp.i.v EQ
b [7]

:[6]
push.e 0

:[7]
bf [9]

:[8]
pushi.e 2
pop.v.i 410.con

:[9]
pushglb.v global.turntimer
pushi.e 0
cmp.i.v LTE
bf [11]

:[10]
push.v self.con
pushi.e 1
cmp.i.v EQ
b [12]

:[11]
push.e 0

:[12]
bf [14]

:[13]
pushi.e 2
pop.v.i self.con

:[14]
push.v self.con
pushi.e 2
cmp.i.v EQ
bf [end]

:[15]
push.v self.image_xscale
push.d 0.5
sub.d.v
pop.v.v self.image_xscale
push.v self.timer
push.e 1
add.i.v
pop.v.v self.timer
push.v self.timer
pushi.e 10
cmp.i.v EQ
bf [end]

:[16]
call.i instance_destroy(argc=0)
popz.v
pushi.e 0
pop.v.i 406.notail

:[end]