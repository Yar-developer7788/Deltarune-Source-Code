.localvar 2 arguments

:[0]
push.v self.image_alpha
pushi.e 1
cmp.i.v LT
bf [2]

:[1]
push.v self.image_alpha
push.d 0.25
add.d.v
pop.v.v self.image_alpha
b [3]

:[2]
pushi.e 1
pop.v.i self.image_alpha

:[3]
push.v self.t
pushi.e 0
cmp.i.v EQ
bf [13]

:[4]
push.v self.battlemode
pushi.e 1
cmp.i.v EQ
bf [9]

:[5]
pushi.e 577
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [7]

:[6]
push.v 577.depth
pushi.e 1
sub.i.v
pop.v.v self.depth
push.v 577.x
pushi.e 24
add.i.v
pop.v.v self.targetx
push.v 577.y
pushi.e 140
add.i.v
pop.v.v self.targety
b [8]

:[7]
pushi.e -5
push.v self.target
pushi.e -9
push.v [stacktop]self.myself
conv.v.i
push.v [array]self.monsterx
pop.v.v self.targetx
pushi.e -5
push.v self.target
pushi.e -9
push.v [stacktop]self.myself
conv.v.i
push.v [array]self.monstery
pop.v.v self.targety

:[8]
b [11]

:[9]
push.v self.target
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [11]

:[10]
push.v self.target
pushi.e -9
push.v [stacktop]self.x
push.v self.target
pushi.e -9
push.v [stacktop]self.sprite_width
pushi.e 2
conv.i.d
div.d.v
add.v.v
pop.v.v self.targetx
push.v self.target
pushi.e -9
push.v [stacktop]self.y
push.v self.target
pushi.e -9
push.v [stacktop]self.sprite_height
pushi.e 2
conv.i.d
div.d.v
add.v.v
pop.v.v self.targety

:[11]
push.v self.targetx
pop.v.v self.cx
push.v self.targety
pop.v.v self.cy
push.v self.cy
push.v self.cx
push.v self.y
push.v self.x
call.i point_direction(argc=4)
pushi.e 20
sub.i.v
pop.v.v self.direction
pushi.e 24
pop.v.i self.speed
push.d -1.5
pop.v.d self.friction
push.v self.direction
pop.v.v self.image_angle
push.v self.red
pushi.e 1
cmp.i.v EQ
bf [13]

:[12]
pushi.e 2474
pop.v.i self.sprite_index
push.d 2.5
pop.v.d self.image_xscale
push.d 2.5
pop.v.d self.image_yscale

:[13]
push.v self.t
pushi.e 1
cmp.i.v GTE
bf [15]

:[14]
push.v self.explode
pushi.e 0
cmp.i.v EQ
b [16]

:[15]
push.e 0

:[16]
bf [25]

:[17]
push.v self.bolt_timer
pushi.e 1
add.i.v
pop.v.v self.bolt_timer
call.i gml_Script_button1_p(argc=0)
conv.v.b
bf [20]

:[18]
push.v self.bolt_timer
pushi.e 4
cmp.i.v GTE
bf [20]

:[19]
push.v self.chosen_bolt
pushi.e 0
cmp.i.v EQ
b [21]

:[20]
push.e 0

:[21]
bf [23]

:[22]
push.v self.bolt_timer
pop.v.v self.chosen_bolt

:[23]
push.v self.cy
push.v self.cx
push.v self.y
push.v self.x
call.i point_direction(argc=4)
pop.v.v self.dir
push.v self.direction
push.v self.direction
push.v self.dir
call.i angle_difference(argc=2)
pushi.e 4
conv.i.d
div.d.v
add.v.v
pop.v.v self.direction
push.v self.direction
pop.v.v self.image_angle
push.v self.cy
push.v self.cx
push.v self.y
push.v self.x
call.i point_distance(argc=4)
pushi.e 40
cmp.i.v LTE
bf [25]

:[24]
push.v self.chosen_bolt
pop.v.v self.final_bolt
pushi.e 0
pop.v.i self.visible
pushi.e 1
pop.v.i self.explode
pushi.e 1
pop.v.i self.t

:[25]
push.v self.explode
pushi.e 1
cmp.i.v EQ
bf [87]

:[26]
push.v self.t
pushi.e 1
cmp.i.v EQ
bf [74]

:[27]
pushi.e 0
pop.v.i self.bonus_anim
push.v self.chosen_bolt
pushi.e 0
cmp.i.v GT
bf [44]

:[28]
push.v self.chosen_bolt
push.v self.final_bolt
cmp.v.v EQ
bf [30]

:[29]
push.v self.damage
pushi.e 30
add.i.v
pop.v.v self.damage

:[30]
push.v self.chosen_bolt
push.v self.final_bolt
pushi.e 1
sub.i.v
cmp.v.v EQ
bf [32]

:[31]
push.v self.damage
pushi.e 28
add.i.v
pop.v.v self.damage

:[32]
push.v self.chosen_bolt
push.v self.final_bolt
pushi.e 2
sub.i.v
cmp.v.v EQ
bf [34]

