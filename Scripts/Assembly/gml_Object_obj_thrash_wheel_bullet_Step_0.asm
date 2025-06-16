.localvar 2 arguments
.localvar 26921 _boxbottom 13976

:[0]
push.v self.bounce
pushi.e 1
cmp.i.v EQ
bf [8]

:[1]
push.v 872.y
push.v 872.sprite_height
pushi.e 2
conv.i.d
div.d.v
add.v.v
pushi.e 8
sub.i.v
pop.v.v local._boxbottom
push.v self.vspeed
pushi.e 0
cmp.i.v GT
bf [4]

:[2]
push.v self.y
push.v self.vspeed
add.v.v
pushi.e 10
add.i.v
pushloc.v local._boxbottom
cmp.v.v GTE
bf [4]

:[3]
push.v self.x
push.v 872.x
push.v 872.sprite_width
pushi.e 2
conv.i.d
div.d.v
add.v.v
pushi.e 8
sub.i.v
cmp.v.v LTE
b [5]

:[4]
push.e 0

:[5]
bf [7]

:[6]
pushloc.v local._boxbottom
pushi.e 10
sub.i.v
pop.v.v self.y
push.v self.hspeed
pop.v.v self.last_hspeed
push.v self.vspeed
pop.v.v self.last_vspeed
pushi.e 0
pop.v.i self.speed
push.v self.gravity
pop.v.v self.initialgravity
pushi.e 0
pop.v.i self.gravity
pushi.e -2
pop.v.i self.bounce
pushi.e 1
pop.v.i self.image_index

:[7]
b [end]

:[8]
push.v self.bounce
pushi.e 0
cmp.i.v LT
bf [end]

:[9]
push.v self.bounce
push.e 1
add.i.v
pop.v.v self.bounce
push.v self.bounce
pushi.e 0
cmp.i.v EQ
bf [end]

:[10]
push.v self.last_hspeed
pop.v.v self.hspeed
push.v self.last_vspeed
neg.v
pushi.e 2
conv.i.d
div.d.v
pop.v.v self.vspeed
push.v self.initialgravity
pop.v.v self.gravity
pushi.e 0
pop.v.i self.image_index

:[end]