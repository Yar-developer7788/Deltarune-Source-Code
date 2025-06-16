.localvar 2 arguments

:[0]
push.v self.init
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
exit.i

:[2]
push.v self.breaking
conv.v.b
not.b
bf [4]

:[3]
push.v self.image_angle
push.v self.angle_speed
add.v.v
pop.v.v self.image_angle

:[4]
push.v self.flash
conv.v.b
bf [6]

:[5]
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
push.i 16777215
conv.i.v
pushi.e 1
conv.b.v
call.i gml_Script_d3d_set_fog(argc=4)
popz.v

:[6]
call.i draw_self(argc=0)
popz.v
push.v self.flash
conv.v.b
bf [end]

:[7]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.b.v
call.i gml_Script_d3d_set_fog(argc=4)
popz.v
pushi.e 0
pop.v.i self.flash

:[end]