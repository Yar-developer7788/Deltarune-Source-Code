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
bf [6]

:[4]
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
bf [6]

:[5]
pushi.e 4225
pop.v.i self.sprite_index
push.d 2.5
pop.v.d self.image_xscale
push.d 2.5
pop.v.d self.image_yscale

:[6]
push.v self.t
pushi.e 1
cmp.i.v GTE
bf [8]

:[7]
push.v self.explode
pushi.e 0
cmp.i.v EQ
b [9]

:[8]
push.e 0

:[9]
bf [18]

:[10]
push.v self.bolt_timer
pushi.e 1
add.i.v
pop.v.v self.bolt_timer
call.i gml_Script_button1_p_ch1(argc=0)
conv.v.b
bf [13]

:[11]
push.v self.bolt_timer
pushi.e 4
cmp.i.v GTE
bf [13]

:[12]
push.v self.chosen_bolt
pushi.e 0
cmp.i.v EQ
b [14]

:[13]
push.e 0

:[14]
bf [16]

:[15]
push.v self.bolt_timer
pop.v.v self.chosen_bolt

:[16]
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
bf [18]

:[17]
push.v self.chosen_bolt
pop.v.v self.final_bolt
pushi.e 0
pop.v.i self.visible
pushi.e 1
pop.v.i self.explode
pushi.e 1
pop.v.i self.t

:[18]
push.v self.explode
pushi.e 1
cmp.i.v EQ
bf [65]

:[19]
push.v self.t
pushi.e 1
cmp.i.v EQ
bf [52]

:[20]
pushi.e 0
pop.v.i self.bonus_anim
push.v self.chosen_bolt
pushi.e 0
cmp.i.v GT
bf [37]

:[21]
push.v self.chosen_bolt
push.v self.final_bolt
cmp.v.v EQ
bf [23]

:[22]
push.v self.damage
pushi.e 30
add.i.v
pop.v.v self.damage

:[23]
push.v self.chosen_bolt
push.v self.final_bolt
pushi.e 1
sub.i.v
cmp.v.v EQ
bf [25]

:[24]
push.v self.damage
pushi.e 28
add.i.v
pop.v.v self.damage

:[25]
push.v self.chosen_bolt
push.v self.final_bolt
pushi.e 2
sub.i.v
cmp.v.v EQ
bf [27]

:[26]
push.v self.damage
pushi.e 22
add.i.v
pop.v.v self.damage

:[27]
push.v self.chosen_bolt
push.v self.final_bolt
pushi.e 3
sub.i.v
cmp.v.v EQ
bf [29]

:[28]
push.v self.damage
pushi.e 20
add.i.v
pop.v.v self.damage

:[29]
push.v self.chosen_bolt
push.v self.final_bolt
pushi.e 4
sub.i.v
cmp.v.v EQ
bf [31]

:[30]
push.v self.damage
pushi.e 13
add.i.v
pop.v.v self.damage

:[31]
push.v self.chosen_bolt
push.v self.final_bolt
pushi.e 5
sub.i.v
cmp.v.v EQ
bf [33]

:[32]
push.v self.damage
pushi.e 11
add.i.v
pop.v.v self.damage

:[33]
push.v self.chosen_bolt
push.v self.final_bolt
pushi.e 6
sub.i.v
cmp.v.v EQ
bf [35]

:[34]
push.v self.damage
pushi.e 10
add.i.v
pop.v.v self.damage

:[35]
push.v self.chosen_bolt
push.v self.final_bolt
sub.v.v
call.i abs(argc=1)
pushi.e 2
cmp.i.v LTE
bf [37]

:[36]
pushi.e 1
pop.v.i self.bonus_anim
pushi.e 462
conv.i.v
call.i gml_Script_snd_play_ch1(argc=1)
popz.v

:[37]
push.v self.red
pushi.e 1
cmp.i.v EQ
bf [39]

:[38]
push.v self.damage
pushi.e 90
add.i.v
pop.v.v self.damage

