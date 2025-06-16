.localvar 2 arguments
.localvar 23006 timestring 10250
.localvar 23009 timetextstring 10251
.localvar 23010 totaltimetextstring 10252

:[0]
push.v self.notail
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
push.v self.siner
pushi.e 1
add.i.v
pop.v.v self.siner
pushi.e 1
conv.i.v
push.v self.image_blend
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
pushi.e 1588
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
exit.i

:[2]
push.v self.state
pushi.e 3
cmp.i.v EQ
bf [17]

:[3]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monsterhp
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monstermaxhp
pushi.e 2
conv.i.d
div.d.v
cmp.v.v LTE
bf [6]

:[4]
push.i 231746
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monsterstatus
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monstercomment
push.s " "@353
cmp.s.v EQ
bf [6]

:[5]
push.i 231984
setowner.e
push.s "obj_clubsenemy_slash_Draw_0_gml_15_0"@23005
conv.s.v
push.s "(Tired)"@7993
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monstercomment

:[6]
push.v self.hurttimer
pushi.e 1
sub.i.v
pop.v.v self.hurttimer
push.v self.hurttimer
pushi.e 0
cmp.i.v LT
bf [8]

:[7]
pushi.e 0
pop.v.i self.state
b [17]

:[8]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monster
pushi.e 0
cmp.i.v EQ
bf [10]

:[9]
push.i 231204
setowner.e
pushi.e -5
pushi.e 522
dup.i 1
push.v [array]self.flag
pushi.e 1
add.i.v
pop.i.v [array]self.flag
call.i gml_Script_scr_defeatrun(argc=0)
popz.v

:[10]
push.v self.hurtshake
pushi.e 1
add.i.v
pop.v.v self.hurtshake
push.v self.hurtshake
pushi.e 1
cmp.i.v GT
bf [16]

:[11]
push.v self.shakex
pushi.e 0
cmp.i.v GT
bf [13]

:[12]
push.v self.shakex
pushi.e 1
sub.i.v
pop.v.v self.shakex

:[13]
push.v self.shakex
pushi.e 0
cmp.i.v LT
bf [15]

:[14]
push.v self.shakex
pushi.e 1
add.i.v
pop.v.v self.shakex

:[15]
push.v self.shakex
neg.v
pop.v.v self.shakex
pushi.e 0
pop.v.i self.hurtshake

:[16]
pushi.e 1
conv.i.v
push.v self.image_blend
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.y
push.v self.x
push.v self.shakex
add.v.v
pushi.e 0
conv.i.v
pushi.e 1586
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[17]
push.v self.state
pushi.e 0
cmp.i.v EQ
bf [22]

:[18]
push.v self.siner
pushi.e 1
add.i.v
pop.v.v self.siner
pushi.e 1584
pop.v.i self.thissprite
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.mercymod
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.mercymax
cmp.v.v GTE
bf [20]

:[19]
pushi.e 1585
pop.v.i self.thissprite

:[20]
pushi.e 1
conv.i.v
push.v self.image_blend
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.y
push.v self.x
push.v self.siner
pushi.e 6
conv.i.d
div.d.v
push.v self.thissprite
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.flash
pushi.e 1
cmp.i.v EQ
bf [22]

:[21]
push.v self.fsiner
pushi.e 1
add.i.v
pop.v.v self.fsiner
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
push.i 16777215
conv.i.v
pushi.e 1
conv.b.v
call.i gml_Script_d3d_set_fog(argc=4)
popz.v
push.v self.fsiner
pushi.e 5
conv.i.d
div.d.v
call.i cos(argc=1)
neg.v
push.d 0.4
mul.d.v
push.d 0.6
add.d.v
push.v self.image_blend
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.y
push.v self.x
push.v self.siner
pushi.e 6
conv.i.d
div.d.v
push.v self.thissprite
call.i draw_sprite_ext(argc=9)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.b.v
call.i gml_Script_d3d_set_fog(argc=4)
popz.v

:[22]
push.v self.becomeflash
pushi.e 0
cmp.i.v EQ
bf [24]

:[23]
pushi.e 0
pop.v.i self.flash

:[24]
pushi.e 0
pop.v.i self.becomeflash
push.v self.actcon
pushi.e 15
cmp.i.v EQ
bf [28]

:[25]
push.v self.clockalpha
pushi.e 1
cmp.i.v LTE
bf [27]

:[26]
push.v self.clockalpha
push.d 0.05
add.d.v
pop.v.v self.clockalpha

:[27]
b [30]

:[28]
push.v self.clockalpha
pushi.e 0
cmp.i.v GTE
bf [30]

:[29]
push.v self.clockalpha
push.d 0.05
sub.d.v
pop.v.v self.clockalpha

:[30]
pushbltn.v builtin.room
pushi.e 76
cmp.i.v EQ
bf [32]

