.localvar 2 arguments

:[0]
push.v self.chaincon
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
pushi.e 1
pop.v.i self.chaincon

:[2]
push.v self.chaincon
pushi.e 1
cmp.i.v EQ
bf [4]

:[3]
pushi.e 2
pop.v.i self.chaincon
pushi.e 0
pop.v.i self.chaintimer

:[4]
push.v self.chaincon
pushi.e 2
cmp.i.v EQ
bf [15]

:[5]
push.v self.direction
pop.v.v self.image_angle
push.v self.chaintimer
pushi.e 1
add.i.v
pop.v.v self.chaintimer
push.v self.chaintimer
push.v self.chainrate
cmp.v.v GTE
bf [7]

:[6]
push.i 175536
setowner.e
pushi.e 1570
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create_ch1(argc=3)
pushi.e -1
push.v self.chain_number
conv.v.i
pop.v.v [array]self.chain
push.i 133652
setowner.e
push.v self.image_angle
pushi.e -1
push.v self.chain_number
conv.v.i
push.v [array]self.chain
pushi.e -9
pop.v.v [stacktop]self.image_angle
push.v self.chain_max
pushi.e 1
add.i.v
pop.v.v self.chain_max
push.v self.chain_number
pushi.e 1
add.i.v
pop.v.v self.chain_number
pushi.e 0
pop.v.i self.chaintimer

:[7]
push.v self.path_position
pushi.e 1
cmp.i.v GTE
bf [9]

:[8]
pushi.e 0
pop.v.i self.path_speed
pushi.e 12
pop.v.i self.shakeamt
push.v 1634.x
pop.v.v self.remx
push.v 1634.y
pop.v.v self.remy
push.v 1632.x
pop.v.v self.remx_box
push.v 1632.y
pop.v.v self.remy_box
push.d 2.1
pop.v.d self.chaincon

:[9]
push.v self.type
pushi.e 88
cmp.i.v EQ
bf [15]

:[10]
push.v self.btimer
pushi.e 1
add.i.v
pop.v.v self.btimer
push.v self.btimer
pushi.e 2
cmp.i.v GTE
bf [12]

:[11]
push.v self.path_position
push.d 0.8
cmp.d.v LTE
b [13]

:[12]
push.e 0

:[13]
bf [15]

:[14]
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e -1
conv.i.v
call.i choose(argc=3)
pop.v.v self.cchoice
push.v self.image_angle
pushi.e 36
conv.i.v
call.i lengthdir_x(argc=2)
pop.v.v self.ychoice
push.v self.image_angle
pushi.e 36
conv.i.v
call.i lengthdir_y(argc=2)
pop.v.v self.xchoice
pushi.e 1522
conv.i.v
push.v self.y
push.v self.ychoice
push.v self.cchoice
mul.v.v
add.v.v
push.v self.x
push.v self.xchoice
push.v self.cchoice
mul.v.v
add.v.v
call.i gml_Script_instance_create_ch1(argc=3)
pop.v.v self.bul
pushi.e 1
push.v self.bul
pushi.e -9
pop.v.i [stacktop]self.active
pushi.e 4051
push.v self.bul
pushi.e -9
pop.v.i [stacktop]self.sprite_index
push.v self.image_angle
push.v self.bul
pushi.e -9
pop.v.v [stacktop]self.image_angle
pushi.e 0
pop.v.i self.btimer

:[15]
push.v self.chaincon
push.d 2.1
cmp.d.v EQ
bf [18]

:[16]
push.v self.remx
pop.v.v 1634.x
push.v self.remy
pop.v.v 1634.y
push.v self.remx_box
pop.v.v 1632.x
push.v self.remy_box
pop.v.v 1632.y
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
push.v 1632.x
push.v self.xshake
add.v.v
pop.v.v 1632.x
push.v 1632.y
push.v self.yshake
add.v.v
pop.v.v 1632.y
push.v self.shakeamt
pushi.e 2
sub.i.v
pop.v.v self.shakeamt
push.v self.shakeamt
pushi.e 0
cmp.i.v LT
bf [18]

:[17]
pushi.e 3
pop.v.i self.chaincon

:[18]
push.v self.chaincon
pushi.e 3
cmp.i.v EQ
bf [20]

:[19]
pushi.e 5
pop.v.i self.chaincon
pushi.e 1
pop.v.i self.smashtime
pushi.e 0
pop.v.i self.bullettimer

:[20]
push.v self.chaincon
pushi.e 5
cmp.i.v EQ
bf [23]

:[21]
push.v self.bullettimer
pushi.e 1
add.i.v
pop.v.v self.bullettimer
push.v self.bullettimer
pushi.e 30
cmp.i.v GTE
bf [23]

:[22]
pushi.e 6
pop.v.i self.chaincon

:[23]
push.v self.chaincon
pushi.e 6
cmp.i.v EQ
bf [33]

:[24]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.v self.maxspeed
push.v self.factor
div.v.v
push.v self.mypath2
call.i path_start(argc=4)
popz.v
pushi.e 1632
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [28]

:[25]
push.v self.maxspeed
pop.v.v 1632.maxspeed
push.v self.mypath2
pop.v.v 1632.mypath2
push.v self.factor
pop.v.v 1632.factor
pushi.e 1632
pushenv [27]

:[26]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.v self.maxspeed
push.v self.factor
div.v.v
push.v self.mypath2
call.i path_start(argc=4)
popz.v