:[39]
push.i 231593
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.star
conv.v.i
pop.v.v [array]self.hittarget
push.v self.damage
push.v self.star
call.i gml_Script_scr_damage_enemy_ch1(argc=2)
popz.v
pushi.e -5
pushi.e 0
push.v [array]self.monstertype
pushi.e 20
cmp.i.v NEQ
bf [46]

:[40]
push.v self.target
pushi.e -9
pushenv [42]

:[41]
call.i gml_Script_scr_oflash_ch1(argc=0)
pop.v.v self.__of

:[42]
popenv [41]
push.v self.red
pushi.e 1
cmp.i.v EQ
bf [46]

:[43]
push.v self.target
pushi.e -9
pushenv [45]

:[44]
pushi.e 255
push.v self.__of
pushi.e -9
pop.v.i [stacktop]self.flashcolor

:[45]
popenv [44]

:[46]
pushi.e 397
conv.i.v
call.i gml_Script_snd_play_ch1(argc=1)
popz.v
pushi.e 0
pop.v.i self.i

:[47]
push.v self.i
pushi.e 4
cmp.i.v LT
bf [49]

:[48]
push.i 169781
setowner.e
call.i gml_Script_scr_afterimage_ch1(argc=0)
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
b [47]

:[49]
pushi.e 4
pop.v.i self.i

:[50]
push.v self.i
pushi.e 8
cmp.i.v LT
bf [52]

:[51]
push.i 169781
setowner.e
call.i gml_Script_scr_afterimage_ch1(argc=0)
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
b [50]

:[52]
push.v self.t
pushi.e 2
cmp.i.v GTE
bf [63]

:[53]
pushi.e 0
pop.v.i self.i

:[54]
push.v self.i
pushi.e 4
cmp.i.v LT
bf [58]

:[55]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.burst
pushi.e -9
pushenv [57]

:[56]
push.v self.speed
push.d 0.75
mul.d.v
pop.v.v self.speed
push.v self.image_xscale
push.d 0.8
mul.d.v
pop.v.v self.image_xscale

:[57]
popenv [56]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [54]

:[58]
pushi.e 4
pop.v.i self.i

:[59]
push.v self.i
pushi.e 8
cmp.i.v LT
bf [63]

:[60]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.burst
pushi.e -9
pushenv [62]

:[61]
push.v self.speed
push.d 0.8
mul.d.v
pop.v.v self.speed
push.v self.image_xscale
push.d 0.8
mul.d.v
pop.v.v self.image_xscale

:[62]
popenv [61]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [59]

:[63]
push.v self.t
pushi.e 18
cmp.i.v GTE
bf [65]

:[64]
call.i instance_destroy(argc=0)
popz.v

:[65]
push.v self.explode
pushi.e 0
cmp.i.v EQ
bf [67]

:[66]
push.i 172435
setowner.e
call.i gml_Script_scr_afterimage_ch1(argc=0)
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

:[67]
pushi.e 0
pop.v.i self.i

:[68]
push.v self.i
push.v self.maxaft
cmp.v.v LT
bf [78]

:[69]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.aft
pushi.e -9
pushenv [72]

:[70]
push.v self.image_yscale
push.d 0.1
sub.d.v
pop.v.v self.image_yscale
push.v self.image_yscale
push.d 0.1
cmp.d.v LTE
bf [72]

:[71]
call.i instance_destroy(argc=0)
popz.v

:[72]
popenv [70]
push.v self.explode
pushi.e 1
cmp.i.v EQ
bf [77]

:[73]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.aft
pushi.e -9
pushenv [76]

:[74]
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
bf [76]

:[75]
call.i instance_destroy(argc=0)
popz.v

:[76]
popenv [74]

:[77]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [68]

:[78]
push.v self.a
pushi.e 1
add.i.v
pop.v.v self.a
push.v self.t
pushi.e 1
add.i.v
pop.v.v self.t

:[end]