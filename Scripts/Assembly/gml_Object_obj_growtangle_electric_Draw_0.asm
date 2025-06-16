.localvar 2 arguments

:[0]
pushi.e 872
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [6]

:[1]
pushi.e 0
pop.v.i self.plugangle
pushi.e 0
pop.v.i self.wy
pushi.e 75
pop.v.i self.wx
push.v self.con
pushi.e 1
cmp.i.v GTE
bf [3]

:[2]
push.v self.image_angle
pop.v.v self.plugangle
push.v self.image_angle
push.v 872.sprite_width
pushi.e 2
conv.i.d
div.d.v
call.i lengthdir_x(argc=2)
pop.v.v self.wx
push.v self.image_angle
push.v 872.sprite_width
pushi.e 2
conv.i.d
div.d.v
call.i lengthdir_y(argc=2)
pop.v.v self.wy

:[3]
push.v self.type
pushi.e 1
cmp.i.v NEQ
bf [5]

:[4]
push.v self.plugalpha
push.i 16777215
conv.i.v
push.v self.plugangle
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.y
push.v self.xx
add.v.v
push.v self.wy
sub.v.v
push.v self.x
push.v self.xx
add.v.v
push.v self.wx
sub.v.v
push.v self.plugx
sub.v.v
pushi.e 0
conv.i.v
pushi.e 1957
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[5]
push.v self.plugalpha
push.i 16777215
conv.i.v
push.v self.plugangle
pushi.e 180
add.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.y
push.v self.xx
add.v.v
push.v self.wy
add.v.v
push.v self.x
push.v self.xx
add.v.v
push.v self.wx
add.v.v
push.v self.plugx
add.v.v
pushi.e 0
conv.i.v
pushi.e 1957
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[6]
call.i draw_self(argc=0)
popz.v

:[end]