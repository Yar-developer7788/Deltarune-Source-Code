.localvar 2 arguments

:[0]
push.v self.state
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
push.v self.ydrop
pushi.e 1
cmp.i.v GTE
b [3]

:[2]
push.e 0

:[3]
bf [5]

:[4]
pushi.e 1
pop.v.i self.state

:[5]
push.v self.state
pushi.e 1
cmp.i.v EQ
bf [end]

:[6]
push.v self.btimer
push.e 1
add.i.v
pop.v.v self.btimer
push.v self.btimer
pushi.e 5
cmp.i.v GT
bf [end]

:[7]
pushi.e 0
pop.v.i self.i

:[8]
push.v self.i
pushi.e 3
cmp.i.v LT
bf [10]

:[9]
pushi.e 596
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.d
pushi.e 1
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.destroyable
push.i 15245824
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.image_blend
pushi.e 20
conv.i.v
pushi.e -20
conv.i.v
call.i random_range(argc=2)
pushi.e 180
add.i.v
push.v self.image_angle
add.v.v
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.direction
pushi.e 5
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.speed
push.v self.i
push.e 1
add.i.v
pop.v.v self.i
b [8]

:[10]
pushi.e 0
pop.v.i self.btimer

:[end]