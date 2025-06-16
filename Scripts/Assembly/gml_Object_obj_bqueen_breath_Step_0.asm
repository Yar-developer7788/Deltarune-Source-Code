.localvar 2 arguments

:[0]
push.v self.rotator_target
call.i gml_Script_i_ex(argc=1)
conv.v.b
not.b
bf [2]

:[1]
call.i instance_destroy(argc=0)
popz.v
exit.i

:[2]
pushi.e 801
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [4]

:[3]
call.i instance_destroy(argc=0)
popz.v
exit.i

:[4]
push.v self.siner
push.e 1
add.i.v
pop.v.v self.siner
pushi.e 801
pop.v.i self.rotator_target
push.v self.length
push.v self.myspeed
add.v.v
pop.v.v self.length
push.v self.image_xscale
push.d 0.02
add.d.v
pop.v.v self.image_xscale
push.v self.image_yscale
push.d 0.02
add.d.v
pop.v.v self.image_yscale
push.v self.afterimagetimer
push.e 1
add.i.v
pop.v.v self.afterimagetimer
push.v self.afterimagetimer
pushi.e 1
cmp.i.v GTE
bf [6]

:[5]
call.i gml_Script_scr_afterimage(argc=0)
pop.v.v self.a
push.v self.image_alpha
pushi.e 3
conv.i.d
div.d.v
push.v self.a
pushi.e -9
pop.v.v [stacktop]self.image_alpha
push.d 0.1
push.v self.a
pushi.e -9
pop.v.d [stacktop]self.fadeSpeed
pushi.e 0
pop.v.i self.afterimagetimer

:[6]
push.v self.y
call.i gml_Script_cameray(argc=0)
pushi.e 300
add.i.v
cmp.v.v GTE
bf [9]

:[7]
push.v self.image_alpha
push.d 0.1
sub.d.v
pop.v.v self.image_alpha
push.v self.image_alpha
pushi.e 0
cmp.i.v LTE
bf [9]

:[8]
call.i instance_destroy(argc=0)
popz.v
exit.i

:[9]
pushi.e 801
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [11]

:[10]
call.i instance_destroy(argc=0)
popz.v
exit.i

:[11]
push.v self.type
pushi.e 1
cmp.i.v EQ
bf [13]

:[12]
push.v self.rotator_target
pushi.e -9
push.v [stacktop]self.x
push.v 801.place1
push.v self.length
call.i lengthdir_x(argc=2)
add.v.v
pop.v.v self.x
push.v self.rotator_target
pushi.e -9
push.v [stacktop]self.y
push.v 801.place1
push.v self.length
call.i lengthdir_y(argc=2)
add.v.v
pop.v.v self.y
push.v 801.place1
pop.v.v self.image_angle

:[13]
push.v self.type
pushi.e 2
cmp.i.v EQ
bf [end]

:[14]
push.v self.rotator_target
pushi.e -9
push.v [stacktop]self.x
push.v 801.place2
push.v self.length
call.i lengthdir_x(argc=2)
add.v.v
pop.v.v self.x
push.v self.rotator_target
pushi.e -9
push.v [stacktop]self.y
push.v 801.place2
push.v self.length
call.i lengthdir_y(argc=2)
add.v.v
pop.v.v self.y
push.v 801.place2
pop.v.v self.image_angle

:[end]