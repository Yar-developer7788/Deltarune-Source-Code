.localvar 2 arguments

:[0]
push.v self.reverse
conv.v.b
bf [2]

:[1]
push.v self.reversespeed
b [3]

:[2]
pushi.e 1
conv.i.v

:[3]
conv.v.i
dup.i 0
push.i 0
cmp.i.i LTE
bt [120]

:[4]
push.v self.reverse
conv.v.b
bf [13]

:[5]
push.v self.t
pushi.e 5
cmp.i.v GTE
bf [7]

:[6]
push.v self.t
pushi.e 10
cmp.i.v LT
b [8]

:[7]
push.e 0

:[8]
bf [10]

:[9]
push.v self.tone
push.e 1
sub.i.v
pop.v.v self.tone

:[10]
push.v self.t
pushi.e 9
cmp.i.v GTE
bf [12]

:[11]
push.v self.neotone
push.e 1
sub.i.v
pop.v.v self.neotone
b [13]

:[12]
pushi.e 0
pop.v.i self.neotone

:[13]
push.v self.reverse
conv.v.b
bf [17]

:[14]
push.v self.t
pushi.e 0
cmp.i.v EQ
bf [16]

:[15]
pushi.e 0
pop.v.b self.first_pass
b [17]

:[16]
push.v self.first_pass
conv.v.b
not.b
pop.v.b self.first_pass

:[17]
push.v self.t
pushi.e 0
cmp.i.v NEQ
bf [19]

:[18]
push.v self.first_pass
conv.v.b
b [20]

:[19]
push.e 0

:[20]
bf [26]

:[21]
pushi.e 0
pop.v.i self.i

:[22]
push.v self.i
push.v self.starcount
cmp.v.v LT
bf [26]

:[23]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.star
pushi.e -9
pushenv [25]

:[24]
push.v self.hspeed
push.v self.gravity
add.v.v
pop.v.v self.hspeed
push.v self.x
push.v self.hspeed
add.v.v
pop.v.v self.x

:[25]
popenv [24]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [22]

:[26]
push.v self.t
pushi.e 6
cmp.i.v GTE
bf [28]

:[27]
push.v self.t
pushi.e 26
cmp.i.v LTE
b [29]

:[28]
push.e 0

:[29]
bf [36]

:[30]
push.v self.reverse
conv.v.b
not.b
bf [32]

:[31]
push.v self.afterimage
pushi.e 1
add.i.v
pop.v.v self.afterimage

:[32]
push.v self.first_pass
conv.v.b
not.b
bf [34]

:[33]
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
push.d 0.7
push.v self.afterimage
pushi.e 25
conv.i.d
div.d.v
sub.v.d
push.v self.image_blend
pushi.e 0
conv.i.v
push.v self.image_yscale
push.v self.image_xscale
push.v self.y
push.v self.x
push.v self.afterimage
pushi.e 4
mul.i.v
add.v.v
push.v self.image_index
push.v self.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v
push.d 0.4
push.v self.afterimage
pushi.e 30
conv.i.d
div.d.v
sub.v.d
push.v self.image_blend
pushi.e 0
conv.i.v
push.v self.image_yscale
push.v self.image_xscale
push.v self.y
push.v self.x
push.v self.afterimage
pushi.e 8
mul.i.v
add.v.v
push.v self.image_index
push.v self.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v
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

:[34]
push.v self.reverse
conv.v.b
bf [36]

:[35]
push.v self.afterimage
push.e 1
sub.i.v
pop.v.v self.afterimage

:[36]
push.v self.t
pushi.e 6
cmp.i.v LT
bf [43]

:[37]
push.v self.first_pass
conv.v.b
not.b
bf [43]

:[38]
push.v self.t
pushi.e 5
cmp.i.v LT
bf [40]

:[39]
pushi.e 1
push.v self.neotone
pushi.e 4
conv.i.d
div.d.v
sub.v.i
push.v self.image_blend
pushi.e 0
conv.i.v
push.v self.image_yscale
push.v self.image_xscale
push.v self.y
push.v self.x
push.v self.image_index
push.v self.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v

