.localvar 2 arguments
.localvar 7017 a 13672

:[0]
pushi.e 0
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 0
conv.b.v
push.v self.yy
pushi.e 999
add.i.v
push.v self.xx
pushi.e 999
add.i.v
push.v self.yy
pushi.e 10
sub.i.v
push.v self.xx
pushi.e 10
sub.i.v
call.i draw_rectangle(argc=5)
popz.v
push.v self.con
pushi.e 0
cmp.i.v EQ
bf [11]

:[1]
pushi.e 0
pop.v.i self.drawground
pushi.e 1
pop.v.i self.auto
push.s "cyber_battle_end.ogg"@26651
conv.s.v
call.i gml_Script_snd_init(argc=1)
pop.v.v self.song1
push.v self.song1
call.i gml_Script_mus_play(argc=1)
pop.v.v self.song2
push.i 170270
setowner.e
pushi.e 862
conv.i.v
push.v self.yy
pushi.e 200
sub.i.v
push.v self.xx
call.i gml_Script_scr_dark_marker(argc=3)
pushi.e -1
pushi.e 0
pop.v.v [array]self.marker
pushi.e -5
pushi.e 1
push.v [array]self.hp
pushi.e 1
cmp.i.v LT
bf [3]

:[2]
push.i 133642
setowner.e
pushi.e 652
pushi.e -1
pushi.e 0
push.v [array]self.marker
pushi.e -9
pop.v.i [stacktop]self.sprite_index
push.i 133618
setowner.e
pushi.e -1
pushi.e 0
push.v [array]self.marker
pushi.e -9
dup.i 4
push.v [stacktop]self.y
pushi.e 2
sub.i.v
pop.i.v [stacktop]self.y

:[3]
push.i 170270
setowner.e
pushi.e 818
conv.i.v
push.v self.yy
pushi.e 200
sub.i.v
push.v self.xx
call.i gml_Script_scr_dark_marker(argc=3)
pushi.e -1
pushi.e 1
pop.v.v [array]self.marker
pushi.e 778
conv.i.v
push.v self.yy
pushi.e 200
sub.i.v
push.v self.xx
call.i gml_Script_scr_dark_marker(argc=3)
pushi.e -1
pushi.e 2
pop.v.v [array]self.marker
pushi.e 711
conv.i.v
push.v self.yy
pushi.e 200
sub.i.v
push.v self.xx
call.i gml_Script_instance_create(argc=3)
pushi.e -1
pushi.e 3
pop.v.v [array]self.marker
push.i 237237
setowner.e
pushi.e 1
pushi.e -1
pushi.e 3
push.v [array]self.marker
pushi.e -9
pop.v.i [stacktop]self.dancing
push.i 170270
setowner.e
pushi.e 715
conv.i.v
push.v self.yy
pushi.e 200
sub.i.v
push.v self.xx
call.i gml_Script_instance_create(argc=3)
pushi.e -1
pushi.e 4
pop.v.v [array]self.marker
push.i 237237
setowner.e
pushi.e 1
pushi.e -1
pushi.e 4
push.v [array]self.marker
pushi.e -9
pop.v.i [stacktop]self.dancing
push.i 170270
setowner.e
pushi.e 713
conv.i.v
push.v self.yy
pushi.e 200
sub.i.v
push.v self.xx
call.i gml_Script_instance_create(argc=3)
pushi.e -1
pushi.e 5
pop.v.v [array]self.marker
push.i 237237
setowner.e
pushi.e 1
pushi.e -1
pushi.e 5
push.v [array]self.marker
pushi.e -9
pop.v.i [stacktop]self.dancing
push.i 170270
setowner.e
pushi.e 728
conv.i.v
push.v self.yy
pushi.e 80
sub.i.v
push.v self.xx
call.i gml_Script_instance_create(argc=3)
pushi.e -1
pushi.e 6
pop.v.v [array]self.marker
pushi.e 728
conv.i.v
push.v self.yy
pushi.e 80
sub.i.v
push.v self.xx
call.i gml_Script_instance_create(argc=3)
pushi.e -1
pushi.e 7
pop.v.v [array]self.marker
pushi.e 728
conv.i.v
push.v self.yy
pushi.e 80
sub.i.v
push.v self.xx
call.i gml_Script_instance_create(argc=3)
pushi.e -1
pushi.e 8
pop.v.v [array]self.marker
pushi.e 0
pop.v.i self.i

