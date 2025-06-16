.localvar 2 arguments
.localvar 11870 _ex 9806

:[0]
pushglb.v global.chapter
pushi.e 2
cmp.i.v EQ
bf [2]

:[1]
pushi.e 840
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
b [3]

:[2]
push.e 0

:[3]
bf [6]

:[4]
push.v 357.gigaqueencon
pushi.e 0
cmp.i.v NEQ
bf [6]

:[5]
exit.i

:[6]
push.v self.healthbar_surf
call.i surface_exists(argc=1)
conv.v.b
not.b
bf [8]

:[7]
pushi.e 250
conv.i.v
pushi.e 96
conv.i.v
call.i surface_create(argc=2)
pop.v.v self.healthbar_surf

:[8]
push.v self.healthbar_surf
call.i surface_set_target(argc=1)
popz.v
pushi.e 0
conv.i.v
push.i 16777215
conv.i.v
call.i draw_clear_alpha(argc=2)
popz.v
pushi.e 0
conv.i.v
push.l 1
conv.l.v
call.i gml_Script___view_get(argc=2)
pop.v.v self.yy
push.v self.yy
pushi.e 40
add.i.v
pop.v.v self.y
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1397
conv.i.v
call.i draw_sprite(argc=4)
popz.v
push.v self.apparent
pushglb.v global.tension
sub.v.v
call.i abs(argc=1)
pushi.e 20
cmp.i.v LT
bf [10]

:[9]
pushglb.v global.tension
pop.v.v self.apparent

:[10]
push.v self.apparent
pushglb.v global.tension
cmp.v.v LT
bf [12]

:[11]
push.v self.apparent
pushi.e 20
add.i.v
pop.v.v self.apparent

:[12]
push.v self.apparent
pushglb.v global.tension
cmp.v.v GT
bf [14]

:[13]
push.v self.apparent
pushi.e 20
sub.i.v
pop.v.v self.apparent

:[14]
push.v self.apparent
push.v self.current
cmp.v.v NEQ
bf [38]

:[15]
push.v self.changetimer
pushi.e 1
add.i.v
pop.v.v self.changetimer
push.v self.changetimer
pushi.e 15
cmp.i.v GT
bf [38]

:[16]
push.v self.apparent
push.v self.current
sub.v.v
pushi.e 0
cmp.i.v GT
bf [18]

:[17]
push.v self.current
pushi.e 2
add.i.v
pop.v.v self.current

:[18]
push.v self.apparent
push.v self.current
sub.v.v
pushi.e 10
cmp.i.v GT
bf [20]

:[19]
push.v self.current
pushi.e 2
add.i.v
pop.v.v self.current

:[20]
push.v self.apparent
push.v self.current
sub.v.v
pushi.e 25
cmp.i.v GT
bf [22]

:[21]
push.v self.current
pushi.e 3
add.i.v
pop.v.v self.current

:[22]
push.v self.apparent
push.v self.current
sub.v.v
pushi.e 50
cmp.i.v GT
bf [24]

:[23]
push.v self.current
pushi.e 4
add.i.v
pop.v.v self.current

:[24]
push.v self.apparent
push.v self.current
sub.v.v
pushi.e 100
cmp.i.v GT
bf [26]

:[25]
push.v self.current
pushi.e 5
add.i.v
pop.v.v self.current

:[26]
push.v self.apparent
push.v self.current
sub.v.v
pushi.e 0
cmp.i.v LT
bf [28]

:[27]
push.v self.current
pushi.e 2
sub.i.v
pop.v.v self.current

:[28]
push.v self.apparent
push.v self.current
sub.v.v
pushi.e -10
cmp.i.v LT
bf [30]

:[29]
push.v self.current
pushi.e 2
sub.i.v
pop.v.v self.current

:[30]
push.v self.apparent
push.v self.current
sub.v.v
pushi.e -25
cmp.i.v LT
bf [32]

:[31]
push.v self.current
pushi.e 3
sub.i.v
pop.v.v self.current

:[32]
push.v self.apparent
push.v self.current
sub.v.v
pushi.e -50
cmp.i.v LT
bf [34]

:[33]
push.v self.current
pushi.e 4
sub.i.v
pop.v.v self.current

:[34]
push.v self.apparent
push.v self.current
sub.v.v
pushi.e -100
cmp.i.v LT
bf [36]

:[35]
push.v self.current
pushi.e 5
sub.i.v
pop.v.v self.current

:[36]
push.v self.apparent
push.v self.current
sub.v.v
call.i abs(argc=1)
pushi.e 3
cmp.i.v LT
bf [38]

:[37]
push.v self.apparent
pop.v.v self.current

:[38]
push.v self.current
pushi.e 0
cmp.i.v GT
bf [49]

:[39]
push.v self.apparent
push.v self.current
cmp.v.v LT
bf [41]