:[33]
push.v self.damage
pushi.e 22
add.i.v
pop.v.v self.damage

:[34]
push.v self.chosen_bolt
push.v self.final_bolt
pushi.e 3
sub.i.v
cmp.v.v EQ
bf [36]

:[35]
push.v self.damage
pushi.e 20
add.i.v
pop.v.v self.damage

:[36]
push.v self.chosen_bolt
push.v self.final_bolt
pushi.e 4
sub.i.v
cmp.v.v EQ
bf [38]

:[37]
push.v self.damage
pushi.e 13
add.i.v
pop.v.v self.damage

:[38]
push.v self.chosen_bolt
push.v self.final_bolt
pushi.e 5
sub.i.v
cmp.v.v EQ
bf [40]

:[39]
push.v self.damage
pushi.e 11
add.i.v
pop.v.v self.damage

:[40]
push.v self.chosen_bolt
push.v self.final_bolt
pushi.e 6
sub.i.v
cmp.v.v EQ
bf [42]

:[41]
push.v self.damage
pushi.e 10
add.i.v
pop.v.v self.damage

:[42]
push.v self.chosen_bolt
push.v self.final_bolt
sub.v.v
call.i abs(argc=1)
pushi.e 2
cmp.i.v LTE
bf [44]

:[43]
pushi.e 1
pop.v.i self.bonus_anim
pushi.e 224
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v

:[44]
push.v self.red
pushi.e 1
cmp.i.v EQ
bf [46]

:[45]
push.v self.damage
pushi.e 90
add.i.v
pop.v.v self.damage

:[46]
push.v self.battlemode
pushi.e 1
cmp.i.v EQ
bf [62]

:[47]
push.i 231593
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.star
conv.v.i
pop.v.v [array]self.hittarget
pushi.e 577
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [53]

:[48]
push.v 574.shieldhp
push.v self.damage
sub.v.v
pop.v.v 574.shieldhp
pushi.e 577
pushenv [50]

:[49]
pushi.e 1
pop.v.i self.con

:[50]
popenv [49]
pushi.e 577
pushenv [52]

:[51]
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v

:[52]
popenv [51]
b [54]

:[53]
push.v self.damage
push.v self.star
call.i gml_Script_scr_damage_enemy(argc=2)
popz.v

:[54]
pushi.e -5
pushi.e 0
push.v [array]self.monstertype
pushi.e 20
cmp.i.v NEQ
bf [61]

:[55]
push.v self.target
pushi.e -9
pushenv [57]

:[56]
call.i gml_Script_scr_oflash(argc=0)
pop.v.v self.__of

:[57]
popenv [56]
push.v self.red
pushi.e 1
cmp.i.v EQ
bf [61]

:[58]
push.v self.target
pushi.e -9
pushenv [60]

:[59]
pushi.e 255
push.v self.__of
pushi.e -9
pop.v.i [stacktop]self.flashcolor

:[60]
popenv [59]

:[61]
b [68]

:[62]
push.v self.target
pushi.e -9
pushenv [64]

:[63]
call.i gml_Script_scr_oflash(argc=0)
pop.v.v self.__of

:[64]
popenv [63]
push.v self.red
pushi.e 1
cmp.i.v EQ
bf [68]

:[65]
push.v self.target
pushi.e -9
pushenv [67]

:[66]
pushi.e 255
push.v self.__of
pushi.e -9
pop.v.i [stacktop]self.flashcolor

:[67]
popenv [66]

:[68]
pushi.e 108
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
pushi.e 0
pop.v.i self.i

:[69]
push.v self.i
pushi.e 4
cmp.i.v LT
bf [71]

:[70]
push.i 169781
setowner.e
call.i gml_Script_scr_afterimage(argc=0)
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.burst
push.i 133655
setowner.e
push.d 0.5
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.burst
pushi.e -9
pop.v.d [stacktop]self.image_speed
push.i 133617
setowner.e
push.v self.cx
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.burst
pushi.e -9
pop.v.v [stacktop]self.x
push.i 133618
setowner.e
push.v self.cy
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.burst
pushi.e -9
pop.v.v [stacktop]self.y
push.i 133652
setowner.e
pushi.e 45
push.v self.i
pushi.e 90
mul.i.v
add.v.i
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.burst
pushi.e -9
pop.v.v [stacktop]self.image_angle
push.i 133625
setowner.e
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.burst
pushi.e -9
push.v [stacktop]self.image_angle
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.burst
pushi.e -9
pop.v.v [stacktop]self.direction
push.i 133626
setowner.e
pushi.e 25
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.burst
pushi.e -9
pop.v.i [stacktop]self.speed
push.i 133637
setowner.e
push.v self.depth
pushi.e 10
sub.i.v
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.burst
pushi.e -9
pop.v.v [stacktop]self.depth
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [69]

:[71]
pushi.e 4
pop.v.i self.i

:[72]
push.v self.i
pushi.e 8
cmp.i.v LT
bf [74]

