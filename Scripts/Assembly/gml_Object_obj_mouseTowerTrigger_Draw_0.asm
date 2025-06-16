.localvar 2 arguments
.localvar 36529 _easedLerp 18886

:[0]
call.i draw_self(argc=0)
popz.v
push.v self.rotate
pushi.e 1
cmp.b.v EQ
bf [8]

:[1]
pushi.e 0
pop.v.i self.image_index
push.v self.left
pushi.e 1
cmp.b.v EQ
bf [3]

:[2]
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
pushi.e 20
add.i.v
push.v self.x
pushi.e 6
add.i.v
pushi.e 0
conv.i.v
pushi.e 2628
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[3]
push.v self.right
pushi.e 1
cmp.b.v EQ
bf [5]

:[4]
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
pushi.e 20
add.i.v
push.v self.x
pushi.e 6
add.i.v
pushi.e 2
conv.i.v
pushi.e 2628
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[5]
push.v self.down
pushi.e 1
cmp.b.v EQ
bf [7]

:[6]
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
pushi.e 20
add.i.v
push.v self.x
pushi.e 6
add.i.v
pushi.e 1
conv.i.v
pushi.e 2628
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[7]
b [9]

:[8]
pushi.e 1
pop.v.i self.image_index

:[9]
push.v self.rotate
pushi.e 1
cmp.b.v EQ
bf [11]

:[10]
push.v self.blocked
pushi.e 0
cmp.i.v EQ
b [12]

:[11]
push.e 0

:[12]
bf [14]

:[13]
pushi.e 1
pop.v.b self.inUse
b [15]

:[14]
pushi.e 0
pop.v.b self.inUse

:[15]
pushi.e 1189
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [18]

:[16]
push.v 1189.micescore
pushi.e 2
cmp.i.v GT
bf [18]

:[17]
pushi.e 0
pop.v.i self.inUse

:[18]
push.v self.instructionLerp
pushi.e 0
cmp.i.v GT
bt [20]

:[19]
push.v self.inUse
conv.v.b
b [21]

:[20]
push.e 1

:[21]
bf [end]

:[22]
push.v self.instructionLerp
pushi.e 1
cmp.i.v LT
bf [24]

:[23]
push.v self.inUse
conv.v.b
b [25]

:[24]
push.e 0

:[25]
bf [27]

:[26]
push.v self.instructionLerp
push.d 0.1
add.d.v
pop.v.v self.instructionLerp
b [29]

:[27]
push.v self.inUse
conv.v.b
not.b
bf [29]

:[28]
push.v self.instructionLerp
push.d 0.1
sub.d.v
pop.v.v self.instructionLerp

:[29]
pushi.e 3
conv.i.v
push.v self.instructionLerp
call.i gml_Script_scr_ease_out(argc=2)
pop.v.v local._easedLerp
push.s "mainbig"@6175
conv.s.v
call.i gml_Script_scr_84_set_draw_font(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i draw_set_halign(argc=1)
popz.v
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.s "obj_controller_city_mice2_slash_Draw_0_gml_28_0"@37356
conv.s.v
push.s "[Left / Right]"@37357
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
call.i gml_Script_cameray(argc=0)
pushi.e 400
add.i.v
call.i gml_Script_camerax(argc=0)
pushi.e 80
sub.i.v
pushloc.v local._easedLerp
pushi.e 100
mul.i.v
add.v.v
call.i gml_Script_scr_84_draw_text_outline(argc=3)
popz.v
push.s "obj_controller_city_mice2_slash_Draw_0_gml_29_0"@37358
conv.s.v
push.s "Rotate"@37359
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
call.i gml_Script_cameray(argc=0)
pushi.e 432
add.i.v
call.i gml_Script_camerax(argc=0)
pushi.e 80
sub.i.v
pushloc.v local._easedLerp
pushi.e 100
mul.i.v
add.v.v
call.i gml_Script_scr_84_draw_text_outline(argc=3)
popz.v
pushi.e 2
conv.i.v
call.i draw_set_halign(argc=1)
popz.v
push.s "obj_controller_city_mice2_slash_Draw_0_gml_32_0"@37360
conv.s.v
push.s "[Down]"@37361
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
call.i gml_Script_cameray(argc=0)
pushi.e 400
add.i.v
call.i gml_Script_camerax(argc=0)
pushi.e 720
add.i.v
pushloc.v local._easedLerp
pushi.e 100
mul.i.v
sub.v.v
call.i gml_Script_scr_84_draw_text_outline(argc=3)
popz.v
push.s "obj_controller_city_mice2_slash_Draw_0_gml_33_0"@37362
conv.s.v
push.s "Mice"@37363
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
call.i gml_Script_cameray(argc=0)
pushi.e 432
add.i.v
call.i gml_Script_camerax(argc=0)
pushi.e 720
add.i.v
pushloc.v local._easedLerp
pushi.e 100
mul.i.v
sub.v.v
call.i gml_Script_scr_84_draw_text_outline(argc=3)
popz.v
pushi.e 0
conv.i.v
call.i draw_set_halign(argc=1)
popz.v

:[end]