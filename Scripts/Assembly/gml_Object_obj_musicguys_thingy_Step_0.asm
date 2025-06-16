.localvar 2 arguments

:[0]
push.v self.timer
push.e 1
add.i.v
pop.v.v self.timer
push.d 0.25
pop.v.d self.image_alpha
pushi.e 872
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [5]

:[1]
push.v self.x
push.v 872.x
push.v 872.sprite_width
pushi.e 2
conv.i.d
div.d.v
add.v.v
pushi.e 16
sub.i.v
cmp.v.v GTE
bf [3]

:[2]
push.v self.hspeed
call.i abs(argc=1)
neg.v
pop.v.v self.hspeed
push.v self.x
pushi.e 4
sub.i.v
pop.v.v self.x

:[3]
push.v self.x
push.v 872.x
push.v 872.sprite_width
pushi.e 2
conv.i.d
div.d.v
sub.v.v
cmp.v.v LTE
bf [5]

:[4]
push.v self.hspeed
call.i abs(argc=1)
pop.v.v self.hspeed
push.v self.x
pushi.e 4
add.i.v
pop.v.v self.x

:[5]
push.v self.mode
pushi.e 0
cmp.i.v EQ
bf [10]

:[6]
push.v self.timer
pushi.e 30
cmp.i.v GTE
bf [10]

:[7]
pushi.e 631
pushenv [9]

:[8]
pushi.e 5
pop.v.i self.wspeed

:[9]
popenv [8]
pushi.e 361
conv.i.v
pushi.e 480
conv.i.v
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.bul
pushi.e 1793
push.v self.bul
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushi.e -4
push.v self.bul
pushi.e -9
pop.v.i [stacktop]self.vspeed
pushi.e 1
push.v self.bul
pushi.e -9
pop.v.i [stacktop]self.active
pushi.e 1794
push.v self.bul
pushi.e -9
pop.v.i [stacktop]self.mask_index
pushi.e 3
conv.i.v
pushi.e -3
conv.i.v
call.i random_range(argc=2)
pop.v.v self.hspeed
pushi.e 0
pop.v.i self.timer

:[10]
push.v self.mode
pushi.e 1
cmp.i.v EQ
bf [21]

:[11]
push.v self.timer
pushi.e 14
cmp.i.v GTE
bf [21]

:[12]
pushi.e 631
pushenv [14]

:[13]
pushi.e 6
pop.v.i self.wspeed

:[14]
popenv [13]
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
call.i choose(argc=2)
pop.v.v self.triple
pushi.e 1
pop.v.i self.triple
push.v self.triple
pushi.e 1
cmp.i.v EQ
bf [18]

:[15]
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v
pushi.e -1
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
call.i choose(argc=3)
conv.v.i
push.v [array]self.bul
pushi.e -9
pushenv [17]

:[16]
call.i instance_destroy(argc=0)
popz.v

:[17]
popenv [16]

:[18]
push.v self.triple
pushi.e 0
cmp.i.v EQ
bf [20]

:[19]
pushi.e 361
conv.i.v
pushi.e 480
conv.i.v
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.bul
pushi.e 1792
push.v self.bul
pushi.e -9
pop.v.i [stacktop]self.sprite_index
push.v 872.x
pushi.e 15
conv.i.v
pushi.e -15
conv.i.v
call.i choose(argc=2)
add.v.v
push.v self.bul
pushi.e -9
pop.v.v [stacktop]self.x
push.d -0.1
push.v self.bul
pushi.e -9
pop.v.d [stacktop]self.gravity
pushi.e -4
push.v self.bul
pushi.e -9
pop.v.i [stacktop]self.vspeed
pushi.e 8
push.v self.bul
pushi.e -9
pop.v.i [stacktop]self.image_yscale
push.d 1.5
push.v self.bul
pushi.e -9
pop.v.d [stacktop]self.image_xscale
pushi.e 1
push.v self.bul
pushi.e -9
pop.v.i [stacktop]self.active

:[20]
pushi.e 4
conv.i.v
pushi.e -4
conv.i.v
call.i random_range(argc=2)
pop.v.v self.hspeed
pushi.e 0
pop.v.i self.timer

:[21]
push.v self.input_memorizer
pushi.e 1
cmp.i.v EQ
bf [31]

:[22]
pushi.e 631
pushenv [24]

