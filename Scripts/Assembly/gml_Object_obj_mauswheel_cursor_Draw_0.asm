.localvar 2 arguments

:[0]
call.i draw_self(argc=0)
popz.v
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.v self.image_blend
push.i 65535
cmp.i.v EQ
bf [3]

:[1]
push.v self.timer
pushi.e 20
cmp.i.v GTE
bf [3]

:[2]
push.v self.timer
pushi.e 60
cmp.i.v LTE
b [4]

:[3]
push.e 0

:[4]
bf [6]

:[5]
pushi.e 2
conv.i.v
call.i draw_set_halign(argc=1)
popz.v
pushi.e 0
conv.i.v
push.d 0.6
conv.d.v
push.d 0.6
conv.d.v
pushi.e 9999
conv.i.v
pushi.e 9999
conv.i.v
push.s "obj_mauswheel_cursor_slash_Draw_0_gml_10_0"@26985
conv.s.v
push.s "Movements from turn 2"@26986
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
push.v self.y
pushi.e 2
sub.i.v
push.v self.x
pushi.e 15
sub.i.v
call.i draw_text_ext_transformed(argc=8)
popz.v

:[6]
push.v self.image_blend
pushi.e 255
cmp.i.v EQ
bf [10]

:[7]
push.v self.timer
pushi.e 20
cmp.i.v GTE
bf [10]

:[8]
push.v self.timer
pushi.e 60
cmp.i.v LTE
bf [10]

:[9]
pushi.e 763
conv.i.v
call.i instance_number(argc=1)
pushi.e 1
cmp.i.v EQ
b [11]

:[10]
push.e 0

:[11]
bf [13]

:[12]
pushi.e 0
conv.i.v
call.i draw_set_halign(argc=1)
popz.v
pushi.e 0
conv.i.v
push.d 0.6
conv.d.v
push.d 0.6
conv.d.v
pushi.e 9999
conv.i.v
pushi.e 9999
conv.i.v
push.s "obj_mauswheel_cursor_slash_Draw_0_gml_11_0"@26987
conv.s.v
push.s "Movements from turn 1"@26988
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
push.v self.y
pushi.e 2
sub.i.v
push.v self.x
pushi.e 30
add.i.v
call.i draw_text_ext_transformed(argc=8)
popz.v

:[13]
pushi.e 0
conv.i.v
call.i draw_set_halign(argc=1)
popz.v

:[end]