:[4]
push.v self.i
pushi.e 9
cmp.i.v LT
bf [8]

:[5]
push.i 171765
setowner.e
pushi.e 0
conv.i.v
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.markeroffsety
push.i 171766
setowner.e
pushi.e 0
conv.i.v
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.markeroffsetx
push.i 133637
setowner.e
push.v self.depth
pushi.e 500
sub.i.v
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.marker
pushi.e -9
pop.v.v [stacktop]self.depth
push.i 133655
setowner.e
push.d 0.24000000000000002
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.marker
pushi.e -9
pop.v.d [stacktop]self.image_speed
push.v self.i
pushi.e 6
cmp.i.v GTE
bf [7]

:[6]
pushi.e 4
pop.v.i self.image_xscale
pushi.e 4
pop.v.i self.image_yscale

:[7]
push.v self.i
push.e 1
add.i.v
pop.v.v self.i
b [4]

:[8]
push.i 171766
setowner.e
pushi.e 6
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.markeroffsetx
push.i 171765
setowner.e
pushi.e 24
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.markeroffsety
pushi.e -5
pushi.e 1
push.v [array]self.hp
pushi.e 0
cmp.i.v LT
bf [10]

:[9]
pushi.e 12
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.markeroffsety

:[10]
pushi.e -36
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.markeroffsety
push.i 171766
setowner.e
pushi.e -40
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.markeroffsetx
pushi.e -12
conv.i.v
pushi.e -1
pushi.e 5
pop.v.v [array]self.markeroffsetx
pushi.e 0
pop.v.i self.framecount
pushi.e 9
pop.v.i self.con

:[11]
push.v self.con
pushi.e 10
cmp.i.v EQ
bt [14]

:[12]
push.v self.con
pushi.e 11
cmp.i.v EQ
bt [14]

:[13]
push.v self.con
pushi.e 12
cmp.i.v EQ
b [15]

:[14]
push.e 1

:[15]
bf [25]

:[16]
pushi.e 1
pop.v.i self.drawground
pushi.e 0
pop.v.i self.i

:[17]
push.v self.i
pushi.e 9
cmp.i.v LT
bf [19]

:[18]
push.i 133618
setowner.e
pushi.e -200
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.marker
pushi.e -9
pop.v.i [stacktop]self.y
push.v self.i
push.e 1
add.i.v
pop.v.v self.i
b [17]

:[19]
push.i 133618
setowner.e
push.v self.cy
pushi.e -1
push.v self.con
pushi.e 10
sub.i.v
conv.v.i
push.v [array]self.markeroffsety
add.v.v
pushi.e -1
push.v self.con
pushi.e 10
sub.i.v
conv.v.i
push.v [array]self.marker
pushi.e -9
pop.v.v [stacktop]self.y
push.i 133617
setowner.e
push.v self.cx
pushi.e 140
sub.i.v
push.v self.siner
pushi.e 8
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 10
mul.i.v
add.v.v
pushi.e -1
push.v self.con
pushi.e 10
sub.i.v
conv.v.i
push.v [array]self.markeroffsetx
add.v.v
pushi.e -1
push.v self.con
pushi.e 10
sub.i.v
conv.v.i
push.v [array]self.marker
pushi.e -9
pop.v.v [stacktop]self.x
pushi.e -5
pushi.e 1
push.v [array]self.hp
pushi.e 0
cmp.i.v LT
bf [21]

:[20]
push.v self.con
pushi.e 10
cmp.i.v EQ
b [22]

:[21]
push.e 0

:[22]
bf [24]

:[23]
push.v self.cx
pushi.e 140
sub.i.v
pushi.e 0
add.i.v
pushi.e -1
push.v self.con
pushi.e 10
sub.i.v
conv.v.i
push.v [array]self.markeroffsetx
add.v.v
pushi.e -1
push.v self.con
pushi.e 10
sub.i.v
conv.v.i
push.v [array]self.marker
pushi.e -9
pop.v.v [stacktop]self.x

