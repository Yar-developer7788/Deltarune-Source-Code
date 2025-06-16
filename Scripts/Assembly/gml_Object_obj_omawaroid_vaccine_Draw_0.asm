.localvar 2 arguments

:[0]
push.v self.image_index
pushi.e 2
cmp.i.v EQ
bf [2]

:[1]
push.v self.image_speed
pushi.e 0
cmp.i.v GT
b [3]

:[2]
push.e 0

:[3]
bf [5]

:[4]
pushi.e 0
pop.v.i self.image_speed

:[5]
push.v self.hspeed
pushi.e 0
cmp.i.v GT
bf [7]

:[6]
push.v self.x
push.v 872.x
push.v 872.sprite_width
pushi.e 2
conv.i.d
div.d.v
add.v.v
pushi.e 10
add.i.v
cmp.v.v GT
b [8]

:[7]
push.e 0

:[8]
bt [13]

:[9]
push.v self.hspeed
pushi.e 0
cmp.i.v LT
bf [11]

:[10]
push.v self.x
push.v 872.x
push.v 872.sprite_width
pushi.e 2
conv.i.d
div.d.v
sub.v.v
pushi.e 10
sub.i.v
cmp.v.v LT
b [12]

:[11]
push.e 0

:[12]
b [14]

:[13]
push.e 1

:[14]
bf [16]

:[15]
push.v self.image_alpha
push.d 0.1
sub.d.v
pop.v.v self.image_alpha
pushi.e 0
pop.v.b self.active
b [18]

:[16]
push.v self.image_alpha
pushi.e 1
cmp.i.v LT
bf [18]

:[17]
push.v self.image_alpha
push.d 0.1
add.d.v
pop.v.v self.image_alpha

:[18]
call.i draw_self(argc=0)
popz.v

:[end]