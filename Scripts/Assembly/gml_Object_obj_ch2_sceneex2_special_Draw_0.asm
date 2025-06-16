.localvar 2 arguments
.localvar 34174 presstext 17024
.localvar 34177 bigcheck 17025
.localvar 34182 buttontext 17026

:[0]
push.v self.init
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
pushi.e 2
pop.v.i self.init
pushi.e 0
pop.v.i self.input_timer

:[2]
pushi.e 631
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [end]

:[3]
push.v 631.color
pushi.e 1
cmp.i.v EQ
bf [17]

:[4]
push.v self.con
pushi.e 19
cmp.i.v LT
bf [8]

:[5]
push.s "obj_ch2_sceneex2_special_slash_Draw_0_gml_16_0"@34172
conv.s.v
push.s "PRESS "@34173
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v local.presstext
pushi.e 592
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
not.b
bf [7]

:[6]
push.v self.input_timer
push.e 1
add.i.v
pop.v.v self.input_timer
b [8]

:[7]
pushi.e 0
pop.v.i self.input_timer

:[8]
push.v self.con
pushi.e 19
cmp.i.v GTE
bf [17]

:[9]
push.s "obj_ch2_sceneex2_special_slash_Draw_0_gml_23_0"@34175
conv.s.v
push.s "HOLD  "@34176
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v local.presstext
pushi.e 0
pop.v.i local.bigcheck
pushi.e 592
pushenv [12]

:[10]
push.v self.big
pushi.e 1
cmp.i.v EQ
bf [12]

:[11]
pushi.e 1
pop.v.i local.bigcheck

:[12]
popenv [10]
push.v 631.z_hold
pushi.e 40
cmp.i.v GTE
bf [14]

:[13]
push.s "obj_ch2_sceneex2_special_slash_Draw_0_gml_27_0"@34178
conv.s.v
push.s "RELEASE "@34179
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v local.presstext

:[14]
pushloc.v local.bigcheck
pushi.e 0
cmp.i.v EQ
bf [16]

:[15]
push.v self.input_timer
push.e 1
add.i.v
pop.v.v self.input_timer
b [17]

:[16]
pushi.e 0
pop.v.i self.input_timer

:[17]
push.v self.input_timer
pushi.e 240
cmp.i.v GTE
bf [end]

:[18]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.s "main"@6173
conv.s.v
call.i gml_Script_scr_84_set_draw_font(argc=1)
popz.v
pushglb.v global.is_console
conv.v.b
bt [20]

:[19]
push.v 1112.gamepad_active
conv.v.b
b [21]

:[20]
push.e 1

:[21]
bf [26]

:[22]
pushglb.v global.lang
push.s "en"@9432
cmp.s.v EQ
bf [24]

:[23]
push.v self.input_timer
pushi.e 8
conv.i.d
div.d.v
call.i sin(argc=1)
push.d 0.1
mul.d.v
push.d 0.8
add.d.v
call.i draw_set_alpha(argc=1)
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
push.v 631.y
pushi.e 26
sub.i.v
push.v 631.x
pushi.e 26
add.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.b.v
pushi.e -5
pushi.e 4
push.v [array]self.input_g
call.i gml_Script_scr_getbuttonsprite(argc=2)
call.i draw_sprite_ext(argc=9)
popz.v
pushloc.v local.presstext
push.v 631.y
pushi.e 20
sub.i.v
push.v 631.x
pushi.e 30
sub.i.v
call.i draw_text(argc=3)
popz.v
b [25]

:[24]
push.v self.input_timer
pushi.e 8
conv.i.d
div.d.v
call.i sin(argc=1)
push.d 0.1
mul.d.v
push.d 0.8
add.d.v
call.i draw_set_alpha(argc=1)
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
push.v 631.y
pushi.e 32
sub.i.v
push.v 631.x
pushi.e 26
sub.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.b.v
pushi.e -5
pushi.e 4
push.v [array]self.input_g
call.i gml_Script_scr_getbuttonsprite(argc=2)
call.i draw_sprite_ext(argc=9)
popz.v
pushloc.v local.presstext
push.v 631.y
pushi.e 26
sub.i.v
push.v 631.x
pushi.e 8
add.i.v
call.i draw_text(argc=3)
popz.v

:[25]
b [27]

:[26]
push.s "obj_ch2_sceneex2_special_slash_Draw_0_gml_39_0"@34180
conv.s.v
pushi.e 4
conv.i.v
call.i gml_Script_scr_get_input_name(argc=1)
push.s "~1"@34181
conv.s.v
call.i gml_Script_stringsetsubloc(argc=3)
pop.v.v local.buttontext
push.v self.input_timer
pushi.e 8
conv.i.d
div.d.v
call.i sin(argc=1)
push.d 0.1
mul.d.v
push.d 0.8
add.d.v
call.i draw_set_alpha(argc=1)
popz.v
pushloc.v local.presstext
pushloc.v local.buttontext
add.v.v
push.v 631.y
pushi.e 20
sub.i.v
push.v 631.x
pushi.e 30
sub.i.v
call.i draw_text(argc=3)
popz.v

:[27]
pushi.e 1
conv.i.v
call.i draw_set_alpha(argc=1)
popz.v

:[end]