:[23]
pushi.e 8
pop.v.i self.wspeed

:[24]
popenv [23]
pushi.e 0
pop.v.i self.timer
pushi.e 2
pop.v.i self.input_memorizer
pushi.e 0
pop.v.i self.framecount
push.i 171794
setowner.e
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.pressed
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.pressed
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 2
pop.v.v [array]self.pressed
push.i 171795
setowner.e
pushi.e 90
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.mybutton
pushi.e 88
conv.i.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.mybutton
pushi.e 67
conv.i.v
pushi.e -1
pushi.e 2
pop.v.v [array]self.mybutton
push.i 171796
setowner.e
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.remframecount
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.remframecount
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 2
pop.v.v [array]self.remframecount
pushi.e 0
pop.v.i self.i

:[25]
push.v self.i
pushi.e 3
cmp.i.v LT
bf [30]

:[26]
pushi.e 0
pop.v.i self.j

:[27]
push.v self.j
pushi.e 3
cmp.i.v LT
bf [29]

:[28]
push.i 170365
setowner.e
pushi.e -1
conv.i.v
pushi.e -1
push.v self.i
conv.v.i
push.v [arraypopaf]self.mybul
push.v self.j
conv.v.i
popaf.e
push.v self.j
push.e 1
add.i.v
pop.v.v self.j
b [27]

:[29]
push.v self.i
push.e 1
add.i.v
pop.v.v self.i
b [25]

:[30]
push.s "bulletpattern.txt"@26675
conv.s.v
call.i file_text_open_write(argc=1)
pop.v.v self.file

:[31]
push.v self.input_memorizer
pushi.e 2
cmp.i.v EQ
bf [63]

:[32]
push.v self.framecount
push.e 1
add.i.v
pop.v.v self.framecount
pushi.e 0
pop.v.i self.timer
pushi.e 32
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [34]

:[33]
push.v self.file
call.i file_text_close(argc=1)
popz.v

:[34]
pushi.e 0
pop.v.i self.makebullet
pushi.e 0
pop.v.i self.which
pushi.e 0
pop.v.i self.i

:[35]
push.v self.i
pushi.e 3
cmp.i.v LT
bf [63]

:[36]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.mybutton
call.i keyboard_check(argc=1)
conv.v.b
bf [38]

:[37]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.pressed
pushi.e 1
cmp.i.v EQ
b [39]

:[38]
push.e 0

:[39]
bf [47]

:[40]
pushi.e -1
push.v self.i
conv.v.i
push.v [arraypushaf]self.mybul
pushi.e 0
pushaf.e
pushi.e -9
pushenv [42]

:[41]
push.v self.image_yscale
push.d 0.5
add.d.v
pop.v.v self.image_yscale

:[42]
popenv [41]
pushi.e -1
push.v self.i
conv.v.i
push.v [arraypushaf]self.mybul
pushi.e 1
pushaf.e
pushi.e -9
pushenv [44]

:[43]
push.v self.image_yscale
push.d 0.5
add.d.v
pop.v.v self.image_yscale

:[44]
popenv [43]
pushi.e -1
push.v self.i
conv.v.i
push.v [arraypushaf]self.mybul
pushi.e 2
pushaf.e
pushi.e -9
pushenv [46]

:[45]
push.v self.image_yscale
push.d 0.5
add.d.v
pop.v.v self.image_yscale

:[46]
popenv [45]

:[47]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.mybutton
call.i keyboard_check(argc=1)
conv.v.b
bf [49]

:[48]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.pressed
pushi.e 0
cmp.i.v EQ
b [50]

:[49]
push.e 0

:[50]
bf [54]

:[51]
push.i 171796
setowner.e
push.v self.framecount
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.remframecount
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v
push.i 170365
setowner.e
pushi.e -1
pushi.e 0
push.v [array]self.bul
pushi.e -1
push.v self.i
conv.v.i
push.v [arraypopaf]self.mybul
pushi.e 0
popaf.e
pushi.e -1
pushi.e 1
push.v [array]self.bul
pushi.e -1
push.v self.i
conv.v.i
push.v [arraypopaf]self.mybul
pushi.e 1
popaf.e
pushi.e -1
pushi.e 2
push.v [array]self.bul
pushi.e -1
push.v self.i
conv.v.i
push.v [arraypopaf]self.mybul
pushi.e 2
popaf.e
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.bul
pushi.e -9
pushenv [53]

