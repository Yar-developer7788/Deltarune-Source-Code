.localvar 2 arguments
.localvar 14240 xoffset 13601
.localvar 14241 yoffset 13602

:[0]
push.v self.hurtstate2
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.y
push.v self.x
pushi.e 0
conv.i.v
pushi.e 1772
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
exit.i

:[2]
push.v self.state
pushi.e 3
cmp.i.v EQ
bf [4]

:[3]
call.i gml_Script_scr_enemy_drawhurt_generic(argc=0)
popz.v

:[4]
push.v self.state
pushi.e 0
cmp.i.v EQ
bf [25]

:[5]
push.v self.dancing
pushi.e 1
cmp.i.v EQ
bf [16]

:[6]
push.v self.flash
pushi.e 1
cmp.i.v EQ
bf [8]

:[7]
push.v self.fsiner
push.e 1
add.i.v
pop.v.v self.fsiner

:[8]
push.v self.updatetimer
push.e 1
add.i.v
pop.v.v self.updatetimer
push.v self.updatetimer
pushi.e 2
cmp.i.v GTE
bf [10]

:[9]
push.v self.siner
pushi.e 2
add.i.v
pop.v.v self.siner
pushi.e 0
pop.v.i self.updatetimer

:[10]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.y
push.v self.siner
pushi.e 4
conv.i.d
div.d.v
call.i cos(argc=1)
call.i abs(argc=1)
pushi.e 4
mul.i.v
add.v.v
pushi.e 4
sub.i.v
push.v self.x
push.v self.siner
pushi.e 4
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 14
mul.i.v
add.v.v
push.v self.dance_index
pushi.e 1774
conv.i.v
call.i gml_Script_draw_monster_body_part_ext(argc=9)
popz.v
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.y
push.v self.siner
pushi.e 2
conv.i.d
div.d.v
call.i cos(argc=1)
pushi.e 3
mul.i.v
add.v.v
push.v self.x
push.v self.siner
pushi.e 4
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 8
mul.i.v
sub.v.v
pushi.e 3
conv.i.v
pushi.e 1774
conv.i.v
call.i gml_Script_draw_monster_body_part_ext(argc=9)
popz.v
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.y
push.v self.siner
pushi.e 2
conv.i.d
div.d.v
call.i cos(argc=1)
pushi.e 4
mul.i.v
add.v.v
push.v self.x
push.v self.siner
pushi.e 3
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 3
mul.i.v
add.v.v
pushi.e 2
conv.i.v
pushi.e 1774
conv.i.v
call.i gml_Script_draw_monster_body_part_ext(argc=9)
popz.v
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.y
push.v self.siner
pushi.e 2
conv.i.d
div.d.v
call.i cos(argc=1)
pushi.e 6
mul.i.v
add.v.v
push.v self.x
push.v self.siner
pushi.e 2
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 2
mul.i.v
add.v.v
pushi.e 1
conv.i.v
pushi.e 1774
conv.i.v
call.i gml_Script_draw_monster_body_part_ext(argc=9)
popz.v
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.y
push.v self.siner
pushi.e 2
conv.i.d
div.d.v
call.i cos(argc=1)
pushi.e 6
mul.i.v
add.v.v
push.v self.x
push.v self.siner
pushi.e 2
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 2
mul.i.v
add.v.v
push.v self.siner
pushi.e 4
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 4
mul.i.v
add.v.v
pushi.e 6
conv.i.v
pushi.e 1774
conv.i.v
call.i gml_Script_draw_monster_body_part_ext(argc=9)
popz.v
push.v self.dancetimer
push.e 1
add.i.v
pop.v.v self.dancetimer
push.v self.siner
pushi.e 4
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 0
cmp.i.v GT
bf [12]

:[11]
pushi.e 4
pop.v.i self.dance_index
b [13]

:[12]
pushi.e 5
pop.v.i self.dance_index

:[13]
push.v self.musicalnotetimer
push.e 1
add.i.v
pop.v.v self.musicalnotetimer
push.v self.musicalnotetimer
pushi.e 14
cmp.i.v EQ
bf [15]

:[14]
pushi.e 0
pop.v.i self.musicalnotetimer
pushi.e 352
conv.i.v
push.v self.y
pushi.e 20
add.i.v
push.v self.x
push.v self.sprite_width
pushi.e 2
conv.i.d
div.d.v
add.v.v
pushi.e 10
sub.i.v
pushi.e 40
conv.i.v
call.i random(argc=1)
add.v.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.anim
pushi.e 2625
push.v self.anim
pushi.e -9
pop.v.i [stacktop]self.sprite_index
push.v self.depth
pushi.e 5
sub.i.v
push.v self.anim
pushi.e -9
pop.v.v [stacktop]self.depth
pushi.e 2
push.v self.anim
pushi.e -9
pop.v.i [stacktop]self.image_xscale
pushi.e 2
push.v self.anim
pushi.e -9
pop.v.i [stacktop]self.image_yscale
pushi.e 270
push.v self.anim
pushi.e -9
pop.v.i [stacktop]self.direction
push.d -0.2
push.v self.anim
pushi.e -9
pop.v.d [stacktop]self.gravity
push.d 0.8
conv.d.v
push.d 0.1
conv.d.v
call.i random_range(argc=2)
pushi.e -1
conv.i.v
pushi.e 1
conv.i.v
call.i choose(argc=2)
mul.v.v
push.v self.anim
pushi.e -9
pop.v.v [stacktop]self.hspeed

