.localvar 2 arguments

:[0]
push.v self.chaincon
pushi.e 0
cmp.i.v EQ
bf [7]

:[1]
push.v self.chain_noise
pushi.e 0
cmp.i.v EQ
bf [3]

:[2]
pushi.e 1
pop.v.i self.chain_noise
pushi.e 402
conv.i.v
call.i gml_Script_snd_loop_ch1(argc=1)
pop.v.v self.chainsnd

:[3]
push.v self.sons
pushi.e 1
add.i.v
pop.v.v self.sons
push.i 175602
setowner.e
pushi.e 1570
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create_ch1(argc=3)
pushi.e -1
push.v self.sons
conv.v.i
pop.v.v [array]self.son
push.v self.x
push.v 1575.x
cmp.v.v LTE
bf [7]

:[4]
push.v self.chainsnd
call.i gml_Script_snd_stop_ch1(argc=1)
popz.v
pushi.e 377
conv.i.v
call.i gml_Script_snd_play_ch1(argc=1)
popz.v
pushi.e 447
conv.i.v
call.i gml_Script_snd_play_ch1(argc=1)
popz.v
pushi.e 0
pop.v.i self.speed
pushi.e 1
pop.v.i self.chaincon
pushi.e 12
pop.v.i self.shakeamt
push.v 1634.x
pop.v.v self.remx
push.v 1634.y
pop.v.v self.remy
push.v 1575.x
pop.v.v self.remx_box
push.v 1575.y
pop.v.v self.remy_box
push.d 2.1
pop.v.d self.chaincon
pushi.e 1632
pushenv [6]

:[5]
pushi.e 1
pop.v.i self.megakeep

:[6]
popenv [5]

:[7]
push.v self.chaincon
push.d 2.1
cmp.d.v EQ
bf [10]

:[8]
push.v self.remx
pop.v.v 1634.x
push.v self.remy
pop.v.v 1634.y
push.v self.remx_box
pop.v.v 1575.x
push.v self.remy_box
pop.v.v 1575.y
pushi.e 360
conv.i.v
call.i random(argc=1)
pop.v.v self.shakedir
push.v self.shakedir
push.v self.shakeamt
call.i lengthdir_x(argc=2)
pop.v.v self.xshake
push.v self.shakedir
push.v self.shakeamt
call.i lengthdir_y(argc=2)
pop.v.v self.yshake
push.v 1634.x
push.v self.xshake
add.v.v
pop.v.v 1634.x
push.v 1634.y
push.v self.yshake
add.v.v
pop.v.v 1634.y
push.v 1575.x
push.v self.xshake
add.v.v
pop.v.v 1575.x
push.v 1575.y
push.v self.yshake
add.v.v
pop.v.v 1575.y
push.v self.shakeamt
pushi.e 2
sub.i.v
pop.v.v self.shakeamt
push.v self.shakeamt
pushi.e 0
cmp.i.v LT
bf [10]

:[9]
pushi.e 3
pop.v.i self.chaincon

:[10]
push.v self.chaincon
pushi.e 3
cmp.i.v EQ
bf [33]

:[11]
push.v self.chain_noise
pushi.e 1
cmp.i.v EQ
bf [13]

:[12]
pushi.e 2
pop.v.i self.chain_noise
pushi.e 401
conv.i.v
call.i gml_Script_snd_loop_ch1(argc=1)
pop.v.v self.wavenoise

:[13]
push.v self.type
pushi.e 0
cmp.i.v EQ
bf [18]

:[14]
push.v self.siner
pushi.e 1
add.i.v
pop.v.v self.siner
push.v self.initkingy
push.v self.siner
pushi.e 12
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 80
mul.i.v
add.v.v
pop.v.v 1569.y
push.v self.btimer
pushi.e 1
add.i.v
pop.v.v self.btimer
push.v self.btimer
pushi.e 20
cmp.i.v GTE
bf [16]

:[15]
pushi.e 1524
conv.i.v
push.v self.initboxy
pushi.e 0
conv.i.v
push.l 0
conv.l.v
call.i gml_Script___view_get(argc=2)
pushi.e 20
sub.i.v
call.i gml_Script_instance_create_ch1(argc=3)
pop.v.v self.regbul
pushi.e 4051
push.v self.regbul
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushi.e 4
push.v self.regbul
pushi.e -9
pop.v.i [stacktop]self.hspeed
push.v self.regbul
call.i gml_Script_scr_bullet_inherit_ch1(argc=1)
popz.v
pushi.e 0
pop.v.i self.btimer

