.localvar 2 arguments

:[0]
push.v self.target
call.i gml_Script_i_ex(argc=1)
conv.v.b
not.b
bf [2]

:[1]
call.i instance_destroy(argc=0)
popz.v
exit.i

:[2]
push.v self.laserflash
pushi.e 0
cmp.i.v EQ
bf [4]

:[3]
pushi.e 1
pop.v.i self.laserflash
pushi.e 255
conv.i.v
pushi.e 255
conv.i.v
pushi.e 2
conv.i.v
push.v self.target
pushi.e -9
push.v [stacktop]self.y
push.v self.target
pushi.e -9
push.v [stacktop]self.x
push.v self.target
pushi.e -9
push.v [stacktop]self.image_angle
pushi.e 268
add.i.v
pushi.e 1000
conv.i.v
call.i lengthdir_x(argc=2)
add.v.v
push.v self.target
pushi.e -9
push.v [stacktop]self.y
push.v self.target
pushi.e -9
push.v [stacktop]self.image_angle
pushi.e 268
add.i.v
pushi.e 68
conv.i.v
call.i lengthdir_y(argc=2)
add.v.v
push.v self.target
pushi.e -9
push.v [stacktop]self.x
push.v self.target
pushi.e -9
push.v [stacktop]self.image_angle
pushi.e 268
add.i.v
pushi.e 68
conv.i.v
call.i lengthdir_x(argc=2)
add.v.v
call.i draw_line_width_color(argc=7)
popz.v
b [end]

:[4]
push.v self.laserflash
pushi.e 1
cmp.i.v EQ
bf [end]

:[5]
pushi.e 0
pop.v.i self.laserflash

:[end]