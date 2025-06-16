.localvar 2 arguments

:[0]
call.i gml_Script_scr_depth_alt(argc=0)
popz.v
push.v self.y
pushi.e 8
sub.i.v
push.v self.active
pushi.e 8
mul.i.v
add.v.v
push.v self.x
pushi.e 8
sub.i.v
push.v self.image_index
pushi.e 2074
conv.i.v
call.i draw_sprite(argc=4)
popz.v
call.i draw_self(argc=0)
popz.v
push.v self.y
pushi.e 8
sub.i.v
push.v self.active
pushi.e 8
mul.i.v
add.v.v
push.v self.x
pushi.e 8
add.i.v
push.v self.image_index
pushi.e 2074
conv.i.v
call.i draw_sprite(argc=4)
popz.v
pushi.e 0
pop.v.i self.tiltAmount
push.v self.startX
push.v self.x
sub.v.v
pushi.e 325
cmp.i.v GT
bf [2]

:[1]
pushi.e 30
pop.v.i self.tiltAmount

:[2]
push.v self.startX
push.v self.x
sub.v.v
pushi.e -325
cmp.i.v LT
bf [4]

:[3]
pushi.e -30
pop.v.i self.tiltAmount

:[4]
push.v self.tiltAmount
pop.v.v self.image_angle

:[end]