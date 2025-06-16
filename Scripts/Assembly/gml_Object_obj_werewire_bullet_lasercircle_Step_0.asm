.localvar 2 arguments

:[0]
push.v self.parent
pushi.e -1
cmp.i.v NEQ
bf [2]

:[1]
push.v self.parent
call.i gml_Script_i_ex(argc=1)
conv.v.b
b [3]

:[2]
push.e 0

:[3]
bf [5]

:[4]
push.v self.parent
pushi.e -9
push.v [stacktop]self.x
pushi.e 32
sub.i.v
pop.v.v self.x
push.v self.parent
pushi.e -9
push.v [stacktop]self.y
pop.v.v self.y

:[5]
push.v self.siner
push.d 0.5
add.d.v
pop.v.v self.siner
push.v self.timer
pushi.e 1
add.i.v
pop.v.v self.timer
push.v self.timer
pushi.e 6
conv.i.d
push.v self.m
div.v.d
cmp.v.v LTE
bf [7]

:[6]
push.v self.image_xscale
push.d 0.4
push.v self.m
mul.v.d
add.v.v
pop.v.v self.image_xscale
push.v self.image_yscale
push.d 0.4
push.v self.m
mul.v.d
add.v.v
pop.v.v self.image_yscale

:[7]
push.v self.timer
pushi.e 6
conv.i.d
push.v self.m
div.v.d
cmp.v.v GT
bf [9]

:[8]
push.v self.timer
push.v self.my_length
pushi.e 3
add.i.v
cmp.v.v LTE
b [10]

:[9]
push.e 0

:[10]
bf [24]

:[11]
pushi.e 474
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.laser
push.v self.laser
call.i gml_Script_scr_bullet_inherit(argc=1)
popz.v
push.v self.image_xscale
push.v self.siner
push.d 1.3
mul.d.v
push.v self.m
mul.v.v
call.i sin(argc=1)
push.d 0.2
mul.d.v
sub.v.v
pop.v.v self.image_xscale
push.v self.image_yscale
push.v self.siner
push.d 1.3
mul.d.v
push.v self.m
mul.v.v
call.i sin(argc=1)
push.d 0.2
mul.d.v
sub.v.v
pop.v.v self.image_yscale
push.v self.my_angle
push.v self.laser
pushi.e -9
pop.v.v [stacktop]self.image_angle
push.v self.my_speed
push.v self.laser
pushi.e -9
pop.v.v [stacktop]self.speed
push.v self.my_angle
push.v self.laser
pushi.e -9
pop.v.v [stacktop]self.direction
push.v self.my_accel
neg.v
push.v self.laser
pushi.e -9
pop.v.v [stacktop]self.friction
pushi.e 1
push.v self.laser
pushi.e -9
pop.v.i [stacktop]self.image_yscale
push.v self.my_angle_change
push.v self.laser
pushi.e -9
pop.v.v [stacktop]self.my_angle_change
pushi.e 697
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [13]

:[12]
pushi.e 3289
push.v self.laser
pushi.e -9
pop.v.i [stacktop]self.sprite_index
b [14]

:[13]
pushi.e 1742
push.v self.laser
pushi.e -9
pop.v.i [stacktop]self.sprite_index

:[14]
push.v self.timer
pushi.e 3
cmp.i.v EQ
bf [18]

:[15]
pushi.e 697
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [17]

:[16]
pushi.e 2246
push.v self.laser
pushi.e -9
pop.v.i [stacktop]self.sprite_index
b [18]

:[17]
pushi.e 1744
push.v self.laser
pushi.e -9
pop.v.i [stacktop]self.sprite_index

:[18]
push.v self.timer
push.v self.my_length
pushi.e 3
add.i.v
cmp.v.v EQ
bf [23]

:[19]
pushi.e 697
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [21]

:[20]
pushi.e 2246
push.v self.laser
pushi.e -9
pop.v.i [stacktop]self.sprite_index
b [22]

:[21]
pushi.e 1744
push.v self.laser
pushi.e -9
pop.v.i [stacktop]self.sprite_index

:[22]
pushi.e 1
push.v self.laser
pushi.e -9
pop.v.i [stacktop]self.image_index

:[23]
b [end]

:[24]
push.v self.image_xscale
push.d 0.1
push.v self.m
mul.v.d
sub.v.v
pop.v.v self.image_xscale
push.v self.image_yscale
push.d 0.1
push.v self.m
mul.v.d
sub.v.v
pop.v.v self.image_yscale
push.v self.image_xscale
pushi.e 0
cmp.i.v LTE
bf [26]

:[25]
push.v self.image_yscale
pushi.e 0
cmp.i.v LTE
b [27]

:[26]
push.e 0

:[27]
bf [end]

:[28]
call.i instance_destroy(argc=0)
popz.v

:[end]