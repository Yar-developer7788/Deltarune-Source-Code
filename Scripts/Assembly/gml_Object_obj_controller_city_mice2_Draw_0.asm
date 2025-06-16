.localvar 2 arguments
.localvar 36529 _easedLerp 18724

:[0]
pushi.e 1164
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [2]

:[1]
push.v 1164.victory
pop.v.v self.goalHit

:[2]
pushi.e 0
pop.v.i self.inusecount
pushi.e 1182
pushenv [5]

:[3]
push.v self.rotate
pushi.e 1
cmp.b.v EQ
bf [5]

:[4]
push.v other.inusecount
push.e 1
add.i.v
pop.v.v other.inusecount

:[5]
popenv [3]
push.v self.inusecount
pushi.e 0
cmp.i.v NEQ
bf [7]

:[6]
pushi.e 1
pop.v.b self.inUse
b [8]

:[7]
pushi.e 0
pop.v.b self.inUse

:[8]
push.v self.instructionLerp
pushi.e 0
cmp.i.v GT
bt [10]

:[9]
push.v self.inUse
conv.v.b
b [11]

:[10]
push.e 1

:[11]
bf [end]

:[12]
push.v self.instructionLerp
pushi.e 1
cmp.i.v LT
bf [14]

:[13]
push.v self.inUse
conv.v.b
b [15]

:[14]
push.e 0

:[15]
bf [17]

:[16]
push.v self.instructionLerp
push.d 0.1
add.d.v
pop.v.v self.instructionLerp
b [19]

:[17]
push.v self.inUse
conv.v.b
not.b
bf [19]

:[18]
push.v self.instructionLerp
push.d 0.1
sub.d.v
pop.v.v self.instructionLerp

:[19]
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