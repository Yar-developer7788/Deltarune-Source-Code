.localvar 2 arguments
.localvar 14763 dognum 6572
.localvar 107 i 6573
.localvar 14764 newdog 6574

:[0]
pushi.e -5
pushi.e 1
push.v [array]self.currentsong
call.i audio_sound_get_track_position(argc=1)
pop.v.v self.trackpos
pushi.e 82
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [2]

:[1]
call.i room_restart(argc=0)
popz.v

:[2]
pushi.e 78
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [4]

:[3]
pushi.e 10
conv.i.v
pushi.e -5
pushi.e 1
push.v [array]self.currentsong
call.i audio_sound_set_track_position(argc=2)
popz.v

:[4]
push.v self.maindog
pushi.e 0
cmp.i.v EQ
bf [8]

:[5]
pushi.e 129
conv.i.v
pushi.e 120
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.maindog
pushi.e 2428
push.v self.maindog
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushi.e 5
push.v self.maindog
pushi.e -9
pop.v.i [stacktop]self.hspeed
pushi.e -1
push.v self.maindog
pushi.e -9
pop.v.i [stacktop]self.image_xscale
pushi.e 1
push.v self.maindog
pushi.e -9
pop.v.i [stacktop]self.image_yscale
push.d 0.25
push.v self.maindog
pushi.e -9
pop.v.d [stacktop]self.image_speed
push.v self.maindog
pushi.e -9
pushenv [7]

:[6]
call.i gml_Script_scr_depth(argc=0)
popz.v

:[7]
popenv [6]

:[8]
push.d 11.375
pop.v.d self.trigpoint
push.v self.trackpos
push.v self.trigpoint
push.d 0.03
sub.d.v
cmp.v.v GTE
bf [10]

:[9]
push.v self.trackpos
push.v self.trigpoint
push.d 0.01
add.d.v
cmp.v.v LTE
b [11]

:[10]
push.e 0

:[11]
bt [16]

:[12]
push.v self.trackpos
push.v self.trigpoint
push.d 0.03
sub.d.v
cmp.v.v GTE
bf [14]

:[13]
push.v self.trackpos
push.v self.trigpoint
push.d 0.01
add.d.v
cmp.v.v LTE
b [15]

:[14]
push.e 0

:[15]
b [17]

:[16]
push.e 1

:[17]
bf [23]

:[18]
pushi.e 8
conv.i.v
pushi.e 4
conv.i.v
call.i irandom_range(argc=2)
pop.v.v local.dognum
pushi.e 0
pop.v.i local.i

:[19]
pushloc.v local.i
pushloc.v local.dognum
cmp.v.v LT
bf [23]

:[20]
pushi.e 129
conv.i.v
pushi.e 120
pushi.e 40
conv.i.v
pushi.e -40
conv.i.v
call.i random_range(argc=2)
add.v.i
pushi.e 0
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v local.newdog
pushi.e 2428
pushloc.v local.newdog
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushi.e 8
conv.i.v
pushi.e 5
conv.i.v
call.i random_range(argc=2)
pushloc.v local.newdog
pushi.e -9
pop.v.v [stacktop]self.hspeed
push.d -0.5
pushloc.v local.newdog
pushi.e -9
pop.v.d [stacktop]self.image_xscale
push.d 0.5
pushloc.v local.newdog
pushi.e -9
pop.v.d [stacktop]self.image_yscale
push.d -0.01
conv.d.v
push.d 0.01
conv.d.v
call.i random_range(argc=2)
pushloc.v local.newdog
pushi.e -9
pop.v.v [stacktop]self.friction
push.v self.hspeed
pushi.e 4
conv.i.d
div.d.v
push.d 0.25
mul.d.v
push.d 0.25
add.d.v
pushloc.v local.newdog
pushi.e -9
pop.v.v [stacktop]self.image_speed
pushloc.v local.newdog
pushi.e -9
pushenv [22]

:[21]
call.i gml_Script_scr_depth(argc=0)
popz.v

:[22]
popenv [21]
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [19]

:[23]
pushi.e 14
pop.v.i self.trigpoint
push.v self.trackpos
push.v self.trigpoint
push.d 0.03
sub.d.v
cmp.v.v GTE
bf [25]

:[24]
push.v self.trackpos
push.v self.trigpoint
push.d 0.01
add.d.v
cmp.v.v LTE
b [26]

:[25]
push.e 0

:[26]
bt [31]

:[27]
push.v self.trackpos
push.v self.trigpoint
push.d 0.03
sub.d.v
cmp.v.v GTE
bf [29]

:[28]
push.v self.trackpos
push.v self.trigpoint
push.d 0.01
add.d.v
cmp.v.v LTE
b [30]

:[29]
push.e 0

:[30]
b [32]

:[31]
push.e 1

:[32]
bf [38]

:[33]
pushi.e 12
conv.i.v
pushi.e 5
conv.i.v
call.i irandom_range(argc=2)
pop.v.v local.dognum
pushi.e 0
pop.v.i local.i

:[34]
pushloc.v local.i
pushloc.v local.dognum
cmp.v.v LT
bf [38]