:[24]
push.i 133618
setowner.e
push.v self.cy
pushi.e -1
push.v self.con
pushi.e 10
sub.i.v
pushi.e 3
add.i.v
conv.v.i
push.v [array]self.markeroffsety
add.v.v
pushi.e -1
push.v self.con
pushi.e 10
sub.i.v
pushi.e 3
add.i.v
conv.v.i
push.v [array]self.marker
pushi.e -9
pop.v.v [stacktop]self.y
push.i 133617
setowner.e
push.v self.cx
pushi.e 80
add.i.v
push.v self.siner
pushi.e 8
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 10
mul.i.v
add.v.v
pushi.e -1
push.v self.con
pushi.e 10
sub.i.v
pushi.e 3
add.i.v
conv.v.i
push.v [array]self.markeroffsetx
add.v.v
pushi.e -1
push.v self.con
pushi.e 10
sub.i.v
pushi.e 3
add.i.v
conv.v.i
push.v [array]self.marker
pushi.e -9
pop.v.v [stacktop]self.x

:[25]
push.v self.con
pushi.e 13
cmp.i.v EQ
bt [27]

:[26]
push.v self.con
pushi.e 15
cmp.i.v EQ
b [28]

:[27]
push.e 1

:[28]
bf [35]

:[29]
pushi.e 0
pop.v.i self.drawground
pushi.e 0
pop.v.i self.i

:[30]
push.v self.i
pushi.e 6
cmp.i.v LT
bf [32]

:[31]
push.i 133618
setowner.e
pushi.e -200
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.marker
pushi.e -9
pop.v.i [stacktop]self.y
push.v self.i
push.e 1
add.i.v
pop.v.v self.i
b [30]

:[32]
pushi.e 6
pop.v.i self.i

:[33]
push.v self.i
pushi.e 9
cmp.i.v LT
bf [35]

:[34]
push.i 133617
setowner.e
push.v self.cx
pushi.e 100
sub.i.v
pushi.e 100
push.v self.i
pushi.e 6
sub.i.v
mul.v.i
add.v.v
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.marker
pushi.e -9
pop.v.v [stacktop]self.x
push.i 133618
setowner.e
push.v self.cy
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.marker
pushi.e -9
pop.v.v [stacktop]self.y
push.v self.i
push.e 1
add.i.v
pop.v.v self.i
b [33]

:[35]
push.v self.con
pushi.e 14
cmp.i.v EQ
bf [42]

:[36]
pushi.e 0
pop.v.i self.drawground
pushi.e 0
pop.v.i self.i

:[37]
push.v self.i
pushi.e 9
cmp.i.v LT
bf [39]

:[38]
push.i 133618
setowner.e
pushi.e -100
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.marker
pushi.e -9
pop.v.i [stacktop]self.y
push.v self.i
push.e 1
add.i.v
pop.v.v self.i
b [37]

:[39]
pushi.e 0
pop.v.i self.i

:[40]
push.v self.i
pushi.e 6
cmp.i.v LT
bf [42]

:[41]
push.i 133617
setowner.e
push.v self.cx
push.v self.i
push.d 3.14
mul.d.v
pushi.e 3
conv.i.d
div.d.v
push.v self.siner
pushi.e 20
conv.i.d
div.d.v
add.v.v
call.i sin(argc=1)
pushi.e 200
mul.i.v
add.v.v
pushi.e 50
sub.i.v
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.markeroffsetx
add.v.v
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.marker
pushi.e -9
pop.v.v [stacktop]self.x
push.i 133618
setowner.e
push.v self.cy
push.v self.i
push.d 3.14
mul.d.v
pushi.e 3
conv.i.d
div.d.v
push.v self.siner
pushi.e 20
conv.i.d
div.d.v
add.v.v
call.i cos(argc=1)
pushi.e 100
mul.i.v
add.v.v
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.markeroffsety
add.v.v
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.marker
pushi.e -9
pop.v.v [stacktop]self.y
push.i 133637
setowner.e
pushi.e -200
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.marker
pushi.e -9
push.v [stacktop]self.y
sub.v.i
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.marker
pushi.e -9
pop.v.v [stacktop]self.depth
push.v self.i
push.e 1
add.i.v
pop.v.v self.i
b [40]

:[42]
push.v self.con
pushi.e 16
cmp.i.v EQ
bf [50]