:[16]
push.v self.chain_noise
pushi.e 2
cmp.i.v EQ
bf [18]

:[17]
push.d 0.8
push.v self.siner
pushi.e 12
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 2
conv.i.d
div.d.v
sub.v.d
push.v self.wavenoise
call.i gml_Script_snd_pitch_ch1(argc=2)
popz.v

:[18]
push.v self.type
pushi.e 1
cmp.i.v EQ
bf [23]

:[19]
push.v self.siner
pushi.e 1
add.i.v
pop.v.v self.siner
push.v self.initkingy
push.v self.siner
pushi.e 10
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 80
mul.i.v
add.v.v
pop.v.v 1569.y
push.v self.btimer
pushi.e 1
add.i.v
pop.v.v self.btimer
push.v self.btimer
pushi.e 18
cmp.i.v GTE
bf [21]

:[20]
pushi.e 1524
conv.i.v
push.v self.initboxy
pushi.e 0
conv.i.v
push.l 0
conv.l.v
call.i gml_Script___view_get(argc=2)
pushi.e 20
sub.i.v
call.i gml_Script_instance_create_ch1(argc=3)
pop.v.v self.regbul
pushi.e 4051
push.v self.regbul
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushi.e 4
push.v self.regbul
pushi.e -9
pop.v.i [stacktop]self.hspeed
push.v self.regbul
call.i gml_Script_scr_bullet_inherit_ch1(argc=1)
popz.v
pushi.e 0
pop.v.i self.btimer

:[21]
push.v self.chain_noise
pushi.e 2
cmp.i.v EQ
bf [23]

:[22]
push.d 0.9
push.v self.siner
pushi.e 10
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 2
conv.i.d
div.d.v
sub.v.d
push.v self.wavenoise
call.i gml_Script_snd_pitch_ch1(argc=2)
popz.v

:[23]
push.v self.type
pushi.e 2
cmp.i.v EQ
bf [28]

:[24]
push.v self.siner
pushi.e 1
add.i.v
pop.v.v self.siner
push.v self.initkingy
push.v self.siner
pushi.e 9
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 80
mul.i.v
add.v.v
pop.v.v 1569.y
push.v self.btimer
pushi.e 1
add.i.v
pop.v.v self.btimer
push.v self.btimer
pushi.e 16
cmp.i.v GTE
bf [26]

:[25]
pushi.e 1524
conv.i.v
push.v self.initboxy
pushi.e 0
conv.i.v
push.l 0
conv.l.v
call.i gml_Script___view_get(argc=2)
pushi.e 20
sub.i.v
call.i gml_Script_instance_create_ch1(argc=3)
pop.v.v self.regbul
pushi.e 4051
push.v self.regbul
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushi.e 4
push.v self.regbul
pushi.e -9
pop.v.i [stacktop]self.hspeed
push.v self.regbul
call.i gml_Script_scr_bullet_inherit_ch1(argc=1)
popz.v
pushi.e 0
pop.v.i self.btimer

:[26]
push.v self.chain_noise
pushi.e 2
cmp.i.v EQ
bf [28]

:[27]
pushi.e 1
push.v self.siner
pushi.e 9
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 2
conv.i.d
div.d.v
sub.v.i
push.v self.wavenoise
call.i gml_Script_snd_pitch_ch1(argc=2)
popz.v

:[28]
push.v self.type
pushi.e 3
cmp.i.v EQ
bf [33]

:[29]
push.v self.siner
pushi.e 1
add.i.v
pop.v.v self.siner
push.v self.initkingy
push.v self.siner
pushi.e 7
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 80
mul.i.v
push.v self.wavefactor
mul.v.v
add.v.v
pop.v.v 1569.y
push.v self.btimer
pushi.e 1
add.i.v
pop.v.v self.btimer
push.v self.btimer
pushi.e 14
cmp.i.v GTE
bf [31]

:[30]
pushi.e 1524
conv.i.v
push.v self.initboxy
pushi.e 0
conv.i.v
push.l 0
conv.l.v
call.i gml_Script___view_get(argc=2)
pushi.e 20
sub.i.v
call.i gml_Script_instance_create_ch1(argc=3)
pop.v.v self.regbul
pushi.e 4051
push.v self.regbul
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushi.e 4
push.v self.regbul
pushi.e -9
pop.v.i [stacktop]self.hspeed
push.v self.regbul
call.i gml_Script_scr_bullet_inherit_ch1(argc=1)
popz.v
pushi.e 0
pop.v.i self.btimer