:[31]
pushi.e 285
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
b [33]

:[32]
push.e 0

:[33]
bf [end]

:[34]
pushi.e 255
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 1
conv.i.v
call.i draw_set_halign(argc=1)
popz.v
push.s "mainbig"@6175
conv.s.v
call.i gml_Script_scr_84_set_draw_font(argc=1)
popz.v
push.v self.topic_timer
pushi.e 30
conv.i.d
div.d.v
call.i round(argc=1)
call.i string(argc=1)
pop.v.v local.timestring
push.v self.topic_timer
pushi.e 30
conv.i.d
div.d.v
call.i round(argc=1)
pushi.e 10
cmp.i.v LT
bf [36]

:[35]
push.s "0"@3491
pushloc.v local.timestring
add.v.s
pop.v.v local.timestring

:[36]
push.v self.topic_con
pushi.e 0
cmp.i.v NEQ
bf [38]

:[37]
push.s "obj_clubsenemy_slash_Draw_0_gml_98_0"@23007
conv.s.v
push.s "TIME: "@23008
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v local.timetextstring
pushloc.v local.timetextstring
pushloc.v local.timestring
add.v.v
pop.v.v local.totaltimetextstring
pushi.e 0
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_cameray(argc=0)
pushi.e 298
add.i.v
pushloc.v local.totaltimetextstring
call.i string_height(argc=1)
pushi.e 2
conv.i.d
div.d.v
add.v.v
pushi.e 40
add.i.v
call.i gml_Script_camerax(argc=0)
pushi.e 320
add.i.v
pushloc.v local.totaltimetextstring
call.i string_width(argc=1)
pushi.e 2
conv.i.d
div.d.v
add.v.v
pushi.e 10
add.i.v
call.i gml_Script_cameray(argc=0)
pushi.e 298
add.i.v
pushloc.v local.totaltimetextstring
call.i string_height(argc=1)
pushi.e 2
conv.i.d
div.d.v
sub.v.v
call.i gml_Script_camerax(argc=0)
pushi.e 320
add.i.v
pushloc.v local.totaltimetextstring
call.i string_width(argc=1)
pushi.e 2
conv.i.d
div.d.v
sub.v.v
pushi.e 10
sub.i.v
call.i draw_rectangle(argc=5)
popz.v
pushi.e 255
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushloc.v local.totaltimetextstring
call.i gml_Script_cameray(argc=0)
pushi.e 290
add.i.v
call.i gml_Script_camerax(argc=0)
pushi.e 320
add.i.v
call.i draw_text(argc=3)
popz.v
pushi.e 0
conv.i.v
call.i draw_set_halign(argc=1)
popz.v
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v

:[38]
push.v 285.ball
pushi.e -9
push.v [stacktop]self.x
pop.v.v self.cx
push.v 285.ball
pushi.e -9
push.v [stacktop]self.y
pushi.e 65
add.i.v
pop.v.v self.cy
push.v self.topic_timer
push.v self.topic_timer_total
div.v.v
push.d 0.25
cmp.d.v LT
bf [40]

:[39]
push.d 0.125
conv.d.v
push.v self.cx
push.v self.topic_timer_total
push.v self.topic_timer
sub.v.v
call.i sin(argc=1)
pushi.e 6
mul.i.v
add.v.v
push.v self.cx
call.i lerp(argc=3)
pop.v.v self.cx
push.d 0.125
conv.d.v
push.v self.cy
push.v self.topic_timer_total
push.v self.topic_timer
sub.v.v
call.i cos(argc=1)
pushi.e 6
mul.i.v
add.v.v
push.v self.cy
call.i lerp(argc=3)
pop.v.v self.cy

:[40]
push.v self.topic_timer
push.v self.topic_timer_total
div.v.v
pushi.e 360
mul.i.v
pop.v.v self.progress
push.v self.clockalpha
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.cy
pushi.e 57
sub.i.v
push.v self.cx
pushi.e 56
sub.i.v
pushi.e 0
conv.i.v
pushi.e 3246
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
pushi.e 1
push.v self.topic_timer
push.v self.topic_timer_total
div.v.v
sub.v.i
push.v self.clockalpha
mul.v.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.cy
pushi.e 57
sub.i.v
push.v self.cx
pushi.e 56
sub.i.v
pushi.e 1
conv.i.v
pushi.e 3246
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.clockalpha
push.i 16777215
conv.i.v
pushi.e 360
push.v self.progress
pushi.e 10
mul.i.v
sub.v.i
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.cy
push.v self.cx
pushi.e 0
conv.i.v
pushi.e 3244
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.clockalpha
push.i 16777215
conv.i.v
pushi.e 360
push.v self.progress
sub.v.i
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.cy
push.v self.cx
pushi.e 0
conv.i.v
pushi.e 3245
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[end]