.localvar 2 arguments

:[0]
push.v self.con
pushi.e -2
cmp.i.v EQ
bf [3]

:[1]
push.v self.timer
push.e 1
add.i.v
pop.v.v self.timer
push.v self.timer
push.v self.waittime
cmp.v.v GTE
bf [3]

:[2]
pushi.e 0
pop.v.i self.con
push.v self.x
pushi.e 50
add.i.v
pop.v.v self.x
pushi.e 10
pop.v.i self.vspeed
pushi.e -1
pop.v.i self.friction

:[3]
push.v self.con
pushi.e 0
cmp.i.v EQ
bf [5]

:[4]
push.v self.y
push.v self.ystart
push.v self.vspeed
sub.v.v
cmp.v.v GTE
b [6]

:[5]
push.e 0

:[6]
bf [13]

:[7]
pushi.e 0
pop.v.i self.i

:[8]
push.v self.i
pushi.e 4
cmp.i.v LT
bf [12]

:[9]
pushi.e 497
conv.i.v
push.v self.y
push.v self.x
pushi.e 40
sub.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.lit
pushi.e 1877
push.v self.lit
pushi.e -9
pop.v.i [stacktop]self.sprite_index
push.d 0.25
push.v self.lit
pushi.e -9
pop.v.d [stacktop]self.image_speed
push.d 0.2
push.v self.lit
pushi.e -9
pop.v.d [stacktop]self.friction
pushi.e -4
push.v self.i
pushi.e 4
mul.i.v
add.v.i
push.v self.lit
pushi.e -9
pop.v.v [stacktop]self.hspeed
pushi.e 1
push.v self.lit
pushi.e -9
pop.v.i [stacktop]self.type
push.v self.litwaittime
push.v self.lit
pushi.e -9
pop.v.v [stacktop]self.waitamount
push.v self.i
pushi.e 3
cmp.i.v EQ
bf [11]

:[10]
pushi.e 0
push.v self.lit
pushi.e -9
pop.v.i [stacktop]self.visible
pushi.e 1
push.v self.lit
pushi.e -9
pop.v.i [stacktop]self.moveberd

:[11]
push.v self.i
push.e 1
add.i.v
pop.v.v self.i
b [8]

:[12]
pushi.e 0
pop.v.i self.vspeed
pushi.e 0
pop.v.i self.image_angle
pushi.e 0
pop.v.i self.image_speed
pushi.e 0
pop.v.i self.image_index
push.d 0.5
pop.v.d self.image_speed
push.v self.y
pushi.e 20
sub.i.v
pop.v.v self.y
pushi.e 1878
pop.v.i self.sprite_index
pushi.e 1
pop.v.i self.con

:[13]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [end]

:[14]
push.v self.image_index
pushi.e 3
cmp.i.v GTE
bf [end]

:[15]
call.i instance_destroy(argc=0)
popz.v

:[end]