:[40]
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
push.v self.t
pushi.e 5
conv.i.d
div.d.v
pop.v.v self.maxwhite
push.v self.maxwhite
pushi.e 1
cmp.i.v GT
bf [42]

:[41]
pushi.e 1
pop.v.i self.maxwhite

:[42]
push.v self.maxwhite
push.v self.tone
pushi.e 5
conv.i.d
div.d.v
sub.v.v
push.v self.image_blend
pushi.e 0
conv.i.v
push.v self.image_yscale
push.v self.image_xscale
push.v self.y
push.v self.x
push.v self.image_index
push.v self.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v
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

:[43]
push.v self.reverse
conv.v.b
not.b
bf [64]

:[44]
push.v self.t
pushi.e 1
cmp.i.v GTE
bf [46]

:[45]
push.v self.t
pushi.e 5
cmp.i.v LTE
b [47]

:[46]
push.e 0

:[47]
bf [53]

:[48]
pushi.e 0
pop.v.i self.i

:[49]
push.v self.i
pushi.e 2
cmp.i.v LT
bf [53]

:[50]
push.i 165924
setowner.e
pushi.e 129
conv.i.v
push.v self.y
push.v self.sprite_height
call.i random(argc=1)
add.v.v
push.v self.x
push.v self.sprite_width
call.i random(argc=1)
add.v.v
call.i gml_Script_instance_create(argc=3)
pushi.e -1
push.v self.starcount
conv.v.i
pop.v.v [array]self.star
push.i 237983
setowner.e
push.v self.reversespeed
pushi.e -1
push.v self.starcount
conv.v.i
push.v [array]self.star
pushi.e -9
pop.v.v [stacktop]self.reversespeed
pushi.e -1
push.v self.starcount
conv.v.i
push.v [array]self.star
pushi.e -9
pushenv [52]

:[51]
pushi.e 2
pop.v.i self.image_xscale
pushi.e 2
pop.v.i self.image_yscale
pushi.e 2475
pop.v.i self.sprite_index
pushi.e 2
pop.v.i self.image_alpha
push.d 0.25
pop.v.d self.image_speed
pushi.e -3
pop.v.i self.hspeed
push.d 0.5
pop.v.d self.gravity
pushi.e 0
pop.v.i self.gravity_direction

:[52]
popenv [51]
push.v self.starcount
pushi.e 1
add.i.v
pop.v.v self.starcount
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [49]

:[53]
push.v self.t
pushi.e 5
cmp.i.v GTE
bf [55]

:[54]
push.v self.t
pushi.e 30
cmp.i.v LTE
b [56]

:[55]
push.e 0

:[56]
bf [63]

:[57]
pushi.e 0
pop.v.i self.i

:[58]
push.v self.i
push.v self.starcount
cmp.v.v LT
bf [63]

:[59]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.star
pushi.e -9
pushenv [62]

:[60]
push.v self.image_angle
pushi.e 10
add.i.v
pop.v.v self.image_angle
push.v self.image_alpha
push.d 0.1
sub.d.v
pop.v.v self.image_alpha
push.v self.image_alpha
pushi.e 0
cmp.i.v LTE
bf [62]

:[61]
pushi.e 0
pop.v.b self.visible

:[62]
popenv [60]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [58]

:[63]
b [87]

:[64]
push.v self.t
pushi.e 6
cmp.i.v GTE
bf [66]

:[65]
push.v self.t
pushi.e 31
cmp.i.v LTE
b [67]

:[66]
push.e 0

:[67]
bf [78]

:[68]
pushi.e 0
pop.v.i self.i

:[69]
push.v self.i
push.v self.starcount
cmp.v.v LT
bf [78]

:[70]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.star
pushi.e -9
pushenv [77]