:[35]
pushi.e 129
conv.i.v
pushi.e 120
pushi.e 40
conv.i.v
pushi.e -40
conv.i.v
call.i random_range(argc=2)
add.v.i
pushi.e 320
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v local.newdog
pushi.e 2428
pushloc.v local.newdog
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushi.e 8
conv.i.v
pushi.e 5
conv.i.v
call.i random_range(argc=2)
neg.v
pushloc.v local.newdog
pushi.e -9
pop.v.v [stacktop]self.hspeed
push.d 0.5
pushloc.v local.newdog
pushi.e -9
pop.v.d [stacktop]self.image_xscale
push.d 0.5
pushloc.v local.newdog
pushi.e -9
pop.v.d [stacktop]self.image_yscale
push.d -0.01
conv.d.v
push.d 0.01
conv.d.v
call.i random_range(argc=2)
pushloc.v local.newdog
pushi.e -9
pop.v.v [stacktop]self.friction
push.v self.hspeed
pushi.e 4
conv.i.d
div.d.v
push.d 0.25
mul.d.v
push.d 0.25
add.d.v
pushloc.v local.newdog
pushi.e -9
pop.v.v [stacktop]self.image_speed
pushloc.v local.newdog
pushi.e -9
pushenv [37]

:[36]
call.i gml_Script_scr_depth(argc=0)
popz.v

:[37]
popenv [36]
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [34]

:[38]
pushi.e 129
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [44]

:[39]
pushi.e 129
pushenv [43]

:[40]
push.v self.x
pushi.e 384
cmp.i.v GT
bf [43]

:[41]
push.v self.id
push.v other.maindog
cmp.v.v NEQ
bf [43]

:[42]
call.i instance_destroy(argc=0)
popz.v

:[43]
popenv [40]

:[44]
push.v self.maindog
pushi.e -9
pushenv [75]

:[45]
push.d 2.74
pop.v.d self.trigpoint
push.v other.trackpos
push.v self.trigpoint
push.d 0.03
sub.d.v
cmp.v.v GTE
bf [47]

:[46]
push.v other.trackpos
push.v self.trigpoint
push.d 0.01
add.d.v
cmp.v.v LTE
b [48]

:[47]
push.e 0

:[48]
bf [50]

:[49]
pushi.e -5
pop.v.i self.hspeed
push.v self.hspeed
call.i sign(argc=1)
neg.v
pop.v.v self.image_xscale
pushi.e 320
pop.v.i self.x

:[50]
push.d 5.643
pop.v.d self.trigpoint
push.v other.trackpos
push.v self.trigpoint
push.d 0.03
sub.d.v
cmp.v.v GTE
bf [52]

:[51]
push.v other.trackpos
push.v self.trigpoint
push.d 0.01
add.d.v
cmp.v.v LTE
b [53]

:[52]
push.e 0

:[53]
bf [55]

:[54]
pushi.e 5
pop.v.i self.hspeed
push.v self.hspeed
call.i sign(argc=1)
neg.v
pop.v.v self.image_xscale
pushi.e 0
pop.v.i self.x

:[55]
push.d 8.653
pop.v.d self.trigpoint
push.v other.trackpos
push.v self.trigpoint
push.d 0.03
sub.d.v
cmp.v.v GTE
bf [57]

:[56]
push.v other.trackpos
push.v self.trigpoint
push.d 0.01
add.d.v
cmp.v.v LTE
b [58]

:[57]
push.e 0

:[58]
bf [60]

:[59]
pushi.e -5
pop.v.i self.hspeed
push.v self.hspeed
call.i sign(argc=1)
neg.v
pop.v.v self.image_xscale
pushi.e 320
pop.v.i self.x

:[60]
push.d 11.375
pop.v.d self.trigpoint
push.v other.trackpos
push.v self.trigpoint
push.d 0.03
sub.d.v
cmp.v.v GTE
bf [62]

:[61]
push.v other.trackpos
push.v self.trigpoint
push.d 0.01
add.d.v
cmp.v.v LTE
b [63]

:[62]
push.e 0

:[63]
bf [65]

:[64]
pushi.e 6
pop.v.i self.hspeed
push.v self.hspeed
call.i sign(argc=1)
neg.v
pop.v.v self.image_xscale
pushi.e 0
pop.v.i self.x

:[65]
pushi.e 14
pop.v.i self.trigpoint
push.v other.trackpos
push.v self.trigpoint
push.d 0.03
sub.d.v
cmp.v.v GTE
bf [67]

:[66]
push.v other.trackpos
push.v self.trigpoint
push.d 0.01
add.d.v
cmp.v.v LTE
b [68]

:[67]
push.e 0

:[68]
bf [70]

:[69]
pushi.e -6
pop.v.i self.hspeed
push.v self.hspeed
call.i sign(argc=1)
neg.v
pop.v.v self.image_xscale
pushi.e 320
pop.v.i self.x

:[70]
push.d 16.557
pop.v.d self.trigpoint
push.v other.trackpos
push.v self.trigpoint
push.d 0.03
sub.d.v
cmp.v.v GTE
bf [72]

:[71]
push.v other.trackpos
push.v self.trigpoint
push.d 0.01
add.d.v
cmp.v.v LTE
b [73]

:[72]
push.e 0

:[73]
bf [75]

:[74]
pushi.e 4
pop.v.i self.hspeed
push.v self.hspeed
call.i sign(argc=1)
neg.v
pop.v.v self.image_xscale
pushi.e 0
pop.v.i self.x

:[75]
popenv [45]

:[end]