:[15]
b [25]

:[16]
push.v self.flash
pushi.e 1
cmp.i.v EQ
bf [18]

:[17]
push.v self.fsiner
push.e 1
add.i.v
pop.v.v self.fsiner

:[18]
push.v self.timer
pushi.e 2
add.i.v
pop.v.v self.timer
push.v self.timer
pushi.e 8
cmp.i.v GT
bf [20]

:[19]
push.v self.timerB
pushi.e 1
add.i.v
pop.v.v self.timerB
pushi.e 0
pop.v.i self.timer

:[20]
push.v self.timerB
call.i cos(argc=1)
push.d 0.8
cmp.d.v GT
bf [22]

:[21]
pushi.e 1
pop.v.i self.down

:[22]
push.v self.timerB
call.i cos(argc=1)
push.d -0.8
cmp.d.v LT
bf [24]

:[23]
pushi.e 0
pop.v.i self.down

:[24]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.y
push.v self.x
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 0
push.v [array]self.sprite
call.i gml_Script_draw_monster_body_part_ext(argc=9)
popz.v
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.y
push.v self.timerB
call.i cos(argc=1)
pushi.e 2
mul.i.v
add.v.v
push.v self.x
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 1
push.v [array]self.sprite
call.i gml_Script_draw_monster_body_part_ext(argc=9)
popz.v
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.y
push.v self.timerB
call.i cos(argc=1)
pushi.e 2
mul.i.v
add.v.v
push.v self.x
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 2
push.v [array]self.sprite
call.i gml_Script_draw_monster_body_part_ext(argc=9)
popz.v
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.y
push.v self.x
push.v self.down
pushi.e -1
pushi.e 3
push.v [array]self.sprite
call.i gml_Script_draw_monster_body_part_ext(argc=9)
popz.v
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.y
push.v self.timerB
call.i cos(argc=1)
pushi.e 2
mul.i.v
add.v.v
push.v self.x
push.v self.down
pushi.e -1
pushi.e 5
push.v [array]self.sprite
call.i gml_Script_draw_monster_body_part_ext(argc=9)
popz.v
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.y
push.v self.timerB
call.i cos(argc=1)
pushi.e 2
mul.i.v
add.v.v
push.v self.x
push.v self.timerB
call.i sin(argc=1)
neg.v
pushi.e 4
mul.i.v
add.v.v
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 6
push.v [array]self.sprite
call.i gml_Script_draw_monster_body_part_ext(argc=9)
popz.v
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.y
push.v self.timerB
call.i cos(argc=1)
pushi.e 2
mul.i.v
add.v.v
push.v self.x
push.v self.timerB
call.i sin(argc=1)
neg.v
pushi.e 4
mul.i.v
add.v.v
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 7
push.v [array]self.sprite
call.i gml_Script_draw_monster_body_part_ext(argc=9)
popz.v
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.y
push.v self.timerB
call.i cos(argc=1)
add.v.v
push.v self.x
push.v self.timerB
call.i sin(argc=1)
neg.v
pushi.e 2
mul.i.v
add.v.v
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 8
push.v [array]self.sprite
call.i gml_Script_draw_monster_body_part_ext(argc=9)
popz.v
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.y
push.v self.timerB
pushi.e 2
mul.i.v
call.i cos(argc=1)
pushi.e 2
mul.i.v
add.v.v
push.v self.x
push.v self.timerB
push.d 1.2
mul.d.v
call.i sin(argc=1)
neg.v
pushi.e 6
mul.i.v
add.v.v
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 9
push.v [array]self.sprite
call.i gml_Script_draw_monster_body_part_ext(argc=9)
popz.v

:[25]
push.v self.becomeflash
pushi.e 0
cmp.i.v EQ
bf [27]

:[26]
pushi.e 0
pop.v.i self.flash

:[27]
pushi.e 0
pop.v.i self.becomeflash
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushglb.v global.bmenuno
pushi.e 1
cmp.i.v EQ
bt [32]

:[28]
pushglb.v global.bmenuno
pushi.e 3
cmp.i.v EQ
bt [32]

:[29]
pushglb.v global.bmenuno
pushi.e 11
cmp.i.v EQ
bt [32]

:[30]
pushglb.v global.bmenuno
pushi.e 12
cmp.i.v EQ
bt [32]

:[31]
pushglb.v global.bmenuno
pushi.e 13
cmp.i.v EQ
b [33]

:[32]
push.e 1

:[33]
bf [end]

:[34]
push.v self.siner2
push.e 1
add.i.v
pop.v.v self.siner2
pushi.e 0
pop.v.i local.xoffset
pushi.e 0
pop.v.i local.yoffset
pushglb.v global.charturn
pushi.e 0
cmp.i.v GT
bf [36]

