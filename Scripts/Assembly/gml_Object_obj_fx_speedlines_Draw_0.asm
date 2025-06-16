.localvar 2 arguments

:[0]
push.v self.offsetx
conv.v.b
bt [2]

:[1]
push.v self.offsety
conv.v.b
b [3]

:[2]
push.e 1

:[3]
bf [9]

:[4]
push.v self.offsetx
conv.v.b
bf [6]

:[5]
push.v self.x
call.i gml_Script_camerax(argc=0)
sub.v.v
pop.v.v self.xoff

:[6]
push.v self.offsety
conv.v.b
bf [8]

:[7]
push.v self.y
call.i gml_Script_cameray(argc=0)
sub.v.v
pop.v.v self.yoff

:[8]
pushi.e 0
pop.v.b self.offsetx
pushi.e 0
pop.v.b self.offsety

:[9]
push.v self.flashframe
conv.v.b
bf [11]

:[10]
pushi.e -1000
pop.v.i self.depth

:[11]
pushi.e 1
conv.i.v
push.v self.flashframe
conv.v.b
bf [13]

:[12]
push.i 8421504
conv.i.v
b [14]

:[13]
push.i 16777215
conv.i.v

:[14]
push.v self.image_angle
push.v self.flipA
pushi.e 2
mul.i.v
push.v self.flipB
pushi.e 2
mul.i.v
call.i gml_Script_cameray(argc=0)
call.i gml_Script_cameraheight(argc=0)
pushi.e 2
conv.i.d
div.d.v
add.v.v
call.i gml_Script_camerax(argc=0)
call.i gml_Script_camerawidth(argc=0)
pushi.e 2
conv.i.d
div.d.v
add.v.v
pushi.e 0
conv.i.v
push.v self.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v
pushi.e 1
conv.i.v
push.i 15379086
conv.i.v
push.v self.image_angle
neg.v
push.v self.flipB
pushi.e 2
mul.i.v
push.v self.flipA
pushi.e 2
mul.i.v
call.i gml_Script_cameray(argc=0)
call.i gml_Script_cameraheight(argc=0)
pushi.e 2
conv.i.d
div.d.v
add.v.v
call.i gml_Script_camerax(argc=0)
call.i gml_Script_camerawidth(argc=0)
pushi.e 2
conv.i.d
div.d.v
add.v.v
pushi.e 1
conv.i.v
push.v self.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.flipA
push.v self.flipB
cmp.v.v EQ
bf [16]

:[15]
push.v self.flipA
pushi.e -1
mul.i.v
pop.v.v self.flipA
b [17]

:[16]
push.v self.flipB
pushi.e -1
mul.i.v
pop.v.v self.flipB
push.v self.image_angle
pushi.e 90
add.i.v
pop.v.v self.image_angle

:[17]
push.v self.flashframe
conv.v.b
bf [end]

:[18]
call.i instance_destroy(argc=0)
popz.v

:[end]