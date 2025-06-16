.localvar 2 arguments

:[0]
push.v self.active
pushi.e 1
cmp.i.v EQ
bf [end]

:[1]
push.v self.drawkris
pushi.e 1
cmp.i.v EQ
bf [3]

:[2]
call.i draw_self(argc=0)
popz.v

:[3]
push.v self.ballcon
pushi.e 1
cmp.i.v EQ
bf [6]

:[4]
push.v self.xballtimer
push.v self.xballtimer
pushi.e 1
add.i.v
add.v.v
pop.v.v self.xballtimer
push.v self.yballtimer
push.e 1
add.i.v
pop.v.v self.yballtimer
push.v self.balltimer
push.e 1
add.i.v
pop.v.v self.balltimer
push.v self.x
pushi.e 18
add.i.v
pop.v.v self.cenx
push.v self.y
pushi.e 57
add.i.v
pop.v.v self.ceny
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 0
conv.b.v
push.v self.ceny
pushi.e 1
add.i.v
push.v self.cenx
push.v self.xballtimer
add.v.v
push.v self.ceny
pushi.e 1
sub.i.v
push.v self.cenx
push.v self.xballtimer
sub.v.v
call.i draw_ellipse(argc=5)
popz.v
push.v self.xballtimer
pushi.e 80
cmp.i.v GTE
bf [6]

:[5]
pushi.e 0
pop.v.i self.balltimer
pushi.e 1
pop.v.i self.yballtimer
pushi.e 2
pop.v.i self.ballcon
push.i 16777215
pop.v.i self.whitecolor

:[6]
push.v self.ballcon
pushi.e 2
cmp.i.v EQ
bf [39]

:[7]
push.v self.balltimer
push.e 1
add.i.v
pop.v.v self.balltimer
push.v self.balltimer
pushi.e 90
cmp.i.v GT
bf [9]

:[8]
push.v self.inverttimer
push.e 1
add.i.v
pop.v.v self.inverttimer

:[9]
push.v self.inverttimer
pushi.e 90
cmp.i.v GTE
bf [11]

:[10]
push.v self.releasetimer
push.e 1
add.i.v
pop.v.v self.releasetimer

:[11]
push.v self.inverttimer
pushi.e 0
cmp.i.v GTE
bf [13]

:[12]
push.v self.inverttimer
pushi.e 60
cmp.i.v LT
b [14]

:[13]
push.e 0

:[14]
bf [16]

:[15]
push.v self.inverttimer
pushi.e 60
conv.i.d
div.d.v
pushi.e 0
conv.i.v
push.i 16777215
conv.i.v
call.i merge_color(argc=3)
pop.v.v self.whitecolor

:[16]
push.v self.xballtimer
push.d 0.5
mul.d.v
pop.v.v self.xballtimer
push.v self.releasetimer
pushi.e 0
cmp.i.v LTE
bf [24]

:[17]
push.v self.xballtimer
pushi.e 20
cmp.i.v LTE
bf [19]

:[18]
pushi.e 20
pop.v.i self.xballtimer

:[19]
push.v self.xballtimer
push.v self.yballtimer
pushi.e 6
conv.i.d
div.d.v
cmp.v.v LT
bf [21]

:[20]
push.v self.yballtimer
pushi.e 6
conv.i.d
div.d.v
pop.v.v self.xballtimer

:[21]
push.v self.yballtimer
pushi.e 98
cmp.i.v GTE
bf [23]

:[22]
pushi.e 99
pushi.e 5
conv.i.v
call.i random(argc=1)
add.v.i
pop.v.v self.yballtimer

:[23]
push.v self.yballtimer
pushi.e 3
mul.i.v
pop.v.v self.yballtimer
b [28]

:[24]
push.v self.yballtimer
pushi.e 3
mul.i.v
pop.v.v self.yballtimer
pushi.e 1005
conv.i.v
push.v self.ceny
push.v self.cenx
call.i gml_Script_instance_create(argc=3)
popz.v
push.v self.releasetimer
pushi.e 1
cmp.i.v EQ
bf [26]

:[25]
pushi.e 64
pop.v.i self.con

:[26]
push.v self.releasetimer
pushi.e 10
cmp.i.v GTE
bf [28]

:[27]
pushi.e 3
pop.v.i self.ballcon
pushi.e 1
conv.i.v
pushi.e 50
conv.i.v
pushi.e 231
conv.i.v
call.i audio_play_sound(argc=3)
pop.v.v self.fountain_sound

:[28]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 0
conv.b.v
push.v self.ceny
pushi.e 1
add.i.v
push.v self.cenx
push.v self.xballtimer
add.v.v
pushi.e 2
add.i.v
push.v self.ceny
push.v self.yballtimer
sub.v.v
push.v self.cenx
push.v self.xballtimer
sub.v.v
pushi.e 2
sub.i.v
call.i draw_ellipse(argc=5)
popz.v
push.v self.whitecolor
call.i draw_set_color(argc=1)
popz.v
pushi.e 0
conv.b.v
push.v self.ceny
pushi.e 1
add.i.v
push.v self.cenx
push.v self.xballtimer
add.v.v
push.v self.ceny
push.v self.yballtimer
sub.v.v
push.v self.cenx
push.v self.xballtimer
sub.v.v
call.i draw_ellipse(argc=5)
popz.v
push.v self.releasetimer
pushi.e 0
cmp.i.v LTE
bf [33]

