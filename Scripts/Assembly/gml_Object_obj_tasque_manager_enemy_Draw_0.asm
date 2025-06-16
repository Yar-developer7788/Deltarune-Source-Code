.localvar 2 arguments
.localvar 23793 mercy 10725
.localvar 23794 tailsprite 10726
.localvar 23795 handSprite 10727
.localvar 23796 whipSprite 10728
.localvar 23797 legSprite 10729
.localvar 23798 bodySprite 10730
.localvar 23799 headSprite 10731

:[0]
pushi.e 456
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [2]

:[1]
push.v 456.visible
pushi.e 1
cmp.b.v EQ
b [3]

:[2]
push.e 0

:[3]
bf [5]

:[4]
exit.i

:[5]
push.v self.state
pushi.e 3
cmp.i.v EQ
bf [7]

:[6]
call.i gml_Script_scr_enemy_drawhurt_generic(argc=0)
popz.v

:[7]
push.v self.state
pushi.e 0
cmp.i.v EQ
bf [29]

:[8]
push.v self.flash
pushi.e 1
cmp.i.v EQ
bf [10]

:[9]
push.v self.fsiner
push.e 1
add.i.v
pop.v.v self.fsiner

:[10]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.mercymod
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.mercymax
cmp.v.v GTE
pop.v.b local.mercy
push.v self.timer
push.d 1.5
add.d.v
pop.v.v self.timer
pushloc.v local.mercy
conv.v.b
bf [12]

:[11]
pushi.e -1
pushi.e 2
push.v [array]self.sparesprite
b [13]

:[12]
pushi.e -1
pushi.e 2
push.v [array]self.sprite

:[13]
pop.v.v local.tailsprite
push.v self.image_alpha
push.i 16777215
conv.i.v
push.v self.timer
pushi.e 6
conv.i.d
div.d.v
call.i sin(argc=1)
neg.v
pushi.e 10
mul.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.y
pushi.e -1
pushi.e 2
push.v [array]self.yOffset
add.v.v
push.v self.x
pushi.e -1
pushi.e 2
push.v [array]self.xOffset
add.v.v
pushi.e 0
conv.i.v
pushloc.v local.tailsprite
call.i gml_Script_draw_monster_body_part_ext(argc=9)
popz.v
pushloc.v local.mercy
conv.v.b
bf [15]

:[14]
pushi.e -1
pushi.e 4
push.v [array]self.sparesprite
b [16]

:[15]
pushi.e -1
pushi.e 4
push.v [array]self.sprite

:[16]
pop.v.v local.handSprite
push.v self.image_alpha
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.y
pushi.e -1
pushi.e 4
push.v [array]self.yOffset
add.v.v
push.v self.timer
pushi.e 6
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 2
mul.i.v
add.v.v
push.v self.x
pushi.e -1
pushi.e 4
push.v [array]self.xOffset
add.v.v
push.v self.timer
pushi.e 6
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 2
mul.i.v
add.v.v
pushi.e 0
conv.i.v
pushloc.v local.handSprite
call.i gml_Script_draw_monster_body_part_ext(argc=9)
popz.v
pushloc.v local.mercy
conv.v.b
bf [18]

:[17]
pushi.e -1
pushi.e 3
push.v [array]self.sparesprite
b [19]

:[18]
pushi.e -1
pushi.e 3
push.v [array]self.sprite

:[19]
pop.v.v local.whipSprite
push.v self.image_alpha
push.i 16777215
conv.i.v
push.v self.timer
pushi.e 6
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 15
mul.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.y
pushi.e -1
pushi.e 3
push.v [array]self.yOffset
add.v.v
push.v self.timer
pushi.e 6
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 2
mul.i.v
add.v.v
push.v self.x
pushi.e -1
pushi.e 3
push.v [array]self.xOffset
add.v.v
push.v self.timer
pushi.e 6
conv.i.d
div.d.v
call.i cos(argc=1)
pushi.e 2
mul.i.v
add.v.v
pushi.e 0
conv.i.v
pushloc.v local.whipSprite
call.i gml_Script_draw_monster_body_part_ext(argc=9)
popz.v
pushloc.v local.mercy
conv.v.b
bf [21]

:[20]
pushi.e -1
pushi.e 5
push.v [array]self.sparesprite
b [22]

:[21]
pushi.e -1
pushi.e 5
push.v [array]self.sprite

:[22]
pop.v.v local.legSprite
push.v self.image_alpha
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.y
pushi.e -1
pushi.e 5
push.v [array]self.yOffset
add.v.v
push.v self.x
pushi.e -1
pushi.e 5
push.v [array]self.xOffset
add.v.v
push.v self.timer
pushi.e 6
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 0
mul.i.v
add.v.v
pushi.e 0
conv.i.v
pushloc.v local.legSprite
call.i gml_Script_draw_monster_body_part_ext(argc=9)
popz.v
pushloc.v local.mercy
conv.v.b
bf [24]

:[23]
pushi.e -1
pushi.e 1
push.v [array]self.sparesprite
b [25]

:[24]
pushi.e -1
pushi.e 1
push.v [array]self.sprite

:[25]
pop.v.v local.bodySprite
push.v self.image_alpha
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.y
pushi.e -1
pushi.e 1
push.v [array]self.yOffset
add.v.v
push.v self.timer
pushi.e 6
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 2
mul.i.v
add.v.v
push.v self.x
pushi.e -1
pushi.e 1
push.v [array]self.xOffset
add.v.v
pushi.e 0
conv.i.v
pushloc.v local.bodySprite
call.i gml_Script_draw_monster_body_part_ext(argc=9)
popz.v
pushloc.v local.mercy
conv.v.b
bf [27]

:[26]
pushi.e -1
pushi.e 0
push.v [array]self.sparesprite
b [28]

:[27]
pushi.e -1
pushi.e 0
push.v [array]self.sprite

:[28]
pop.v.v local.headSprite
push.v self.image_alpha
push.i 16777215
conv.i.v
push.v self.timer
pushi.e 6
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 10
mul.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.y
pushi.e -1
pushi.e 0
push.v [array]self.yOffset
add.v.v
push.v self.timer
pushi.e 6
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 3
mul.i.v
add.v.v
push.v self.x
pushi.e -1
pushi.e 0
push.v [array]self.xOffset
add.v.v
pushi.e 0
conv.i.v
pushloc.v local.headSprite
call.i gml_Script_draw_monster_body_part_ext(argc=9)
popz.v

:[29]
push.v self.becomeflash
pushi.e 0
cmp.i.v EQ
bf [31]

:[30]
pushi.e 0
pop.v.i self.flash

:[31]
pushi.e 0
pop.v.i self.becomeflash

:[end]