:[52]
call.i instance_destroy(argc=0)
popz.v

:[53]
popenv [52]
push.i 171794
setowner.e
pushi.e 1
conv.i.v
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.pressed

:[54]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.mybutton
call.i keyboard_check_released(argc=1)
conv.v.b
bf [62]

:[55]
pushi.e 1
pop.v.i self.finalheight
pushi.e -1
push.v self.i
conv.v.i
push.v [arraypushaf]self.mybul
pushi.e 0
pushaf.e
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [57]

:[56]
pushi.e -1
push.v self.i
conv.v.i
push.v [arraypushaf]self.mybul
pushi.e 0
pushaf.e
pushi.e -9
push.v [stacktop]self.image_yscale
pop.v.v self.finalheight

:[57]
pushi.e -1
push.v self.i
conv.v.i
push.v [arraypushaf]self.mybul
pushi.e 1
pushaf.e
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [59]

:[58]
pushi.e -1
push.v self.i
conv.v.i
push.v [arraypushaf]self.mybul
pushi.e 1
pushaf.e
pushi.e -9
push.v [stacktop]self.image_yscale
pop.v.v self.finalheight

:[59]
pushi.e -1
push.v self.i
conv.v.i
push.v [arraypushaf]self.mybul
pushi.e 2
pushaf.e
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [61]

:[60]
pushi.e -1
push.v self.i
conv.v.i
push.v [arraypushaf]self.mybul
pushi.e 2
pushaf.e
pushi.e -9
push.v [stacktop]self.image_yscale
pop.v.v self.finalheight

:[61]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.remframecount
push.v self.file
call.i file_text_write_real(argc=2)
popz.v
push.s ","@6157
conv.s.v
push.v self.file
call.i file_text_write_string(argc=2)
popz.v
push.v self.i
push.v self.file
call.i file_text_write_real(argc=2)
popz.v
push.s ","@6157
conv.s.v
push.v self.file
call.i file_text_write_string(argc=2)
popz.v
push.v self.finalheight
push.v self.file
call.i file_text_write_real(argc=2)
popz.v
push.v self.file
call.i file_text_writeln(argc=1)
popz.v
pushi.e 0
conv.i.v
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.pressed

:[62]
push.v self.i
push.e 1
add.i.v
pop.v.v self.i
b [35]

:[63]
push.v self.mode
pushi.e 3
cmp.i.v EQ
bf [end]

:[64]
push.v self.mframecount
push.v self.remframe
cmp.v.v GTE
bf [68]

:[65]
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v
push.i 133651
setowner.e
pushi.e -1
push.v self.bulletcount
conv.v.i
push.v [array]self.bullet_height
pushi.e -1
pushi.e 0
push.v [array]self.bul
pushi.e -9
pop.v.v [stacktop]self.image_yscale
pushi.e -1
push.v self.bulletcount
conv.v.i
push.v [array]self.bullet_height
pushi.e -1
pushi.e 1
push.v [array]self.bul
pushi.e -9
pop.v.v [stacktop]self.image_yscale
pushi.e -1
push.v self.bulletcount
conv.v.i
push.v [array]self.bullet_height
pushi.e -1
pushi.e 2
push.v [array]self.bul
pushi.e -9
pop.v.v [stacktop]self.image_yscale
pushi.e -1
pushi.e -1
push.v self.bulletcount
conv.v.i
push.v [array]self.bullet_pos
conv.v.i
push.v [array]self.bul
pushi.e -9
pushenv [67]

:[66]
call.i instance_destroy(argc=0)
popz.v

:[67]
popenv [66]
push.v self.bulletcount
push.e 1
add.i.v
pop.v.v self.bulletcount
pushi.e -1
push.v self.bulletcount
conv.v.i
push.v [array]self.bullet_frame
pop.v.v self.remframe

:[68]
push.v self.mframecount
push.e 1
add.i.v
pop.v.v self.mframecount
push.v self.bulletcount
push.v self.bulletmax
cmp.v.v GTE
bf [end]

:[69]
pushi.e 0
pop.v.i self.bulletcount
pushi.e 0
pop.v.i self.mframecount
pushi.e 15
pop.v.i self.remframe

:[end]