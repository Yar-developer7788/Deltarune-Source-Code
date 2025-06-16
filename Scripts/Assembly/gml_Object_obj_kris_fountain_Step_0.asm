.localvar 2 arguments

:[0]
push.v self.active
pushi.e 1
cmp.i.v EQ
bf [end]

:[1]
push.v self.con
pushi.e 50
cmp.i.v EQ
bf [3]

:[2]
pushi.e 0
pop.v.i self.image_index
push.d 0.1
pop.v.d self.image_speed
pushi.e 51
pop.v.i self.con
push.i 68097
setowner.e
pushi.e 70
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[3]
push.v self.con
pushi.e 52
cmp.i.v EQ
bf [5]

:[4]
pushi.e 0
pop.v.i self.image_speed
pushi.e 7
pop.v.i self.image_index
pushi.e 53
pop.v.i self.con
pushi.e 60
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[5]
push.v self.con
pushi.e 53
cmp.i.v EQ
bf [7]

:[6]
pushi.e 128
conv.i.v
push.v self.y
pushi.e 48
add.i.v
push.v self.x
pushi.e 12
add.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.anim
pushi.e 481
push.v self.anim
pushi.e -9
pop.v.i [stacktop]self.sprite_index
push.d 0.125
push.v self.anim
pushi.e -9
pop.v.d [stacktop]self.image_speed
pushi.e 54
pop.v.i self.con
pushi.e 60
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[7]
push.v self.con
pushi.e 55
cmp.i.v EQ
bf [9]

:[8]
pushi.e 0
pop.v.i self.blazetimer
pushi.e 8
pop.v.i self.image_index
push.d 0.5
pop.v.d self.image_speed
pushi.e 10
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm
pushi.e 56
pop.v.i self.con

:[9]
push.v self.con
pushi.e 57
cmp.i.v EQ
bf [11]

:[10]
pushi.e 13
pop.v.i self.image_index
pushi.e 0
pop.v.i self.image_speed
pushi.e 58
pop.v.i self.con
pushi.e 1
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[11]
push.v self.con
pushi.e 59
cmp.i.v EQ
bf [13]

:[12]
pushi.e 60
pop.v.i self.con
pushi.e 10
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[13]
push.v self.con
pushi.e 60
cmp.i.v EQ
bt [15]

:[14]
push.v self.con
pushi.e 56
cmp.i.v EQ
b [16]

:[15]
push.e 1

:[16]
bf [18]

:[17]
pushi.e 229
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
push.v self.blazetimer
push.e 1
add.i.v
pop.v.v self.blazetimer
pushi.e 128
conv.i.v
push.v self.y
pushi.e 10
add.i.v
pushi.e 20
conv.i.v
call.i random(argc=1)
add.v.v
push.v self.x
pushi.e 40
sub.i.v
push.v self.blazetimer
pushi.e 6
mul.i.v
add.v.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.anim
pushi.e 480
push.v self.anim
pushi.e -9
pop.v.i [stacktop]self.sprite_index
push.d 0.5
push.v self.anim
pushi.e -9
pop.v.d [stacktop]self.image_speed

:[18]
push.v self.con
pushi.e 61
cmp.i.v EQ
bf [20]

:[19]
pushi.e 230
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
pushi.e 1
pop.v.i self.ballcon
pushi.e 14
pop.v.i self.image_index
push.d 0.5
pop.v.d self.image_speed
pushi.e 62
pop.v.i self.con
pushi.e 6
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[20]
push.v self.con
pushi.e 63
cmp.i.v EQ
bf [23]

:[21]
pushi.e 0
pop.v.i self.image_speed
push.v self.image_index
push.d 0.5
add.d.v
pop.v.v self.image_index
push.v self.image_index
pushi.e 19
cmp.i.v GTE
bf [23]

:[22]
push.v self.image_index
pushi.e 2
sub.i.v
pop.v.v self.image_index

:[23]
push.v self.con
pushi.e 64
cmp.i.v EQ
bf [25]

:[24]
pushi.e 484
pop.v.i self.sprite_index
pushi.e 0
pop.v.i self.image_speed
pushi.e 0
pop.v.i self.image_index
pushi.e 65
pop.v.i self.con
pushi.e 90
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[25]
push.v self.con
pushi.e 66
cmp.i.v EQ
bf [27]

:[26]
pushi.e 8
pop.v.i self.depth
pushi.e 1
pop.v.i self.image_index
pushi.e -8
pop.v.i self.vspeed
pushi.e -1
pop.v.i self.hspeed
pushi.e 1
pop.v.i self.gravity
pushi.e 67
pop.v.i self.con

:[27]
push.v self.con
pushi.e 67
cmp.i.v EQ
bf [35]

:[28]
pushi.e 1
conv.b.v
pushi.e 0
conv.b.v
pushi.e 1005
conv.i.v
push.v self.bbox_bottom
push.v self.bbox_right
push.v self.bbox_top
push.v self.bbox_left
call.i collision_rectangle(argc=7)
pop.v.v self.ballcheck
push.v self.ballcheck
pushi.e -4
cmp.i.v NEQ
bf [33]

:[29]
push.v self.ballcheck
pushi.e -9
pushenv [32]

:[30]
push.v self.back
pushi.e 0
cmp.i.v EQ
bf [32]

:[31]
push.v self.hspeed
pushi.e -4
pushi.e 8
conv.i.v
call.i random(argc=1)
add.v.i
add.v.v
pop.v.v self.hspeed
push.v self.vspeed
pushi.e 3
conv.i.v
call.i random(argc=1)
sub.v.v
pop.v.v self.vspeed
push.v self.hspeed
push.v self.backball
pushi.e -9
pop.v.v [stacktop]self.hspeed
push.v self.vspeed
push.v self.backball
pushi.e -9
pop.v.v [stacktop]self.vspeed

:[32]
popenv [30]

:[33]
push.v self.y
pushi.e 120
cmp.i.v GTE
bf [35]

:[34]
pushi.e 2
pop.v.i self.image_index
pushi.e 0
pop.v.i self.vspeed
pushi.e 0
pop.v.i self.hspeed
pushi.e 0
pop.v.i self.gravity
pushi.e 68
pop.v.i self.con
pushi.e 60
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[35]
push.v self.con
pushi.e 69
cmp.i.v EQ
bf [38]

:[36]
push.v self.image_index
pushi.e 4
cmp.i.v LTE
bf [38]

:[37]
push.v self.image_index
push.d 0.25
add.d.v
pop.v.v self.image_index

:[38]
call.i gml_Script_scr_debug(argc=0)
conv.v.b
bf [end]

:[39]
pushi.e 32
conv.i.v
call.i keyboard_check(argc=1)
conv.v.b
bf [end]

:[40]
call.i room_restart(argc=0)
popz.v

:[end]