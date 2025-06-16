.localvar 2 arguments
.localvar 11944 scale 12738

:[0]
push.v self.color
pushi.e 1
cmp.i.v EQ
bf [15]

:[1]
push.v self.z_hold
pushi.e 35
sub.i.v
pop.v.v self.z_charge_nolimit
push.v self.z_charge_nolimit
pushi.e 0
cmp.i.v GTE
bf [3]

:[2]
push.v self.z_charge_nolimit
pushi.e 10
conv.i.d
div.d.v
call.i sin(argc=1)
call.i abs(argc=1)
pop.v.v local.scale
push.d 0.3
conv.d.v
push.v self.image_blend
push.v self.image_angle
pushi.e 1
pushloc.v local.scale
add.v.i
pushi.e 1
pushloc.v local.scale
add.v.i
push.v self.y
pushloc.v local.scale
pushi.e 10
mul.i.v
sub.v.v
push.v self.x
pushloc.v local.scale
pushi.e 10
mul.i.v
sub.v.v
pushi.e 0
conv.i.v
push.v self.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.z_charge_nolimit
pushi.e 14
conv.i.d
div.d.v
call.i sin(argc=1)
call.i abs(argc=1)
pop.v.v local.scale
push.d 0.3
conv.d.v
push.v self.image_blend
push.v self.image_angle
push.d 1.2
pushloc.v local.scale
add.v.d
push.d 1.2
pushloc.v local.scale
add.v.d
push.v self.y
pushi.e 2
sub.i.v
pushloc.v local.scale
pushi.e 10
mul.i.v
sub.v.v
push.v self.x
pushi.e 2
sub.i.v
pushloc.v local.scale
pushi.e 10
mul.i.v
sub.v.v
pushi.e 0
conv.i.v
push.v self.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v

:[3]
push.v self.z_hold
pushi.e 15
cmp.i.v GTE
bf [9]

:[4]
push.v self.z_hold
pushi.e 15
sub.i.v
pop.v.v self.z_charge
push.v self.z_charge
pushi.e 35
cmp.i.v GTE
bf [6]

:[5]
pushi.e 35
pop.v.i self.z_charge

:[6]
pushi.e 0
pop.v.i self.i

:[7]
push.v self.i
pushi.e 4
cmp.i.v LT
bf [9]

:[8]
push.v self.i
pushi.e 90
mul.i.v
push.v self.z_charge
pushi.e 5
mul.i.v
add.v.v
pop.v.v self.rotx
push.v self.rotx
call.i degtorad(argc=1)
call.i sin(argc=1)
pushi.e 35
push.v self.z_charge
sub.v.i
mul.v.v
pop.v.v self.xx
push.v self.rotx
call.i degtorad(argc=1)
call.i cos(argc=1)
pushi.e 35
push.v self.z_charge
sub.v.i
mul.v.v
pop.v.v self.yy
push.v self.z_charge
pushi.e 5
conv.i.d
div.d.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 4
push.v self.z_charge
pushi.e 2
mul.i.v
pushi.e 35
conv.i.d
div.d.v
sub.v.i
pushi.e 4
push.v self.z_charge
pushi.e 2
mul.i.v
pushi.e 35
conv.i.d
div.d.v
sub.v.i
push.v self.y
pushi.e 10
add.i.v
push.v self.yy
sub.v.v
push.v self.x
pushi.e 9
add.i.v
push.v self.xx
sub.v.v
pushi.e 0
conv.i.v
pushi.e 1968
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [7]

:[9]
pushglb.v global.chapter
pushi.e 2
cmp.i.v EQ
bf [12]

:[10]
pushi.e 697
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [12]

:[11]
push.v 697.bigshotcount
pushi.e 0
cmp.i.v GT
b [13]

:[12]
push.e 0

:[13]
bf [15]

:[14]
push.v self.superchargetimer
push.e 1
add.i.v
pop.v.v self.superchargetimer
push.v self.superchargetimer
pushi.e 10
conv.i.d
div.d.v
call.i sin(argc=1)
call.i abs(argc=1)
pop.v.v local.scale
push.d 0.5
conv.d.v
push.i 4235519
conv.i.v
push.v self.image_angle
pushi.e 1
pushloc.v local.scale
add.v.i
pushi.e 1
pushloc.v local.scale
add.v.i
push.v self.y
pushloc.v local.scale
pushi.e 10
mul.i.v
sub.v.v
push.v self.x
pushloc.v local.scale
pushi.e 10
mul.i.v
sub.v.v
pushi.e 0
conv.i.v
push.v self.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.z_charge_nolimit
pushi.e 14
conv.i.d
div.d.v
call.i sin(argc=1)
call.i abs(argc=1)
pop.v.v local.scale
push.d 0.5
conv.d.v
push.i 4235519
conv.i.v
push.v self.image_angle
push.d 1.2
pushloc.v local.scale
add.v.d
push.d 1.2
pushloc.v local.scale
add.v.d
push.v self.y
pushi.e 2
sub.i.v
pushloc.v local.scale
pushi.e 10
mul.i.v
sub.v.v
push.v self.x
pushi.e 2
sub.i.v
pushloc.v local.scale
pushi.e 10
mul.i.v
sub.v.v
pushi.e 0
conv.i.v
push.v self.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v

:[15]
call.i draw_self(argc=0)
popz.v

:[end]