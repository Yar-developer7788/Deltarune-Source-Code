.localvar 2 arguments
.localvar 24772 __cardHitbox 11767

:[0]
push.v self.y
pushi.e 0
conv.i.v
push.l 1
conv.l.v
call.i gml_Script___view_get(argc=2)
pushi.e 580
add.i.v
cmp.v.v GT
bf [2]

:[1]
push.v self.cardstart
pushi.e 0
cmp.i.v EQ
b [3]

:[2]
push.e 0

:[3]
bf [5]

:[4]
pushi.e 1
pop.v.i self.cardstart
pushi.e 0
pop.v.i self.gravity
pushi.e 0
pop.v.i self.hspeed

:[5]
push.v self.bounced
pushi.e 0
cmp.i.v EQ
bf [7]

:[6]
push.v self.y
push.v self.vspeed
add.v.v
push.v 872.y
pushi.e 60
add.i.v
cmp.v.v GT
b [8]

:[7]
push.e 0

:[8]
bf [10]

:[9]
pushi.e 1
pop.v.i self.bounced
push.v self.vspeed
push.d -0.6
mul.d.v
pop.v.v self.vspeed
push.v 872.y
pushi.e 30
add.i.v
push.v self.vspeed
sub.v.v
pop.v.v self.y

:[10]
pushi.e 470
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v local.__cardHitbox
push.v self.damage
pushloc.v local.__cardHitbox
pushi.e -9
pop.v.v [stacktop]self.damage
push.v self.target
pushloc.v local.__cardHitbox
pushi.e -9
pop.v.v [stacktop]self.target
push.v self.sprite_index
pushloc.v local.__cardHitbox
pushi.e -9
pop.v.v [stacktop]self.sprite_index
pushi.e 0
pushloc.v local.__cardHitbox
pushi.e -9
pop.v.i [stacktop]self.image_speed
push.v self.image_index
pushloc.v local.__cardHitbox
pushi.e -9
pop.v.v [stacktop]self.image_index
pushi.e 0
pushloc.v local.__cardHitbox
pushi.e -9
pop.v.b [stacktop]self.visible
push.v self.arraycap
pushi.e 1
sub.i.v
pushloc.v local.__cardHitbox
pushi.e -9
pop.v.v [stacktop]self.lifetime

:[end]