:[73]
push.i 169781
setowner.e
call.i gml_Script_scr_afterimage(argc=0)
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.burst
push.i 133655
setowner.e
push.d 0.5
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.burst
pushi.e -9
pop.v.d [stacktop]self.image_speed
push.i 133617
setowner.e
push.v self.cx
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.burst
pushi.e -9
pop.v.v [stacktop]self.x
push.i 133618
setowner.e
push.v self.cy
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.burst
pushi.e -9
pop.v.v [stacktop]self.y
push.i 133652
setowner.e
pushi.e 45
push.v self.i
pushi.e 90
mul.i.v
add.v.i
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.burst
pushi.e -9
pop.v.v [stacktop]self.image_angle
push.i 133625
setowner.e
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.burst
pushi.e -9
push.v [stacktop]self.image_angle
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.burst
pushi.e -9
pop.v.v [stacktop]self.direction
push.i 133626
setowner.e
pushi.e 25
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.burst
pushi.e -9
pop.v.i [stacktop]self.speed
push.i 133637
setowner.e
push.v self.depth
pushi.e 10
sub.i.v
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.burst
pushi.e -9
pop.v.v [stacktop]self.depth
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [72]

:[74]
push.v self.t
pushi.e 2
cmp.i.v GTE
bf [85]

:[75]
pushi.e 0
pop.v.i self.i

:[76]
push.v self.i
pushi.e 4
cmp.i.v LT
bf [80]

:[77]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.burst
pushi.e -9
pushenv [79]

:[78]
push.v self.speed
push.d 0.75
mul.d.v
pop.v.v self.speed
push.v self.image_xscale
push.d 0.8
mul.d.v
pop.v.v self.image_xscale

:[79]
popenv [78]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [76]

:[80]
pushi.e 4
pop.v.i self.i

:[81]
push.v self.i
pushi.e 8
cmp.i.v LT
bf [85]

:[82]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.burst
pushi.e -9
pushenv [84]

:[83]
push.v self.speed
push.d 0.8
mul.d.v
pop.v.v self.speed
push.v self.image_xscale
push.d 0.8
mul.d.v
pop.v.v self.image_xscale

:[84]
popenv [83]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [81]

:[85]
push.v self.t
pushi.e 18
cmp.i.v GTE
bf [87]

:[86]
call.i instance_destroy(argc=0)
popz.v

:[87]
push.v self.explode
pushi.e 0
cmp.i.v EQ
bf [89]

:[88]
push.i 172435
setowner.e
call.i gml_Script_scr_afterimage(argc=0)
pushi.e -1
push.v self.maxaft
conv.v.i
pop.v.v [array]self.aft
push.i 133651
setowner.e
push.d 1.8
pushi.e -1
push.v self.maxaft
conv.v.i
push.v [array]self.aft
pushi.e -9
pop.v.d [stacktop]self.image_yscale
push.i 133652
setowner.e
push.v self.image_angle
pushi.e -1
push.v self.maxaft
conv.v.i
push.v [array]self.aft
pushi.e -9
pop.v.v [stacktop]self.image_angle
push.i 133643
setowner.e
pushi.e 4
pushi.e -1
push.v self.maxaft
conv.v.i
push.v [array]self.aft
pushi.e -9
pop.v.i [stacktop]self.image_index
push.i 133655
setowner.e
push.d 0.5
pushi.e -1
push.v self.maxaft
conv.v.i
push.v [array]self.aft
pushi.e -9
pop.v.d [stacktop]self.image_speed
push.i 133653
setowner.e
push.v self.image_alpha
push.d 0.2
sub.d.v
pushi.e -1
push.v self.maxaft
conv.v.i
push.v [array]self.aft
pushi.e -9
pop.v.v [stacktop]self.image_alpha
push.v self.maxaft
pushi.e 1
add.i.v
pop.v.v self.maxaft

:[89]
pushi.e 0
pop.v.i self.i

:[90]
push.v self.i
push.v self.maxaft
cmp.v.v LT
bf [100]

:[91]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.aft
pushi.e -9
pushenv [94]

:[92]
push.v self.image_yscale
push.d 0.1
sub.d.v
pop.v.v self.image_yscale
push.v self.image_yscale
push.d 0.1
cmp.d.v LTE
bf [94]

:[93]
call.i instance_destroy(argc=0)
popz.v

:[94]
popenv [92]
push.v self.explode
pushi.e 1
cmp.i.v EQ
bf [99]

:[95]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.aft
pushi.e -9
pushenv [98]

:[96]
push.v self.image_alpha
push.d 0.07
sub.d.v
pop.v.v self.image_alpha
push.v self.image_yscale
push.d 0.9
mul.d.v
pop.v.v self.image_yscale
push.v self.image_yscale
push.d 0.1
cmp.d.v LTE
bf [98]

:[97]
call.i instance_destroy(argc=0)
popz.v

:[98]
popenv [96]

:[99]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [90]

:[100]
push.v self.a
pushi.e 1
add.i.v
pop.v.v self.a
push.v self.t
pushi.e 1
add.i.v
pop.v.v self.t

:[end]