:[35]
pushglb.v global.bmenuno
pushi.e 13
cmp.i.v EQ
b [37]

:[36]
push.e 0

:[37]
bf [39]

:[38]
pushi.e 140
pop.v.i local.xoffset
pushi.e 6
pop.v.i local.yoffset

:[39]
pushglb.v global.myfight
pushi.e 0
cmp.i.v EQ
bf [end]

:[40]
push.s "mainbig"@6175
conv.s.v
call.i gml_Script_scr_84_set_draw_font(argc=1)
popz.v
push.v self.danceCounter
pushi.e 1
cmp.i.v EQ
bf [42]

:[41]
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
push.d 0.7
conv.d.v
pushi.e 9999
conv.i.v
pushi.e 9999
conv.i.v
push.s "obj_kk_enemy_slash_Draw_0_gml_106_0"@26569
conv.s.v
push.s "Dancing!"@26467
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e 0
conv.i.v
push.l 1
conv.l.v
call.i gml_Script___view_get(argc=2)
pushi.e 369
add.i.v
pushloc.v local.yoffset
add.v.v
pushi.e 30
add.i.v
pushi.e 0
conv.i.v
push.l 0
conv.l.v
call.i gml_Script___view_get(argc=2)
pushi.e 258
add.i.v
pushloc.v local.xoffset
add.v.v
call.i draw_text_ext_transformed(argc=8)
popz.v
pushi.e 0
conv.i.v
push.l 1
conv.l.v
call.i gml_Script___view_get(argc=2)
pushi.e 386
add.i.v
pushloc.v local.yoffset
add.v.v
pushi.e 30
add.i.v
pushi.e 0
conv.i.v
push.l 0
conv.l.v
call.i gml_Script___view_get(argc=2)
pushi.e 228
add.i.v
pushloc.v local.xoffset
add.v.v
push.v self.siner2
pushi.e 4
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 3
mul.i.v
add.v.v
pushi.e 0
conv.i.v
pushi.e 1788
conv.i.v
call.i draw_sprite(argc=4)
popz.v
b [end]

:[42]
push.v self.danceCounter
pushi.e 2
cmp.i.v EQ
bf [44]

:[43]
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
push.d 0.7
conv.d.v
pushi.e 9999
conv.i.v
pushi.e 9999
conv.i.v
push.s "obj_kk_enemy_slash_Draw_0_gml_111_0"@26570
conv.s.v
push.s "2 Turns!"@26469
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e 0
conv.i.v
push.l 1
conv.l.v
call.i gml_Script___view_get(argc=2)
pushi.e 369
add.i.v
pushloc.v local.yoffset
add.v.v
pushi.e 30
add.i.v
pushi.e 0
conv.i.v
push.l 0
conv.l.v
call.i gml_Script___view_get(argc=2)
pushi.e 258
add.i.v
call.i draw_text_ext_transformed(argc=8)
popz.v
pushi.e 0
conv.i.v
push.l 1
conv.l.v
call.i gml_Script___view_get(argc=2)
pushi.e 386
add.i.v
pushloc.v local.yoffset
add.v.v
pushi.e 30
add.i.v
pushi.e 0
conv.i.v
push.l 0
conv.l.v
call.i gml_Script___view_get(argc=2)
pushi.e 228
add.i.v
pushloc.v local.xoffset
add.v.v
push.v self.siner2
push.d 0.8
div.d.v
call.i sin(argc=1)
pushi.e 3
mul.i.v
add.v.v
pushi.e 0
conv.i.v
pushi.e 1788
conv.i.v
call.i draw_sprite(argc=4)
popz.v
b [end]

:[44]
push.s "obj_kk_enemy_slash_Draw_0_gml_116_0"@26571
conv.s.v
push.s "Not Dancing"@26471
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e 0
conv.i.v
push.l 1
conv.l.v
call.i gml_Script___view_get(argc=2)
pushi.e 369
add.i.v
pushloc.v local.yoffset
add.v.v
pushi.e 30
add.i.v
pushi.e 0
conv.i.v
push.l 0
conv.l.v
call.i gml_Script___view_get(argc=2)
pushi.e 258
add.i.v
pushloc.v local.xoffset
add.v.v
call.i draw_text(argc=3)
popz.v
pushi.e 0
conv.i.v
push.l 1
conv.l.v
call.i gml_Script___view_get(argc=2)
pushi.e 386
add.i.v
pushloc.v local.yoffset
add.v.v
pushi.e 30
add.i.v
pushi.e 0
conv.i.v
push.l 0
conv.l.v
call.i gml_Script___view_get(argc=2)
pushi.e 228
add.i.v
pushloc.v local.xoffset
add.v.v
push.v self.siner2
pushi.e 10
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 3
mul.i.v
add.v.v
pushi.e 0
conv.i.v
pushi.e 1789
conv.i.v
call.i draw_sprite(argc=4)
popz.v

:[end]