:[71]
push.v self.image_angle
pushi.e 10
sub.i.v
pop.v.v self.image_angle
push.v self.image_alpha
push.d 0.1
add.d.v
pop.v.v self.image_alpha
push.v self.visible
conv.v.b
not.b
bf [74]

:[72]
push.v self.image_alpha
pushi.e 0
cmp.i.v GTE
bf [74]

:[73]
push.v self.image_alpha
pushi.e 2
cmp.i.v LT
b [75]

:[74]
push.e 0

:[75]
bf [77]

:[76]
pushi.e 1
pop.v.b self.visible

:[77]
popenv [71]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [69]

:[78]
push.v self.t
pushi.e 2
cmp.i.v GTE
bf [80]

:[79]
push.v self.t
pushi.e 6
cmp.i.v LTE
b [81]

:[80]
push.e 0

:[81]
bf [87]

:[82]
pushi.e 0
pop.v.i self.i

:[83]
push.v self.i
pushi.e 2
cmp.i.v LT
bf [87]

:[84]
push.v self.starcount
push.e 1
sub.i.v
pop.v.v self.starcount
pushi.e -1
push.v self.starcount
conv.v.i
push.v [array]self.star
pushi.e -9
pushenv [86]

:[85]
call.i instance_destroy(argc=0)
popz.v

:[86]
popenv [85]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [83]

:[87]
push.v self.reverse
conv.v.b
not.b
bf [96]

:[88]
push.v self.t
pushi.e 5
cmp.i.v GTE
bf [90]

:[89]
push.v self.t
pushi.e 10
cmp.i.v LT
b [91]

:[90]
push.e 0

:[91]
bf [93]

:[92]
push.v self.tone
pushi.e 1
add.i.v
pop.v.v self.tone

:[93]
push.v self.t
pushi.e 9
cmp.i.v GTE
bf [95]

:[94]
push.v self.neotone
pushi.e 1
add.i.v
pop.v.v self.neotone
b [96]

:[95]
pushi.e 0
pop.v.i self.neotone

:[96]
push.v self.reverse
conv.v.b
bf [98]

:[97]
push.v self.t
pushi.e 15
push.v self.reversespeed
mul.v.i
cmp.v.v EQ
b [99]

:[98]
push.e 0

:[99]
bf [101]

:[100]
pushi.e 300
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v

:[101]
push.v self.t
pushi.e 50
cmp.i.v GTE
bf [103]

:[102]
push.v self.reverse
conv.v.b
not.b
b [104]

:[103]
push.e 0

:[104]
bf [111]

:[105]
pushi.e 0
pop.v.i self.i

:[106]
push.v self.i
push.v self.starcount
cmp.v.v LT
bf [110]

:[107]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.star
pushi.e -9
pushenv [109]

:[108]
push.v self.image_speed
push.v self.reversespeed
neg.v
mul.v.v
pop.v.v self.image_speed
push.v self.hspeed
neg.v
push.v self.gravity
sub.v.v
pop.v.v self.hspeed

:[109]
popenv [108]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [106]

:[110]
pushi.e 0
pop.v.b self.first_pass
pushi.e 1
pop.v.b self.reverse
push.v self.t
push.e 1
add.i.v
pop.v.v self.t

:[111]
push.v self.reverse
conv.v.b
bf [113]

:[112]
push.v self.t
push.e 1
sub.i.v
pop.v.v self.t
b [114]

:[113]
push.v self.t
push.e 1
add.i.v
pop.v.v self.t

:[114]
push.v self.reverse
conv.v.b
bf [116]

:[115]
push.v self.t
pushi.e 0
cmp.i.v LT
b [117]

:[116]
push.e 0

:[117]
bf [119]

:[118]
pushi.e 1
push.v self.original
pushi.e -9
pop.v.b [stacktop]self.visible
call.i instance_destroy(argc=0)
popz.v
popz.i
exit.i

:[119]
push.i 1
sub.i.i
dup.i 0
conv.i.b
bt [4]

:[120]
popz.i

:[end]