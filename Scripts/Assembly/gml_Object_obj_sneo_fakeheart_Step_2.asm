.localvar 2 arguments
.localvar 9190 _minx 12869

:[0]
push.v self.state
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
push.v self.image_angle
push.v self.speed
pushi.e 2
mul.i.v
sub.v.v
pop.v.v self.image_angle
b [end]

:[2]
push.v self.state
pushi.e 1
cmp.i.v EQ
bf [4]

:[3]
pushi.e 0
pop.v.i self.image_alpha
pushi.e 0
pop.v.i self.image_angle
push.v 872.x
pushi.e 400
add.i.v
pop.v.v self.x
pushi.e 0
pop.v.i self.speed
pushi.e 0
pop.v.i self.direction
b [end]

:[4]
push.v self.state
pushi.e 2
cmp.i.v EQ
bf [14]

:[5]
push.v self.image_angle
pushi.e 60
add.i.v
pop.v.v self.image_angle
pushi.e 1
pop.v.i self.image_alpha
push.v self.x
pushi.e 20
sub.i.v
pop.v.v self.x
push.v 872.x
push.v 872.sprite_width
pushi.e 2
conv.i.d
div.d.v
sub.v.v
pushi.e 4
add.i.v
pop.v.v local._minx
push.v self.x
pushloc.v local._minx
pushi.e 20
add.i.v
cmp.v.v LTE
bf [13]

:[6]
pushloc.v local._minx
pop.v.v self.x
push.v self.x
pop.v.v 631.x
push.v self.y
pop.v.v 631.y
pushi.e 3
pop.v.i self.state
pushi.e -1
pop.v.i global.inv
pushi.e 697
pushenv [8]

:[7]
pushi.e 2
conv.i.v
call.i event_user(argc=1)
popz.v

:[8]
popenv [7]
pushi.e 873
pushenv [10]

:[9]
push.v 641.depth
pushi.e 2
sub.i.v
pop.v.v self.depth
push.v 371.x
pop.v.v self.x
push.v 371.y
pop.v.v self.y

:[10]
popenv [9]
pushi.e 1
pop.v.i 631.color
push.v self.image_angle
pushi.e 360
mod.i.v
pop.v.v self.image_angle
push.v self.image_angle
pushi.e 180
cmp.i.v LT
bf [12]

:[11]
push.v self.image_angle
pushi.e 360
add.i.v
pop.v.v self.image_angle

:[12]
push.v self.image_angle
pop.v.v self.startangle
pushi.e 8
pop.v.i self.heartspeed

:[13]
b [end]

:[14]
push.v self.state
pushi.e 3
cmp.i.v EQ
bf [end]

:[15]
push.v 631.x
push.v self.heartspeed
add.v.v
pop.v.v 631.x
push.v 631.x
pop.v.v self.x
push.v self.heartspeed
push.d 1.5
sub.d.v
pop.v.v self.heartspeed
pushi.e 0
conv.i.v
push.v self.startangle
push.v self.heartspeed
pushi.e 0
conv.i.v
pushi.e 8
conv.i.v
call.i gml_Script_scr_remapvalue(argc=5)
pop.v.v self.image_angle
push.v self.heartspeed
pushi.e 0
cmp.i.v LTE
bf [end]

:[16]
pushi.e 1
pop.v.i 631.color
pushi.e 1
pop.v.i 631.image_alpha
call.i instance_destroy(argc=0)
popz.v

:[end]