:[31]
push.v self.chain_noise
pushi.e 2
cmp.i.v EQ
bf [33]

:[32]
pushi.e 1
push.v self.siner
pushi.e 7
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 2
conv.i.d
div.d.v
sub.v.i
push.v self.wavenoise
call.i gml_Script_snd_pitch_ch1(argc=2)
popz.v

:[33]
pushi.e 1569
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [42]

:[34]
push.i 175594
setowner.e
push.v 1569.x
push.v self.initkingx
sub.v.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.kingx
push.i 175595
setowner.e
push.v 1569.y
push.v self.initkingy
sub.v.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.kingy
pushi.e 40
pop.v.i self.i

:[35]
push.v self.i
pushi.e 0
cmp.i.v GT
bf [37]

:[36]
push.i 175594
setowner.e
pushi.e -1
push.v self.i
pushi.e 1
sub.i.v
conv.v.i
push.v [array]self.kingx
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.kingx
push.i 175595
setowner.e
pushi.e -1
push.v self.i
pushi.e 1
sub.i.v
conv.v.i
push.v [array]self.kingy
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.kingy
push.v self.i
pushi.e 1
sub.i.v
pop.v.v self.i
b [35]

:[37]
pushi.e 0
pop.v.i self.i

:[38]
push.v self.i
push.v self.sons
cmp.v.v LTE
bf [40]

:[39]
push.i 133617
setowner.e
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.kingx
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.son
pushi.e -9
push.v [stacktop]self.xstart
add.v.v
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.son
pushi.e -9
pop.v.v [stacktop]self.x
push.i 133618
setowner.e
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.kingy
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.son
pushi.e -9
push.v [stacktop]self.ystart
add.v.v
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.son
pushi.e -9
pop.v.v [stacktop]self.y
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [38]

:[40]
push.v self.chaincon
pushi.e 3
cmp.i.v GTE
bf [42]

:[41]
pushi.e -1
push.v self.sons
conv.v.i
push.v [array]self.son
pushi.e -9
push.v [stacktop]self.x
pop.v.v self.x
pushi.e -1
push.v self.sons
conv.v.i
push.v [array]self.son
pushi.e -9
push.v [stacktop]self.y
pop.v.v self.y
pushi.e -1
push.v self.sons
conv.v.i
push.v [array]self.kingx
push.v self.initboxx
add.v.v
pop.v.v 1575.x
pushi.e -1
push.v self.sons
conv.v.i
push.v [array]self.kingy
push.v self.initboxy
add.v.v
pop.v.v 1575.y

:[42]
push.v self.t
pushi.e 1
add.i.v
pop.v.v self.t
push.v self.t
push.v self.tmax
pushi.e 10
sub.i.v
cmp.v.v GTE
bf [48]

:[43]
push.v self.wavefactor
push.d 0.8
mul.d.v
pop.v.v self.wavefactor
pushi.e 1570
pushenv [45]

:[44]
push.v self.image_alpha
push.d 0.1
sub.d.v
pop.v.v self.image_alpha

:[45]
popenv [44]
pushi.e 1524
pushenv [47]

:[46]
pushi.e 0
pop.v.i self.active
push.v self.image_alpha
push.d 0.1
sub.d.v
pop.v.v self.image_alpha

:[47]
popenv [46]

:[48]
push.v self.t
push.v self.tmax
cmp.v.v GTE
bf [end]

:[49]
push.v self.chain_noise
pushi.e 2
cmp.i.v EQ
bf [51]

:[50]
pushi.e 3
pop.v.i self.chain_noise
push.v self.wavenoise
call.i gml_Script_snd_stop_ch1(argc=1)
popz.v

:[51]
pushi.e 3
pop.v.i global.turntimer
pushi.e 1524
pushenv [53]

:[52]
call.i instance_destroy(argc=0)
popz.v

:[53]
popenv [52]
pushi.e 1569
pushenv [55]

:[54]
pushi.e 4010
pop.v.i self.sprite_index

:[55]
popenv [54]
pushi.e 1569
pushenv [57]

:[56]
call.i instance_destroy(argc=0)
popz.v

:[57]
popenv [56]
call.i instance_destroy(argc=0)
popz.v

:[end]