:[40]
pushi.e 255
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 0
conv.b.v
pushi.e 0
push.v self.sprite_height
add.v.i
push.v self.current
pushglb.v global.maxtension
div.v.v
push.v self.sprite_height
mul.v.v
sub.v.v
pushi.e 0
push.v self.sprite_width
add.v.i
pushi.e 1
sub.i.v
pushi.e 0
push.v self.sprite_height
add.v.i
pushi.e 1
sub.i.v
pushi.e 3
conv.i.v
call.i draw_rectangle(argc=5)
popz.v
push.i 4235519
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 0
conv.b.v
pushi.e 0
push.v self.sprite_height
add.v.i
push.v self.apparent
pushglb.v global.maxtension
div.v.v
push.v self.sprite_height
mul.v.v
sub.v.v
pushi.e 0
push.v self.sprite_width
add.v.i
pushi.e 1
sub.i.v
pushi.e 0
push.v self.sprite_height
add.v.i
pushi.e 1
sub.i.v
pushi.e 3
conv.i.v
call.i draw_rectangle(argc=5)
popz.v

:[41]
push.v self.apparent
push.v self.current
cmp.v.v GT
bf [45]

:[42]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 0
conv.b.v
pushi.e 0
push.v self.sprite_height
add.v.i
push.v self.apparent
pushglb.v global.maxtension
div.v.v
push.v self.sprite_height
mul.v.v
sub.v.v
pushi.e 0
push.v self.sprite_width
add.v.i
pushi.e 1
sub.i.v
pushi.e 0
push.v self.sprite_height
add.v.i
pushi.e 1
sub.i.v
pushi.e 3
conv.i.v
call.i draw_rectangle(argc=5)
popz.v
push.i 4235519
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.v self.maxed
pushi.e 1
cmp.i.v EQ
bf [44]

:[43]
push.d 0.5
conv.d.v
push.i 4235519
conv.i.v
push.i 65535
conv.i.v
call.i merge_color(argc=3)
call.i draw_set_color(argc=1)
popz.v

:[44]
pushi.e 0
conv.b.v
pushi.e 0
push.v self.sprite_height
add.v.i
push.v self.current
pushglb.v global.maxtension
div.v.v
push.v self.sprite_height
mul.v.v
sub.v.v
pushi.e 0
push.v self.sprite_width
add.v.i
pushi.e 1
sub.i.v
pushi.e 0
push.v self.sprite_height
add.v.i
pushi.e 1
sub.i.v
pushi.e 3
conv.i.v
call.i draw_rectangle(argc=5)
popz.v

:[45]
push.v self.apparent
push.v self.current
cmp.v.v EQ
bf [49]

:[46]
push.i 4235519
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.v self.maxed
pushi.e 1
cmp.i.v EQ
bf [48]

:[47]
push.d 0.5
conv.d.v
push.i 4235519
conv.i.v
push.i 65535
conv.i.v
call.i merge_color(argc=3)
call.i draw_set_color(argc=1)
popz.v

:[48]
pushi.e 0
conv.b.v
pushi.e 0
push.v self.sprite_height
add.v.i
push.v self.current
pushglb.v global.maxtension
div.v.v
push.v self.sprite_height
mul.v.v
sub.v.v
pushi.e 0
push.v self.sprite_width
add.v.i
pushi.e 1
sub.i.v
pushi.e 0
push.v self.sprite_height
add.v.i
pushi.e 1
sub.i.v
pushi.e 3
conv.i.v
call.i draw_rectangle(argc=5)
popz.v

:[49]
pushi.e 0
pop.v.i self.shit
push.i 2272
conv.i.v
push.i 2224
conv.i.v
call.i @@try_hook@@(argc=2)
popz.v
pushglb.v global.tensionselect
pushi.e 0
cmp.i.v GTE
bf [51]

:[50]
pushi.e 1
pop.v.i self.shit

:[51]
b [53]

:[52]
pop.v.v local._ex
call.i @@try_unhook@@(argc=0)
popz.v
pushi.e 2
pop.v.i self.shit
call.i @@finish_catch@@(argc=0)
popz.v
b [54]

:[53]
call.i @@try_unhook@@(argc=0)
popz.v

:[54]
push.v self.shit
pushi.e 2
cmp.i.v EQ
bf [56]

:[55]
pushi.e 41
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v

:[56]
pushglb.v global.tensionselect
pushi.e 0
cmp.i.v GT
bf [60]