:[43]
pushi.e 728
pushenv [45]

:[44]
pushi.e 0
pop.v.b self.visible

:[45]
popenv [44]
pushi.e 0
pop.v.i self.drawground
pushi.e 0
pop.v.i self.jumptimer
pushi.e 0
pop.v.i self.mx
pushi.e 0
pop.v.i self.i

:[46]
push.v self.i
pushi.e 9
cmp.i.v LT
bf [50]

:[47]
push.i 133618
setowner.e
push.v self.yy
pushi.e 500
add.i.v
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.markeroffsety
add.v.v
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.marker
pushi.e -9
pop.v.v [stacktop]self.y
push.i 133617
setowner.e
push.v self.xx
push.v self.mx
add.v.v
pushi.e 40
add.i.v
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.marker
pushi.e -9
pop.v.v [stacktop]self.x
push.i 171769
setowner.e
pushi.e 0
conv.i.v
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.jumped
push.i 133626
setowner.e
pushi.e 0
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.marker
pushi.e -9
pop.v.i [stacktop]self.speed
push.i 133628
setowner.e
pushi.e 0
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.marker
pushi.e -9
pop.v.i [stacktop]self.gravity
push.v self.mx
pushi.e 80
add.i.v
pop.v.v self.mx
push.v self.i
pushi.e 4
cmp.i.v EQ
bf [49]

:[48]
push.v self.mx
pushi.e 80
add.i.v
pop.v.v self.mx

:[49]
push.v self.i
push.e 1
add.i.v
pop.v.v self.i
b [46]

:[50]
push.v self.con
pushi.e 17
cmp.i.v EQ
bf [64]

:[51]
push.v self.jumptimer
push.e 1
add.i.v
pop.v.v self.jumptimer
pushi.e 0
pop.v.i self.i

:[52]
push.v self.i
pushi.e 6
cmp.i.v LT
bf [64]

:[53]
push.v self.jumptimer
push.v self.i
pushi.e 2
mul.i.v
cmp.v.v GT
bf [55]

:[54]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.jumped
pushi.e 0
cmp.i.v EQ
b [56]

:[55]
push.e 0

:[56]
bf [58]

:[57]
push.i 133624
setowner.e
pushi.e -30
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.marker
pushi.e -9
pop.v.i [stacktop]self.vspeed
push.i 133628
setowner.e
pushi.e 2
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.marker
pushi.e -9
pop.v.i [stacktop]self.gravity
push.i 171769
setowner.e
pushi.e 1
conv.i.v
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.jumped

:[58]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.marker
pushi.e -9
push.v [stacktop]self.vspeed
pushi.e 4
cmp.i.v GTE
bf [60]

:[59]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.jumped
pushi.e 1
cmp.i.v EQ
b [61]

:[60]
push.e 0

:[61]
bf [63]

:[62]
push.i 133624
setowner.e
pushi.e 0
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.marker
pushi.e -9
pop.v.i [stacktop]self.vspeed
push.i 133628
setowner.e
pushi.e 0
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.marker
pushi.e -9
pop.v.i [stacktop]self.gravity
push.i 237305
setowner.e
pushi.e 2
conv.i.v
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.marker
pushi.e -9
push.v self.i
conv.v.i
pop.v.v [array]self.jumped

:[63]
push.v self.i
push.e 1
add.i.v
pop.v.v self.i
b [52]

:[64]
push.v self.con
pushi.e 18
cmp.i.v EQ
bf [73]

:[65]
pushi.e -1
pushi.e 0
push.v [array]self.jumped
pushi.e 3
cmp.i.v LT
bf [72]

:[66]
pushi.e -5
pushi.e 1
push.v [array]self.hp
pushi.e 0
cmp.i.v GT
bf [68]

:[67]
push.i 133642
setowner.e
pushi.e 861
pushi.e -1
pushi.e 0
push.v [array]self.marker
pushi.e -9
pop.v.i [stacktop]self.sprite_index
push.i 133618
setowner.e
pushi.e -1
pushi.e 0
push.v [array]self.marker
pushi.e -9
dup.i 4
push.v [stacktop]self.y
pushi.e 18
sub.i.v
pop.i.v [stacktop]self.y

