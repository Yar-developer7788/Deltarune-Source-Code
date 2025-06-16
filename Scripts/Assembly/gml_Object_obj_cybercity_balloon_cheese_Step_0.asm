.localvar 2 arguments

:[0]
push.v self.siner
pushi.e 1
add.i.v
pop.v.v self.siner
push.v self.mode
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
push.v self.ystart
push.v self.siner
pushi.e 16
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 5
mul.i.v
add.v.v
pop.v.v self.y

:[2]
pushi.e 287
conv.i.v
push.v self.y
push.v self.x
call.i place_meeting(argc=3)
conv.v.b
bf [4]

:[3]
pushi.e 1
pop.v.i self.broken

:[4]
push.v self.broken
conv.v.b
bf [end]

:[5]
pushi.e 1
pop.v.i self.image_index
pushi.e 166
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
pushi.e 208
conv.i.v
push.v self.y
pushi.e 14
add.i.v
push.v self.x
pushi.e 14
add.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.afterimage
push.v self.sprite_index
push.v self.afterimage
pushi.e -9
pop.v.v [stacktop]self.sprite_index
push.v self.image_index
push.v self.afterimage
pushi.e -9
pop.v.v [stacktop]self.image_index
push.v self.image_blend
push.v self.afterimage
pushi.e -9
pop.v.v [stacktop]self.image_blend
pushi.e 0
push.v self.afterimage
pushi.e -9
pop.v.i [stacktop]self.image_speed
push.v self.depth
push.v self.afterimage
pushi.e -9
pop.v.v [stacktop]self.depth
push.v self.afterimage
call.i gml_Script_scr_darksize(argc=1)
popz.v
push.v self.image_angle
push.v self.afterimage
pushi.e -9
pop.v.v [stacktop]self.image_angle
push.v self.afterimage
pushi.e -9
pushenv [7]

:[6]
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v

:[7]
popenv [6]
pushi.e 1114
conv.i.v
push.v self.y
pushi.e 96
add.i.v
push.v self.x
pushi.e 8
add.i.v
call.i gml_Script_instance_create(argc=3)
popz.v
push.i 231204
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 447
pop.v.v [array]self.flag
call.i instance_destroy(argc=0)
popz.v

:[end]