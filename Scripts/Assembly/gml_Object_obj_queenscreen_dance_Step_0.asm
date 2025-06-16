.localvar 2 arguments
.localvar 20278 countmod 8497
.localvar 20279 audio_pos 8498

:[0]
push.v self.init
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
pushi.e 1
pop.v.i self.init

:[2]
push.v self.activecon
pushi.e 0
cmp.i.v EQ
bf [26]

:[3]
pushi.e 82
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [26]

:[4]
pushi.e 0
pop.v.i self.aligned
push.v self.extflag
pushi.e 3
cmp.i.v EQ
bf [6]

:[5]
pushi.e 1
pop.v.i self.aligned

:[6]
push.v self.extflag
pushi.e 7
cmp.i.v EQ
bf [24]

:[7]
push.v self.align_x
pushi.e 1
cmp.b.v EQ
bf [10]

:[8]
push.v self.x
call.i gml_Script_camerax(argc=0)
cmp.v.v GTE
bf [10]

:[9]
push.v self.x
call.i gml_Script_camerax(argc=0)
call.i gml_Script_camerawidth(argc=0)
add.v.v
cmp.v.v LTE
b [11]

:[10]
push.e 0

:[11]
bf [14]

:[12]
push.v 82.x
pushi.e 20
add.i.v
push.v self.x
sub.v.v
call.i abs(argc=1)
push.v self.align_amount
cmp.v.v LTE
bf [14]

:[13]
pushi.e 1
pop.v.i self.aligned

:[14]
push.v self.align_y
pushi.e 1
cmp.b.v EQ
bf [17]

:[15]
push.v self.y
call.i gml_Script_cameray(argc=0)
cmp.v.v GTE
bf [17]

:[16]
push.v self.y
call.i gml_Script_cameray(argc=0)
call.i gml_Script_cameraheight(argc=0)
add.v.v
cmp.v.v LTE
b [18]

:[17]
push.e 0

:[18]
bf [21]

:[19]
push.v 82.y
pushi.e 20
add.i.v
push.v self.y
sub.v.v
call.i abs(argc=1)
push.v self.align_amount
cmp.v.v LTE
bf [21]

:[20]
pushi.e 1
pop.v.i self.aligned

:[21]
push.v self.align_distance
pushi.e 1
cmp.b.v EQ
bf [24]

:[22]
pushi.e 82
conv.i.v
call.i distance_to_object(argc=1)
push.v self.align_amount
cmp.v.v LT
bf [24]

:[23]
pushi.e 1
pop.v.i self.aligned

:[24]
push.v self.aligned
pushi.e 1
cmp.i.v EQ
bf [26]

:[25]
pushi.e 1
pop.v.i self.visible
pushi.e 0
pop.v.i self.con
pushi.e 1
pop.v.i self.activecon

:[26]
push.v self.activecon
pushi.e 1
cmp.i.v EQ
bf [41]

:[27]
push.v self.con
pushi.e 0
cmp.i.v EQ
bf [30]

:[28]
push.v self.timer
push.v self.timer
pushi.e 1
add.i.v
add.v.v
pop.v.v self.timer
push.v self.timer
pushi.e 30
conv.i.d
div.d.v
pushi.e 1
conv.i.v
pushi.e 4
conv.i.v
call.i lerp(argc=3)
pop.v.v self.image_xscale
push.v self.timer
pushi.e 30
conv.i.d
div.d.v
pushi.e 4
conv.i.v
pushi.e 0
conv.i.v
call.i lerp(argc=3)
pop.v.v self.image_yscale
push.v self.timer
pushi.e 30
cmp.i.v GTE
bf [30]

:[29]
pushi.e 1
pop.v.i self.con
pushi.e 0
pop.v.i self.timer

:[30]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [33]

:[31]
push.v self.timer
push.v self.timer
pushi.e 1
add.i.v
add.v.v
pop.v.v self.timer
push.v self.timer
pushi.e 15
conv.i.d
div.d.v
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
call.i lerp(argc=3)
pop.v.v self.image_xscale
push.v self.timer
pushi.e 15
conv.i.d
div.d.v
pushi.e 2
conv.i.v
pushi.e 4
conv.i.v
call.i lerp(argc=3)
pop.v.v self.image_yscale
push.v self.timer
pushi.e 15
cmp.i.v GTE
bf [33]

:[32]
pushi.e 0
pop.v.i self.timer
pushi.e 2
pop.v.i self.con
pushi.e 2
pop.v.i self.image_xscale
pushi.e 2
pop.v.i self.image_yscale

:[33]
push.v self.con
pushi.e 2
cmp.i.v EQ
bf [36]

:[34]
push.v self.image_index
pushi.e 9
cmp.i.v EQ
bf [36]

:[35]
pushi.e 1
pop.v.i self.tasquecon
pushi.e 99
pop.v.i self.con

:[36]
push.v self.dismiss
pushi.e 1
cmp.i.v EQ
bf [38]

:[37]
pushi.e 0
pop.v.i self.timer
pushi.e 3
pop.v.i self.con
pushi.e 0
pop.v.i self.dismiss

:[38]
push.v self.con
pushi.e 3
cmp.i.v EQ
bf [41]

:[39]
push.v self.timer
push.v self.timer
pushi.e 1
add.i.v
add.v.v
pop.v.v self.timer
push.v self.timer
pushi.e 30
conv.i.d
div.d.v
pushi.e 4
conv.i.v
pushi.e 2
conv.i.v
call.i lerp(argc=3)
pop.v.v self.image_xscale
push.v self.timer
pushi.e 30
conv.i.d
div.d.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
call.i lerp(argc=3)
pop.v.v self.image_yscale
push.v self.timer
pushi.e 30
cmp.i.v GTE
bf [41]

:[40]
call.i instance_destroy(argc=0)
popz.v

:[41]
push.v self.dance_active
conv.v.b
bf [end]

:[42]
push.d 0.4877
pop.v.d local.countmod
pushi.e -5
pushi.e 1
push.v [array]self.currentsong
call.i audio_sound_get_track_position(argc=1)
pop.v.v local.audio_pos
pushloc.v local.audio_pos
push.d 16.5
cmp.d.v GTE
bf [44]

:[43]
push.d 1.9508
pop.v.d local.countmod
b [46]

:[44]
pushloc.v local.audio_pos
pushi.e 130
cmp.i.v GTE
bf [46]

:[45]
push.d 0.4877
pop.v.d local.countmod

:[46]
push.v self.count
pushloc.v local.countmod
add.v.v
pop.v.v self.count
push.v self.count
pushi.e 30
cmp.i.v GTE
bf [48]

:[47]
push.v self.count
pushi.e 30
sub.i.v
pop.v.v self.count
pushi.e 1
pop.v.i self.dance_con

:[48]
push.v self.dance_con
pushi.e 1
cmp.i.v EQ
bf [end]

:[49]
pushi.e 0
pop.v.i self.dance_con
push.v self.image_index
push.e 1
add.i.v
pop.v.v self.image_index
pushi.e 1
pop.v.i self.image_alpha
pushi.e -5
pushi.e 8
push.v [array]self.flag
pushi.e 0
cmp.i.v EQ
bf [end]

:[50]
pushi.e 14
conv.i.v
push.d 0.5
conv.d.v
pushi.e 2
conv.i.v
push.s "image_alpha"@6548
conv.s.v
push.v self.id
call.i gml_Script_scr_lerpvar_instance(argc=5)
popz.v

:[end]