:[68]
push.i 133642
setowner.e
pushi.e 833
pushi.e -1
pushi.e 1
push.v [array]self.marker
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushi.e 790
pushi.e -1
pushi.e 2
push.v [array]self.marker
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushi.e 0
pop.v.i self.i

:[69]
push.v self.i
pushi.e 20
cmp.i.v LT
bf [71]

:[70]
pushi.e 352
conv.i.v
push.v self.cy
pushi.e 50
sub.i.v
pushi.e 50
conv.i.v
pushi.e -50
conv.i.v
call.i random_range(argc=2)
add.v.v
push.v self.cx
pushi.e 100
conv.i.v
pushi.e -100
conv.i.v
call.i random_range(argc=2)
add.v.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.note
pushi.e 1785
push.v self.note
pushi.e -9
pop.v.i [stacktop]self.sprite_index
push.d 0.4
push.d 0.2
conv.d.v
call.i random(argc=1)
add.v.d
push.v self.note
pushi.e -9
pop.v.v [stacktop]self.gravity
pushi.e -2
pushi.e 5
conv.i.v
call.i random(argc=1)
sub.v.i
push.v self.note
pushi.e -9
pop.v.v [stacktop]self.vspeed
pushi.e 4
conv.i.v
pushi.e -4
conv.i.v
call.i random_range(argc=2)
push.v self.note
pushi.e -9
pop.v.v [stacktop]self.hspeed
pushi.e -500
push.v self.note
pushi.e -9
pop.v.i [stacktop]self.depth
pushi.e 2
push.v self.note
pushi.e -9
pop.v.i [stacktop]self.image_alpha
push.v self.i
push.e 1
add.i.v
pop.v.v self.i
b [69]

:[71]
push.i 171769
setowner.e
pushi.e 3
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.jumped