:[27]
popenv [26]

:[28]
push.v self.chain_number
pushi.e 1
sub.i.v
pop.v.v self.chain_number
push.v self.chain_max
pushi.e 1
sub.i.v
pop.v.v self.chain_max
pushi.e 0
pop.v.i self.framerule
push.v self.chainrate
pushi.e 1
cmp.i.v EQ
bf [32]

:[29]
pushi.e -1
push.v self.chain_number
conv.v.i
push.v [array]self.chain
pushi.e -9
pushenv [31]

:[30]
call.i instance_destroy(argc=0)
popz.v

:[31]
popenv [30]
push.v self.chain_number
pushi.e 1
sub.i.v
pop.v.v self.chain_number
push.v self.chain_max
pushi.e 1
sub.i.v
pop.v.v self.chain_max

:[32]
pushi.e 10
pop.v.i self.chaincon

:[33]
push.v self.chaincon
pushi.e 10
cmp.i.v EQ
bf [45]

:[34]
push.v self.path_position
push.d 0.8
cmp.d.v GTE
bf [36]

:[35]
pushi.e 0
pop.v.i self.smashtime

:[36]
push.v self.framerule
pushi.e 1
cmp.i.v EQ
bf [38]

:[37]
push.v self.direction
pushi.e 180
add.i.v
pop.v.v self.image_angle

:[38]
pushi.e 1
pop.v.i self.framerule
push.v self.chaintimer
pushi.e 1
sub.i.v
pop.v.v self.chaintimer
push.v self.chaintimer
pushi.e 0
cmp.i.v LTE
bf [43]

:[39]
push.v self.chainrate
push.v self.factor
mul.v.v
pop.v.v self.chaintimer
push.v self.chain_number
pushi.e 0
cmp.i.v GTE
bf [43]

:[40]
pushi.e -1
push.v self.chain_number
conv.v.i
push.v [array]self.chain
pushi.e -9
pushenv [42]

:[41]
call.i instance_destroy(argc=0)
popz.v

:[42]
popenv [41]
push.v self.chain_number
pushi.e 1
sub.i.v
pop.v.v self.chain_number
push.v self.chain_max
pushi.e 1
sub.i.v
pop.v.v self.chain_max

:[43]
push.v self.path_position
pushi.e 1
cmp.i.v GTE
bf [45]

:[44]
pushi.e 11
pop.v.i self.chaincon

:[45]
push.v self.chaincon
pushi.e 11
cmp.i.v EQ
bf [46]

:[46]
push.v self.smashtime
pushi.e 1
cmp.i.v EQ
bf [end]

:[47]
push.v self.type
pushi.e 0
cmp.i.v EQ
bf [end]

:[48]
push.v self.btimer
pushi.e 1
add.i.v
pop.v.v self.btimer
push.v self.btimer
pushi.e 10
cmp.i.v EQ
bf [52]

:[49]
pushi.e 0
pop.v.i self.i

:[50]
push.v self.i
pushi.e 1
cmp.i.v LT
bf [52]

:[51]
pushi.e 1524
conv.i.v
pushi.e 0
conv.i.v
push.l 1
conv.l.v
call.i gml_Script___view_get(argc=2)
pushi.e 20
sub.i.v
pushi.e 0
conv.i.v
push.l 0
conv.l.v
call.i gml_Script___view_get(argc=2)
pushi.e 320
add.i.v
push.v self.i
pushi.e 120
mul.i.v
add.v.v
call.i gml_Script_instance_create_ch1(argc=3)
pop.v.v self.regbul
pushi.e 2
push.v self.regbul
pushi.e -9
pop.v.i [stacktop]self.vspeed
push.d 0.2
push.v self.regbul
pushi.e -9
pop.v.d [stacktop]self.gravity
pushi.e 4051
push.v self.regbul
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushi.e 270
push.v self.regbul
pushi.e -9
pop.v.i [stacktop]self.image_angle
push.v self.regbul
call.i gml_Script_scr_bullet_inherit_ch1(argc=1)
popz.v
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [50]

:[52]
push.v self.btimer
pushi.e 20
cmp.i.v GTE
bf [end]

:[53]
pushi.e 0
pop.v.i self.btimer
pushi.e 0
pop.v.i self.i

:[54]
push.v self.i
pushi.e 2
cmp.i.v LT
bf [end]

:[55]
pushi.e 1524
conv.i.v
pushi.e 0
conv.i.v
push.l 1
conv.l.v
call.i gml_Script___view_get(argc=2)
pushi.e 20
sub.i.v
pushi.e 0
conv.i.v
push.l 0
conv.l.v
call.i gml_Script___view_get(argc=2)
pushi.e 260
add.i.v
push.v self.i
pushi.e 120
mul.i.v
add.v.v
call.i gml_Script_instance_create_ch1(argc=3)
pop.v.v self.regbul
pushi.e 2
push.v self.regbul
pushi.e -9
pop.v.i [stacktop]self.vspeed
push.d 0.2
push.v self.regbul
pushi.e -9
pop.v.d [stacktop]self.gravity
pushi.e 4051
push.v self.regbul
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushi.e 270
push.v self.regbul
pushi.e -9
pop.v.i [stacktop]self.image_angle
push.v self.regbul
call.i gml_Script_scr_bullet_inherit_ch1(argc=1)
popz.v
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [54]

:[end]