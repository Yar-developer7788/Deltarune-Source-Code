.localvar 2 arguments
.localvar 14240 xoffset 13581
.localvar 14241 yoffset 13582

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
pushi.e 1757
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
bf [10]

:[5]
push.v self.dancing
conv.v.b
bf [9]

:[6]
push.v self.siner
push.d 0.16666666666666666
add.d.v
pop.v.v self.siner
push.v self.y
push.v self.x
push.v self.siner
pushi.e 1757
conv.i.v
call.i gml_Script_draw_monster_body_part(argc=4)
popz.v
push.v self.musicalnotetimer
push.e 1
add.i.v
pop.v.v self.musicalnotetimer
push.v self.musicalnotetimer
pushi.e 14
cmp.i.v EQ
bf [8]

:[7]
pushi.e 0
pop.v.i self.musicalnotetimer
pushi.e 352
conv.i.v
push.v self.y
push.v self.x
push.v self.sprite_width
pushi.e 2
conv.i.d
div.d.v
add.v.v
pushi.e 20
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

:[8]
b [10]

:[9]
push.d 0.16666666666666666
conv.d.v
call.i gml_Script_scr_enemy_drawidle_generic(argc=1)
popz.v

:[10]
push.v self.becomeflash
pushi.e 0
cmp.i.v EQ
bf [12]

:[11]
pushi.e 0
pop.v.i self.flash

:[12]
pushi.e 0
pop.v.i self.becomeflash
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushglb.v global.bmenuno
pushi.e 1
cmp.i.v EQ
bt [17]

:[13]
pushglb.v global.bmenuno
pushi.e 3
cmp.i.v EQ
bt [17]

:[14]
pushglb.v global.bmenuno
pushi.e 11
cmp.i.v EQ
bt [17]

:[15]
pushglb.v global.bmenuno
pushi.e 12
cmp.i.v EQ
bt [17]

:[16]
pushglb.v global.bmenuno
pushi.e 13
cmp.i.v EQ
b [18]

:[17]
push.e 1

:[18]
bf [end]

:[19]
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
bf [21]

:[20]
pushglb.v global.bmenuno
pushi.e 13
cmp.i.v EQ
b [22]

:[21]
push.e 0

:[22]
bf [24]

:[23]
pushi.e 140
pop.v.i local.xoffset
pushi.e 6
pop.v.i local.yoffset

:[24]
pushglb.v global.myfight
pushi.e 0
cmp.i.v EQ
bf [end]

:[25]
push.s "mainbig"@6175
conv.s.v
call.i gml_Script_scr_84_set_draw_font(argc=1)
popz.v
push.v self.danceCounter
pushi.e 1
cmp.i.v EQ
bf [27]

:[26]
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
push.s "obj_hatguy_enemy_slash_Draw_0_gml_60_0"@26509
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
pushi.e 60
add.i.v
pushloc.v local.yoffset
add.v.v
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
pushi.e 60
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

:[27]
push.v self.danceCounter
pushi.e 2
cmp.i.v EQ
bf [29]

:[28]
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
push.s "obj_hatguy_enemy_slash_Draw_0_gml_65_0"@26510
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
pushi.e 60
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
pushi.e 60
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

:[29]
push.s "obj_hatguy_enemy_slash_Draw_0_gml_70_0"@26511
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
pushi.e 60
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
pushi.e 60
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