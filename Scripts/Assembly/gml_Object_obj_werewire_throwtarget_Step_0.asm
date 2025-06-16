.localvar 2 arguments

:[0]
push.v self.timer
push.e 1
add.i.v
pop.v.v self.timer
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
push.v self.t
push.v self.increment
add.v.v
pushi.e 360
mod.i.v
pop.v.v self.t
push.v self.amplitude
push.v self.t
call.i dsin(argc=1)
mul.v.v
pop.v.v self.shift
push.v self.yy
push.v self.shift
add.v.v
pop.v.v self.y
pushi.e 1731
pop.v.i self.sprite_index
push.v self.xstart
push.v self.y
call.i gml_Script_cameray(argc=0)
sub.v.v
push.d 0.1
add.d.v
push.d 3.375
div.d.v
sub.v.v
pushi.e 18
add.i.v
push.v self.sprite_width
pushi.e 2
conv.i.d
div.d.v
add.v.v
pop.v.v self.x

:[2]
push.v self.con
pushi.e 5
cmp.i.v EQ
bf [end]

:[3]
pushi.e 1249
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.slash
push.v self.image_angle
pushi.e 45
add.i.v
push.v self.slash
pushi.e -9
pop.v.v [stacktop]self.image_angle
call.i gml_Script_scr_afterimage_cut(argc=0)
popz.v
call.i instance_destroy(argc=0)
popz.v

:[end]