:[72]
push.i 237257
setowner.e
pushi.e 0
pushi.e -1
pushi.e 3
push.v [array]self.marker
pushi.e -9
pop.v.i [stacktop]self.updatetimer
pushi.e 0
pushi.e -1
pushi.e 4
push.v [array]self.marker
pushi.e -9
pop.v.i [stacktop]self.updatetimer
pushi.e 0
pushi.e -1
pushi.e 5
push.v [array]self.marker
pushi.e -9
pop.v.i [stacktop]self.updatetimer
push.i 234446
setowner.e
pushi.e 0
pushi.e -1
pushi.e 3
push.v [array]self.marker
pushi.e -9
pop.v.i [stacktop]self.dancetimer
pushi.e 0
pushi.e -1
pushi.e 4
push.v [array]self.marker
pushi.e -9
pop.v.i [stacktop]self.dancetimer
pushi.e 0
pushi.e -1
pushi.e 5
push.v [array]self.marker
pushi.e -9
pop.v.i [stacktop]self.dancetimer
push.i 231492
setowner.e
pushi.e 0
pushi.e -1
pushi.e 3
push.v [array]self.marker
pushi.e -9
pop.v.i [stacktop]self.siner
pushi.e 0
pushi.e -1
pushi.e 4
push.v [array]self.marker
pushi.e -9
pop.v.i [stacktop]self.siner
pushi.e 0
pushi.e -1
pushi.e 5
push.v [array]self.marker
pushi.e -9
pop.v.i [stacktop]self.siner
push.i 237253
setowner.e
pushi.e 0
pushi.e -1
pushi.e 3
push.v [array]self.marker
pushi.e -9
pop.v.i [stacktop]self.musicalnotetimer
pushi.e 0
pushi.e -1
pushi.e 4
push.v [array]self.marker
pushi.e -9
pop.v.i [stacktop]self.musicalnotetimer
pushi.e 0
pushi.e -1
pushi.e 5
push.v [array]self.marker
pushi.e -9
pop.v.i [stacktop]self.musicalnotetimer
push.s "obj_musical_battle_end_slash_Draw_0_gml_205_0"@26660
conv.s.v
push.s "BATTLE WON!"@26661
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.battlewonstring
pushi.e 2
conv.i.v
call.i draw_set_font(argc=1)
popz.v
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 1
conv.i.v
call.i draw_set_halign(argc=1)
popz.v
pushi.e 0
conv.i.v
pushi.e 3
conv.i.v
pushi.e 2
conv.i.v
push.v self.battlewonstring
push.v self.cy
pushi.e 100
sub.i.v
push.v self.cx
call.i draw_text_transformed(argc=6)
popz.v
pushi.e 0
conv.i.v
call.i draw_set_halign(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i draw_set_valign(argc=1)
popz.v

:[73]
push.v self.con
pushi.e 19
cmp.i.v GTE
bf [77]

:[74]
push.i 237257
setowner.e
pushi.e 0
pushi.e -1
pushi.e 3
push.v [array]self.marker
pushi.e -9
pop.v.i [stacktop]self.updatetimer
pushi.e 0
pushi.e -1
pushi.e 4
push.v [array]self.marker
pushi.e -9
pop.v.i [stacktop]self.updatetimer
pushi.e 0
pushi.e -1
pushi.e 5
push.v [array]self.marker
pushi.e -9
pop.v.i [stacktop]self.updatetimer
push.i 234446
setowner.e
pushi.e 0
pushi.e -1
pushi.e 3
push.v [array]self.marker
pushi.e -9
pop.v.i [stacktop]self.dancetimer
pushi.e 0
pushi.e -1
pushi.e 4
push.v [array]self.marker
pushi.e -9
pop.v.i [stacktop]self.dancetimer
pushi.e 0
pushi.e -1
pushi.e 5
push.v [array]self.marker
pushi.e -9
pop.v.i [stacktop]self.dancetimer
push.i 231492
setowner.e
pushi.e 0
pushi.e -1
pushi.e 3
push.v [array]self.marker
pushi.e -9
pop.v.i [stacktop]self.siner
pushi.e 0
pushi.e -1
pushi.e 4
push.v [array]self.marker
pushi.e -9
pop.v.i [stacktop]self.siner
pushi.e 0
pushi.e -1
pushi.e 5
push.v [array]self.marker
pushi.e -9
pop.v.i [stacktop]self.siner
push.i 237253
setowner.e
pushi.e 0
pushi.e -1
pushi.e 3
push.v [array]self.marker
pushi.e -9
pop.v.i [stacktop]self.musicalnotetimer
pushi.e 0
pushi.e -1
pushi.e 4
push.v [array]self.marker
pushi.e -9
pop.v.i [stacktop]self.musicalnotetimer
pushi.e 0
pushi.e -1
pushi.e 5
push.v [array]self.marker
pushi.e -9
pop.v.i [stacktop]self.musicalnotetimer
pushi.e -5
pushi.e 1
push.v [array]self.hp
pushi.e 0
cmp.i.v GT
bf [76]

:[75]
push.i 133642
setowner.e
pushi.e 861
pushi.e -1
pushi.e 0
push.v [array]self.marker
pushi.e -9
pop.v.i [stacktop]self.sprite_index

:[76]
pushi.e 833
pushi.e -1
pushi.e 1
push.v [array]self.marker
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushi.e 790
pushi.e -1
pushi.e 2
push.v [array]self.marker
pushi.e -9
pop.v.i [stacktop]self.sprite_index

:[77]
push.v self.con
pushi.e 19
cmp.i.v EQ
bf [79]

:[78]
pushi.e 20
pop.v.i self.con
pushi.e 721
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
popz.v

:[79]
push.v self.con
pushi.e 21
cmp.i.v EQ
bf [87]

:[80]
pushi.e 710
pushenv [82]

:[81]
pushi.e 4
pop.v.i self.endcon

:[82]
popenv [81]
pushi.e 0
pop.v.i local.a
pushi.e 9
dup.i 0
push.i 0
cmp.i.i LTE
bt [86]

:[83]
pushi.e -1
pushloc.v local.a
conv.v.i
push.v [array]self.marker
pushi.e -9
pushenv [85]

:[84]
call.i instance_destroy(argc=0)
popz.v

:[85]
popenv [84]
push.v local.a
push.e 1
add.i.v
pop.v.v local.a
push.i 1
sub.i.i
dup.i 0
conv.i.b
bt [83]

:[86]
popz.i
call.i instance_destroy(argc=0)
popz.v

:[87]
push.v self.drawground
conv.v.b
bf [89]

:[88]
push.d 0.5
conv.d.v
push.i 12632256
conv.i.v
push.i 8388608
conv.i.v
call.i merge_color(argc=3)
call.i draw_set_color(argc=1)
popz.v
pushi.e 0
conv.b.v
push.v self.cy
pushi.e 40
add.i.v
push.v self.cx
pushi.e 200
add.i.v
push.v self.cy
pushi.e 100
add.i.v
push.v self.cx
pushi.e 200
sub.i.v
call.i draw_ellipse(argc=5)
popz.v

:[89]
push.v self.auto
pushi.e 1
cmp.i.v EQ
bf [112]

:[90]
push.v self.framecount
pushi.e 57
cmp.i.v EQ
bf [92]

:[91]
pushi.e 10
pop.v.i self.con

:[92]
push.v self.framecount
pushi.e 115
cmp.i.v EQ
bf [94]

:[93]
pushi.e 11
pop.v.i self.con

:[94]
push.v self.framecount
pushi.e 172
cmp.i.v EQ
bf [96]

:[95]
pushi.e 12
pop.v.i self.con

:[96]
push.v self.framecount
pushi.e 236
cmp.i.v EQ
bf [98]

:[97]
pushi.e 13
pop.v.i self.con

:[98]
push.v self.framecount
pushi.e 288
cmp.i.v EQ
bf [100]

:[99]
pushi.e 14
pop.v.i self.con

:[100]
push.v self.framecount
pushi.e 432
cmp.i.v EQ
bf [102]

:[101]
pushi.e 15
pop.v.i self.con

:[102]
push.v self.framecount
pushi.e 460
cmp.i.v EQ
bf [104]

:[103]
pushi.e 16
pop.v.i self.con

:[104]
push.v self.framecount
pushi.e 461
cmp.i.v EQ
bf [106]

:[105]
pushi.e 17
pop.v.i self.con

:[106]
push.v self.framecount
pushi.e 518
cmp.i.v EQ
bf [108]

:[107]
pushi.e 18
pop.v.i self.con

:[108]
push.v self.framecount
pushi.e 620
cmp.i.v EQ
bf [110]

:[109]
pushi.e 19
pop.v.i self.con

:[110]
push.v self.framecount
pushi.e 642
cmp.i.v EQ
bf [112]

:[111]
pushi.e 21
pop.v.i self.con

:[112]
push.v self.framecount
pushi.e 237
cmp.i.v EQ
bt [123]

:[113]
push.v self.framecount
pushi.e 246
cmp.i.v EQ
bt [123]

:[114]
push.v self.framecount
pushi.e 252
cmp.i.v EQ
bt [123]

:[115]
push.v self.framecount
pushi.e 259
cmp.i.v EQ
bt [123]

:[116]
push.v self.framecount
pushi.e 270
cmp.i.v EQ
bt [123]

:[117]
push.v self.framecount
pushi.e 276
cmp.i.v EQ
bt [123]

:[118]
push.v self.framecount
pushi.e 432
cmp.i.v EQ
bt [123]

:[119]
push.v self.framecount
pushi.e 439
cmp.i.v EQ
bt [123]

:[120]
push.v self.framecount
pushi.e 442
cmp.i.v EQ
bt [123]

:[121]
push.v self.framecount
pushi.e 448
cmp.i.v EQ
bt [123]

:[122]
push.v self.framecount
pushi.e 454
cmp.i.v EQ
b [124]

:[123]
push.e 1

:[124]
bf [128]

:[125]
pushi.e 728
pushenv [127]

:[126]
pushi.e 1
pop.v.i self.active

:[127]
popenv [126]

:[128]
call.i gml_Script_scr_debug(argc=0)
conv.v.b
bf [133]

:[129]
call.i gml_Script_right_p(argc=0)
conv.v.b
bf [131]

:[130]
push.v self.con
push.e 1
add.i.v
pop.v.v self.con

:[131]
call.i gml_Script_left_p(argc=0)
conv.v.b
bf [133]

:[132]
push.v self.con
push.e 1
sub.i.v
pop.v.v self.con

:[133]
push.v self.framecount
push.e 1
add.i.v
pop.v.v self.framecount
push.v self.siner
push.e 1
add.i.v
pop.v.v self.siner

:[end]