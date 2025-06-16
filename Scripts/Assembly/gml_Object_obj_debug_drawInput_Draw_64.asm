.localvar 2 arguments

:[0]
call.i gml_Script_scr_debug(argc=0)
conv.v.b
bf [end]

:[1]
pushi.e 300
pop.v.i self.xx
pushi.e 465
pop.v.i self.yy
pushi.e 40
conv.i.v
pushi.e 40
conv.i.v
pushi.e 40
conv.i.v
call.i make_color_rgb(argc=3)
pop.v.v self.darkgrey
pushi.e 5
conv.i.v
call.i draw_set_font(argc=1)
popz.v
call.i gml_Script_up_h(argc=0)
conv.v.b
bf [3]

:[2]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
b [4]

:[3]
push.v self.darkgrey
call.i draw_set_color(argc=1)
popz.v

:[4]
pushi.e 0
conv.i.v
push.s "[U]"@14524
conv.s.v
push.v self.yy
pushi.e 6
sub.i.v
push.v self.xx
call.i gml_Script_draw_text_outline(argc=4)
popz.v
call.i gml_Script_left_h(argc=0)
conv.v.b
bf [6]

:[5]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
b [7]

:[6]
push.v self.darkgrey
call.i draw_set_color(argc=1)
popz.v

:[7]
pushi.e 0
conv.i.v
push.s "[L]"@14525
conv.s.v
push.v self.yy
push.v self.xx
pushi.e 15
sub.i.v
call.i gml_Script_draw_text_outline(argc=4)
popz.v
call.i gml_Script_down_h(argc=0)
conv.v.b
bf [9]

:[8]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
b [10]

:[9]
push.v self.darkgrey
call.i draw_set_color(argc=1)
popz.v

:[10]
pushi.e 0
conv.i.v
push.s "[D]"@14526
conv.s.v
push.v self.yy
push.v self.xx
call.i gml_Script_draw_text_outline(argc=4)
popz.v
call.i gml_Script_right_h(argc=0)
conv.v.b
bf [12]

:[11]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
b [13]

:[12]
push.v self.darkgrey
call.i draw_set_color(argc=1)
popz.v

:[13]
pushi.e 0
conv.i.v
push.s "[R]"@14527
conv.s.v
push.v self.yy
push.v self.xx
pushi.e 15
add.i.v
call.i gml_Script_draw_text_outline(argc=4)
popz.v
call.i gml_Script_button1_h(argc=0)
conv.v.b
bf [15]

:[14]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
b [16]

:[15]
push.v self.darkgrey
call.i draw_set_color(argc=1)
popz.v

:[16]
pushi.e 0
conv.i.v
pushi.e 4
conv.i.v
call.i gml_Script_scr_get_input_name(argc=1)
push.v self.yy
push.v self.xx
pushi.e 45
add.i.v
call.i gml_Script_draw_text_outline(argc=4)
popz.v
call.i gml_Script_button2_h(argc=0)
conv.v.b
bf [18]

:[17]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
b [19]

:[18]
push.v self.darkgrey
call.i draw_set_color(argc=1)
popz.v

:[19]
pushi.e 0
conv.i.v
pushi.e 5
conv.i.v
call.i gml_Script_scr_get_input_name(argc=1)
push.v self.yy
push.v self.xx
pushi.e 60
add.i.v
call.i gml_Script_draw_text_outline(argc=4)
popz.v
call.i gml_Script_button3_h(argc=0)
conv.v.b
bf [21]

:[20]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
b [22]

:[21]
push.v self.darkgrey
call.i draw_set_color(argc=1)
popz.v

:[22]
pushi.e 0
conv.i.v
pushi.e 6
conv.i.v
call.i gml_Script_scr_get_input_name(argc=1)
push.v self.yy
push.v self.xx
pushi.e 75
add.i.v
call.i gml_Script_draw_text_outline(argc=4)
popz.v

:[end]