.localvar 2 arguments
.localvar 21273 broken 9253

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
push.v self.offset
add.v.i
mul.v.v
add.v.v
pop.v.v self.y

:[2]
push.v self.mode
pushi.e 1
cmp.i.v EQ
bf [13]

:[3]
push.v self.y
call.i gml_Script_cameray(argc=0)
pushi.e 120
sub.i.v
cmp.v.v LTE
bf [5]

:[4]
call.i instance_destroy(argc=0)
popz.v

:[5]
call.i gml_Script_cameray(argc=0)
push.v self.remcameray
cmp.v.v GT
bf [7]

:[6]
push.v self.vspeed
push.d 0.05
add.d.v
pop.v.v self.vspeed

:[7]
call.i gml_Script_cameray(argc=0)
push.v self.remcameray
cmp.v.v LT
bf [9]

:[8]
push.v self.vspeed
push.e 1
sub.i.v
pop.v.v self.vspeed

:[9]
push.v self.vspeed
pushi.e -9
cmp.i.v LTE
bf [11]

:[10]
push.v self.vspeed
push.d 0.98
add.d.v
pop.v.v self.vspeed

:[11]
call.i gml_Script_cameray(argc=0)
pop.v.v self.remcameray
push.v self.blend
conv.v.b
bf [13]

:[12]
push.v self.y
call.i gml_Script_cameray(argc=0)
sub.v.v
pushi.e 500
conv.i.d
div.d.v
pushi.e 0
conv.i.v
call.i max(argc=2)
push.i 4210752
conv.i.v
push.i 8421504
conv.i.v
call.i merge_color(argc=3)
pop.v.v self.image_blend

:[13]
push.v self.mode
pushi.e 2
cmp.i.v EQ
bf [24]

:[14]
call.i gml_Script_d_ex(argc=0)
conv.v.b
bf [18]

:[15]
push.v self.paused
pushi.e 0
cmp.i.v EQ
bf [17]

:[16]
push.v self.hspeed
pop.v.v self.rem_hspeed
push.v self.friction
pop.v.v self.rem_friction
push.v self.gravity
pop.v.v self.rem_gravity
push.v self.x
pop.v.v self.remx
push.v self.y
pop.v.v self.remy
pushi.e 0
pop.v.i self.hspeed
pushi.e 0
pop.v.i self.friction
pushi.e 0
pop.v.i self.gravity
pushi.e 1
pop.v.i self.paused

:[17]
push.v self.remy
push.v self.remx
call.i gml_Script_setxy(argc=2)
popz.v
b [24]

:[18]
push.v self.paused
pushi.e 0
cmp.i.v NEQ
bf [20]

:[19]
push.v self.rem_hspeed
pop.v.v self.hspeed
push.v self.rem_friction
pop.v.v self.friction
push.v self.rem_gravity
pop.v.v self.gravity
pushi.e 0
pop.v.i self.paused

:[20]
pushi.e 3041
pop.v.i self.sprite_index
push.v self.speed
pushi.e 0
cmp.i.v EQ
bf [22]

:[21]
push.v self.y
push.v self.siner
pushi.e 16
conv.i.d
div.d.v
call.i sin(argc=1)
push.d 0.5
mul.d.v
add.v.v
pop.v.v self.y

:[22]
push.v self.y
pushi.e 60
cmp.i.v LTE
bf [24]

:[23]
pushi.e 0
pop.v.i self.gravity
pushi.e 60
pop.v.i self.y

:[24]
push.v self.flip_timer
push.d 0.1
add.d.v
pop.v.v self.flip_timer
push.v self.flip_timer
pushi.e 5
push.v self.offset
add.v.i
mod.v.v
pushi.e 1
cmp.i.v EQ
bf [26]

:[25]
push.v self.mode
pushi.e 2
cmp.i.v NEQ
b [27]

:[26]
push.e 0

:[27]
bf [29]

:[28]
push.s "h"@6667
conv.s.v
call.i gml_Script_scr_flip(argc=1)
popz.v

:[29]
push.v self.breakable
pushi.e 1
cmp.i.v EQ
bf [end]

:[30]
pushi.e 0
pop.v.i local.broken
pushi.e 287
conv.i.v
push.v self.y
push.v self.x
call.i place_meeting(argc=3)
conv.v.b
bf [32]

:[31]
pushi.e 1
pop.v.i local.broken

:[32]
pushloc.v local.broken
conv.v.b
bf [end]

:[33]
push.v self.attached
conv.v.b
bf [37]

:[34]
push.v self.attachedinstance
pushi.e -9
pushenv [36]

:[35]
call.i gml_Script_scr_stickto_stop(argc=0)
popz.v
pushi.e 1
pop.v.i self.falling

:[36]
popenv [35]

:[37]
push.v self.image_xscale
pushi.e 0
cmp.i.v LT
bf [39]

:[38]
push.s "h"@6667
conv.s.v
call.i gml_Script_scr_flip(argc=1)
popz.v

:[39]
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
pushenv [41]

:[40]
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v

:[41]
popenv [40]
call.i instance_destroy(argc=0)
popz.v

:[end]