:[29]
push.v self.balltimer
pushi.e 6
cmp.i.v GTE
bf [31]

:[30]
push.d 0.3
pushi.e 1
conv.i.d
push.v self.balltimer
pushi.e 2
conv.i.d
div.d.v
pushi.e 1
add.i.v
div.v.d
sub.v.d
push.v self.image_blend
push.v self.image_angle
push.v self.image_yscale
push.v self.image_xscale
push.v self.y
push.v self.x
push.v self.image_index
push.v self.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v

:[31]
push.v self.inverttimer
pushi.e 1
cmp.i.v GTE
bf [33]

:[32]
pushi.e 1
pushi.e 30
conv.i.d
push.v self.inverttimer
div.v.d
sub.v.i
push.v self.image_blend
push.v self.image_angle
push.v self.image_yscale
push.v self.image_xscale
push.v self.y
push.v self.x
push.v self.image_index
pushi.e 485
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[33]
push.v self.releasetimer
pushi.e 0
cmp.i.v LTE
bf [36]

:[34]
push.v self.balltimer
pushi.e 5
mod.i.v
pushi.e 0
cmp.i.v EQ
bf [36]

:[35]
pushi.e 352
conv.i.v
push.v self.ceny
pushi.e 4
add.i.v
push.v self.cenx
pushi.e 4
sub.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.afterimage
pushi.e 480
push.v self.afterimage
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushi.e 0
push.v self.afterimage
pushi.e -9
pop.v.i [stacktop]self.image_speed
pushi.e 4
push.v self.afterimage
pushi.e -9
pop.v.i [stacktop]self.image_xscale
push.d 0.5
push.v self.afterimage
pushi.e -9
pop.v.d [stacktop]self.image_yxscale
push.d 0.8
push.v self.afterimage
pushi.e -9
pop.v.d [stacktop]self.image_alpha

:[36]
pushi.e 352
pushenv [38]

:[37]
push.v self.image_xscale
push.d 1.15
push.d 0.02
conv.d.v
call.i random(argc=1)
add.v.d
mul.v.v
pop.v.v self.image_xscale
push.v self.image_yscale
push.d 1.05
push.d 0.02
conv.d.v
call.i random(argc=1)
add.v.d
mul.v.v
pop.v.v self.image_yscale
push.v self.y
push.d 0.4
add.d.v
pop.v.v self.y
push.v self.x
push.d 0.4
sub.d.v
pop.v.v self.x

:[38]
popenv [37]

:[39]
push.v self.ballcon
pushi.e 3
cmp.i.v EQ
bf [end]

:[40]
pushi.e 1005
conv.i.v
push.v self.ceny
push.v self.cenx
call.i gml_Script_instance_create(argc=3)
popz.v
push.v self.ceiltimer
push.e 1
add.i.v
pop.v.v self.ceiltimer
push.v self.ceilheight
pushi.e 120
cmp.i.v LT
bf [42]

:[41]
push.v self.ceilheight
push.v self.ceiltimer
pushi.e 18
conv.i.d
div.d.v
call.i sin(argc=1)
push.d 0.3
add.d.v
add.v.v
pop.v.v self.ceilheight

:[42]
push.v self.ceilheight
pushi.e 120
cmp.i.v GTE
bf [44]

:[43]
push.v self.ceilheight
push.d 0.5
add.d.v
pop.v.v self.ceilheight

:[44]
pushi.e 0
pop.v.i self.i

:[45]
push.v self.i
pushi.e 12
cmp.i.v LT
bf [47]

:[46]
push.i 173812
setowner.e
push.v self.ceiltimer
push.v self.i
pushi.e 40
mul.i.v
add.v.v
pushi.e 400
mod.i.v
pushi.e -40
add.i.v
call.i gml_Script_camerax(argc=0)
add.v.v
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.ceilballx
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
push.d 1.05
conv.d.v
push.d 1.05
conv.d.v
push.v self.ceilheight
pushi.e 80
sub.i.v
push.v self.i
push.v self.ceiltimer
pushi.e 8
conv.i.d
div.d.v
add.v.v
call.i sin(argc=1)
pushi.e 7
mul.i.v
add.v.v
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.ceilballx
pushi.e 0
conv.i.v
pushi.e 482
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.i
push.e 1
add.i.v
pop.v.v self.i
b [45]

:[47]
pushi.e 0
pop.v.i self.i

:[48]
push.v self.i
pushi.e 12
cmp.i.v LT
bf [50]

:[49]
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v self.ceilheight
pushi.e 80
sub.i.v
push.v self.i
push.v self.ceiltimer
pushi.e 8
conv.i.d
div.d.v
add.v.v
call.i sin(argc=1)
pushi.e 7
mul.i.v
add.v.v
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.ceilballx
pushi.e 0
conv.i.v
pushi.e 482
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.i
push.e 1
add.i.v
pop.v.v self.i
b [48]

:[50]
pushi.e 0
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 0
conv.b.v
pushi.e -90
conv.i.v
pushi.e 999
conv.i.v
push.v self.ceilheight
pushi.e 80
sub.i.v
pushi.e -10
conv.i.v
call.i draw_rectangle(argc=5)
popz.v

:[end]