:[57]
push.v self.tsiner
pushi.e 1
add.i.v
pop.v.v self.tsiner
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.v self.tsiner
pushi.e 8
conv.i.d
div.d.v
call.i sin(argc=1)
push.d 0.5
mul.d.v
call.i abs(argc=1)
push.d 0.2
add.d.v
call.i draw_set_alpha(argc=1)
popz.v
pushi.e 0
push.v self.sprite_height
add.v.i
push.v self.current
pushglb.v global.maxtension
div.v.v
push.v self.sprite_height
mul.v.v
sub.v.v
pop.v.v self.theight
push.v self.theight
pushglb.v global.tensionselect
pushglb.v global.maxtension
div.v.v
push.v self.sprite_height
mul.v.v
add.v.v
pop.v.v self.theight2
push.v self.theight2
pushi.e 0
push.v self.sprite_height
add.v.i
pushi.e 1
sub.i.v
cmp.v.v GT
bf [59]

:[58]
pushi.e 0
push.v self.sprite_height
add.v.i
pushi.e 1
sub.i.v
pop.v.v self.theight2
push.i 4210752
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.d 0.7
conv.d.v
call.i draw_set_alpha(argc=1)
popz.v

:[59]
pushi.e 0
conv.b.v
push.v self.theight
pushi.e 0
push.v self.sprite_width
add.v.i
pushi.e 1
sub.i.v
push.v self.theight2
pushi.e 3
conv.i.v
call.i draw_rectangle(argc=5)
popz.v
pushi.e 1
conv.i.v
call.i draw_set_alpha(argc=1)
popz.v

:[60]
push.v self.apparent
pushi.e 20
cmp.i.v GT
bf [62]

:[61]
push.v self.apparent
pushglb.v global.maxtension
cmp.v.v LT
b [63]

:[62]
push.e 0

:[63]
bf [65]

:[64]
pushi.e 0
push.v self.sprite_height
add.v.i
push.v self.current
pushglb.v global.maxtension
div.v.v
push.v self.sprite_height
mul.v.v
sub.v.v
pushi.e 3
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1400
conv.i.v
call.i draw_sprite(argc=4)
popz.v

:[65]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1397
conv.i.v
call.i draw_sprite(argc=4)
popz.v
pushi.e 3
conv.i.v
call.i gpu_set_blendmode(argc=1)
popz.v
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1398
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
pushi.e 0
conv.i.v
call.i gpu_set_blendmode(argc=1)
popz.v
call.i surface_reset_target(argc=0)
popz.v
push.v self.y
push.v self.x
push.v self.healthbar_surf
call.i draw_surface(argc=3)
popz.v
push.v self.y
pushi.e 30
add.i.v
push.v self.x
pushi.e 30
sub.i.v
pushi.e 0
conv.i.v
pushi.e 1401
conv.i.v
call.i draw_sprite(argc=4)
popz.v
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.s "mainbig"@6175
conv.s.v
call.i gml_Script_scr_84_set_draw_font(argc=1)
popz.v
push.v self.flashsiner
pushi.e 1
add.i.v
pop.v.v self.flashsiner
push.v self.apparent
pushglb.v global.maxtension
div.v.v
pushi.e 100
mul.i.v
call.i floor(argc=1)
pop.v.v self.tamt
pushi.e 0
pop.v.i self.maxed
push.v self.tamt
pushi.e 100
cmp.i.v LT
bf [67]

:[66]
push.v self.apparent
pushglb.v global.maxtension
div.v.v
pushi.e 100
mul.i.v
call.i floor(argc=1)
call.i string(argc=1)
call.i string_hash_to_newline(argc=1)
push.v self.y
pushi.e 70
add.i.v
push.v self.x
pushi.e 30
sub.i.v
call.i draw_text(argc=3)
popz.v
push.s "obj_tensionbar_slash_Draw_0_gml_18_0"@21733
conv.s.v
push.s "%"@14906
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
call.i string_hash_to_newline(argc=1)
push.v self.y
pushi.e 95
add.i.v
push.v self.x
pushi.e 25
sub.i.v
call.i draw_text(argc=3)
popz.v

:[67]
push.v self.tamt
pushi.e 100
cmp.i.v GTE
bf [end]

:[68]
pushi.e 1
pop.v.i self.maxed
push.i 65535
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.s "obj_tensionbar_slash_Draw_0_gml_25_0"@21734
conv.s.v
push.s "M"@9486
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
call.i string_hash_to_newline(argc=1)
push.v self.y
pushi.e 70
add.i.v
push.v self.x
pushi.e 28
sub.i.v
call.i draw_text(argc=3)
popz.v
push.s "obj_tensionbar_slash_Draw_0_gml_26_0"@21735
conv.s.v
push.s "A"@1192
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
call.i string_hash_to_newline(argc=1)
push.v self.y
pushi.e 90
add.i.v
push.v self.x
pushi.e 24
sub.i.v
call.i draw_text(argc=3)
popz.v
push.s "obj_tensionbar_slash_Draw_0_gml_27_0"@21736
conv.s.v
push.s "X"@5605
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
call.i string_hash_to_newline(argc=1)
push.v self.y
pushi.e 110
add.i.v
push.v self.x
pushi.e 20
sub.i.v
call.i draw_text(argc=3)
popz.v

:[end]