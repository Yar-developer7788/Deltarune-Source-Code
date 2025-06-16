.localvar 2 arguments

:[0]
push.v self.y
call.i gml_Script_cameray(argc=0)
pushi.e 290
add.i.v
cmp.v.v LT
bf [2]

:[1]
push.v 631.depth
pushi.e 1
sub.i.v
pop.v.v self.depth

:[2]
push.v self.y
call.i gml_Script_cameray(argc=0)
pushi.e 290
add.i.v
cmp.v.v GT
bf [4]

:[3]
push.v 631.depth
push.d 100.5
add.d.v
pop.v.v self.depth

:[4]
push.v self.init
pushi.e 0
cmp.i.v EQ
bf [14]

:[5]
pushi.e 1
pop.v.i self.init
push.v self.queenword
pushi.e 1
cmp.i.v EQ
bf [7]

:[6]
pushi.e 2
pop.v.i self.idealxscale

:[7]
push.v self.angry
conv.v.b
bf [9]

:[8]
push.v self.queenword
pushi.e 0
cmp.i.v EQ
b [10]

:[9]
push.e 0

:[10]
bf [14]

:[11]
push.s ""@157
pop.v.s self.wordchoice
pushi.e 4
dup.i 0
push.i 0
cmp.i.i LTE
bt [13]

:[12]
push.v self.wordchoice
push.s "obj_wordbullet_slash_Draw_0_gml_15_4"@24615
conv.s.v
push.s "&"@6153
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
push.s "obj_wordbullet_slash_Draw_0_gml_15_3"@24616
conv.s.v
push.s "*"@6161
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
push.s "obj_wordbullet_slash_Draw_0_gml_15_2"@24617
conv.s.v
push.s "!"@6155
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
push.s "obj_wordbullet_slash_Draw_0_gml_15_1"@24618
conv.s.v
push.s "@"@24619
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
push.s "obj_wordbullet_slash_Draw_0_gml_15_0"@24620
conv.s.v
push.s "?"@4913
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
call.i choose(argc=5)
add.v.v
pop.v.v self.wordchoice
push.i 1
sub.i.i
dup.i 0
conv.i.b
bt [12]

:[13]
popz.i
push.d 1.5
pop.v.d self.idealxscale
push.d 1.5
pop.v.d self.idealyscale
push.d 0.8
pop.v.d self.image_xscale
push.d 0.8
pop.v.d self.image_yscale

:[14]
push.s "main"@6173
conv.s.v
call.i gml_Script_scr_84_set_draw_font(argc=1)
popz.v
push.v self.queenword
pushi.e 0
cmp.i.v EQ
bf [33]

:[15]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.v self.angry
conv.v.b
bf [17]

:[16]
pushi.e 255
conv.i.v
call.i draw_set_color(argc=1)
popz.v

:[17]
push.v self.gray
conv.v.b
bf [19]

:[18]
push.i 8421504
conv.i.v
call.i draw_set_color(argc=1)
popz.v

:[19]
push.v self.timer
pushi.e 5
cmp.i.v GT
bf [21]

:[20]
push.v self.timer
pushi.e 11
cmp.i.v LTE
b [22]

:[21]
push.e 0

:[22]
bf [24]

:[23]
push.v self.timer
pushi.e 5
sub.i.v
pushi.e 6
conv.i.d
div.d.v
push.v self.idealxscale
pushi.e 0
conv.i.v
call.i lerp(argc=3)
pop.v.v self.scaleupx

:[24]
push.v self.angry
pushi.e 1
cmp.i.v EQ
bt [26]

:[25]
push.v self.x
push.v 872.x
cmp.v.v LT
b [27]

:[26]
push.e 1

:[27]
bf [29]

:[28]
push.v self.idealxscale
pop.v.v self.scaleupx

:[29]
push.v self.image_angle
push.v self.idealyscale
push.v self.scaleupx
push.v self.wordchoice
push.v self.y
push.v self.x
call.i draw_text_transformed(argc=6)
popz.v
pushglb.v global.lang
push.s "ja"@6181
cmp.s.v EQ
bf [31]

:[30]
push.v self.image_angle
push.v self.idealyscale
push.v self.scaleupx
push.v self.wordchoice
push.v self.y
push.v self.x
pushi.e 1
add.i.v
call.i draw_text_transformed(argc=6)
popz.v

:[31]
push.v self.timer
push.e 1
add.i.v
pop.v.v self.timer
push.v self.timer
pushi.e 90
cmp.i.v GTE
bf [33]

:[32]
call.i instance_destroy(argc=0)
popz.v

:[33]
push.v self.queenword
conv.v.b
bf [end]

:[34]
pushi.e 255
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.v self.image_alpha
call.i draw_set_alpha(argc=1)
popz.v
push.v self.x
push.v 872.x
pushi.e 30
sub.i.v
cmp.v.v LTE
bf [36]

:[35]
push.v self.dramatimer_x
pushi.e 2
sub.i.v
pop.v.v self.dramatimer_x

:[36]
push.v self.x
push.v 872.x
pushi.e 30
sub.i.v
cmp.v.v LTE
bf [38]

:[37]
push.v self.dramatimer_y
pushi.e 1
sub.i.v
pop.v.v self.dramatimer_y

:[38]
push.v self.image_angle
push.v self.idealyscale
push.v self.idealxscale
push.v self.wordchoice
push.v self.y
push.v self.dramatimer_y
add.v.v
push.v self.x
push.v self.dramatimer_x
add.v.v
call.i draw_text_transformed(argc=6)
popz.v
pushi.e 1
conv.i.v
call.i draw_set_alpha(argc=1)
popz.v
push.v self.x
push.v 872.x
pushi.e 30
sub.i.v
cmp.v.v LTE
bf [end]

:[39]
pushi.e 0
pop.v.i self.active
pushi.e 0
pop.v.i self.hspeed
push.v self.image_alpha
push.d 0.05
sub.d.v
pop.v.v self.image_alpha
push.v self.idealxscale
push.d 0.1
add.d.v
pop.v.v self.idealxscale
push.v self.idealyscale
push.d 0.1
add.d.v
pop.v.v self.idealyscale
push.v self.image_alpha
pushi.e 0
cmp.i.v LTE
bf [end]

:[40]
pushi.e 509
pushenv [42]

:[41]
pushi.e 2
pop.v.i self.angrycon

:[42]
popenv [41]
pushi.e 510
pushenv [44]

:[43]
call.i instance_destroy(argc=0)
popz.v

:[44]
popenv [43]

:[end]